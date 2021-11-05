library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
generic(K : integer;  -- position of the block (starting from zero)
        M : integer;  -- size+1 of the board MxM
        N : integer   -- N bits required to count upto size of the board);
    );    
port(
    clk, nRst: in std_logic;   
    a_in: in std_logic_vector((N*K-1) downto 0);        -- vector a del bloque anterior
    ack_in, next_in: in std_logic;
    a_out: out std_logic_vector((N*(K+1)-1) downto 0);  -- vector a del bloque siguiente
    ack_out, next_out: out std_logic;    
    output_state: out std_logic_vector(2 downto 0)      -- salida indicando cada estado
    );                         
end entity;

architecture rtl of fsm is

type state_type is (st0_reset, st1_new_candidate, st2_validation, st3_writefifo, st4_done);
signal state, next_state : state_type;
type array_in is array (K-1 downto 0) of std_logic_vector(N-1 downto 0);
signal asin_array: array_in;
type array_out is array (K downto 0) of std_logic_vector(N-1 downto 0);
signal asout_array: array_out;

signal ctrl_state: std_logic_vector(2 downto 0);
signal output_i : std_logic_vector(2 downto 0);
signal u_i, u_o: std_logic_vector(N-1 downto 0);
signal ce, complete_tick, valid, done: std_logic;
signal reset_control, acks_in, nexts_in, acks_out, nexts_out: std_logic;


begin
    dut: entity work.up_counter 
    generic map (M => M, N => N)
    port map (clk => clk, ce => ce, reset=>ack_in, complete_tick => complete_tick, count => u_o);
    logic: entity work.ctrl_logic_fsm
    generic map (K => K, N => N)
    port map (clk => clk, reset => reset_control, a => a_in, u => u_i, valid => valid, done => done, output_state=>ctrl_state); 
    
    acks_in <= ack_in;
    ack_out <= acks_out;
    nexts_in <= next_in;
    next_out <= nexts_out;
    
    GENERATE_FOR_in: for i in 0 to K-1 generate
        asin_array(i) <= a_in(((i+1)*N-1) downto i*N);
    end generate; 
    GENERATE_FOR_out: for i in 0 to K generate
        a_out(((i+1)*N-1) downto i*N) <= asout_array(i);
    end generate; 
    
    u_i <= u_o;
    output_state <= output_i;    

    SYNC_PROC: process(clk, nRst)
    begin
      if (clk'event and clk = '1') then
         if (ack_in = '1' or nRst = '1') then
            state <= st0_reset;
         else
            state <= next_state;
         end if;
      end if;
    end process;
    
    OUTPUT_DECODE: process(state)
    begin
      if state = st0_reset then
         output_i <= "000";
      elsif state = st1_new_candidate then
         output_i <= "001";
      elsif state = st2_validation then
         output_i <= "010";
      elsif state = st3_writefifo then
         output_i <= "011";
      elsif state = st4_done then
         output_i <= "100";
      else
         output_i <= "000";   
      end if;
    end process;    
    
    NEXT_STATE_DECODE: process (state, a_in, clk)
    begin
      next_state <= state;
      case (state) is
      
         when st0_reset =>            
            ce <= '0';
            acks_out <= '1';
            nexts_out <= '0';
            reset_control <= '1';
            next_state <= st1_new_candidate;
            
         when st1_new_candidate =>
            ce <= '1';            
            acks_out <= '1';
            nexts_out <= '0';
            reset_control <= '1';
            if (complete_tick = '0') then
                next_state <= st2_validation;
            elsif (complete_tick = '1') then
                next_state <= st4_done;
            end if;            
            
         when st2_validation =>
            reset_control <= '0';
            ce <= '0';
            if (done = '1') then
                if (valid = '1') then
                    acks_out <= '0';
                    next_state <= st3_writefifo;
                elsif (valid = '0') then
                    next_state <= st1_new_candidate;
                end if;
            end if;
            
         when st3_writefifo =>
            for ii in 0 to K-1 loop
                asout_array(ii+1) <= asin_array(ii);
            end loop;            
            asout_array(0) <= u_i;
                    
            if (nexts_in = '1') then
                if (complete_tick = '0') then
                    next_state <= st1_new_candidate;
                elsif (complete_tick = '1') then
                    next_state <= st4_done;
                end if;
            end if;        
                
         when st4_done =>
            ce <= '0';
            acks_out <= '1';
            nexts_out <= '1';
            
         when others =>
            next_state <= st0_reset;
            
      end case;
    end process;    
end architecture;
