library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
generic(K: integer  := 7;  -- position of the block (starting from zero)
        M : integer := 8;  -- size of the board MxM
        N: integer  := 4   -- N bits required to count upto size of the board);
    );    
port(
    clk, nRst: in std_logic;   
    u_0: in std_logic_vector(N-1 downto 0);             -- valor inicial del contador
    a_in: in std_logic_vector((N*K-1) downto 0);        -- vector a del bloque anterior
    a_out: out std_logic_vector((N*(K+1)-1) downto 0);  -- vector a del bloque siguiente    
    output_state: out std_logic_vector(2 downto 0)      -- salida indicando cada estado
    );                         
end entity;

architecture rtl of fsm is
type state_type is (st0_reset, st1_new_candidate, st2_validation, st3_writefifo, st4_done);
signal state, next_state : state_type;
signal output_i : std_logic_vector(2 downto 0);
signal u_i, u_o: std_logic_vector(N-1 downto 0);
signal asin: std_logic_vector((N*K-1) downto 0);
signal asout: std_logic_vector((N*(K+1)-1) downto 0);
signal ce, complete_tick, valid, done: std_logic := '0';
signal reset_control: std_logic;

begin
    dut: entity work.up_counter port map (clk => clk, ce => ce, reset=>nRst, u_0=>u_0, complete_tick => complete_tick, count => u_o);
    logic: entity work.ctrl_logic port map (clk => clk, reset => reset_control, a => a_in, u => u_i, valid => valid, done => done);
    
    u_i <= u_o;
    asin <= a_in;
    a_out <= asout;
    output_state <= output_i;    

    SYNC_PROC: process(clk)
    begin
      if (clk'event and clk = '1') then
         if (nRst = '1') then
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
            next_state <= st1_new_candidate;
            
         when st1_new_candidate =>
            reset_control <= '1';
            ce <= '1';            
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
                    next_state <= st3_writefifo;
                elsif (valid = '0') then
                    next_state <= st1_new_candidate;
                end if;
            end if;
            
         when st3_writefifo =>
            asout((N*(K+1)-1) downto N) <=  asin;
            asout(N-1 downto 0) <= u_i;
            next_state <= st1_new_candidate;
            if (complete_tick = '0') then
                next_state <= st1_new_candidate;
            elsif (complete_tick = '1') then
                next_state <= st4_done;
            end if;
            
         when st4_done =>
            ce <= '0';
            
         when others =>
            next_state <= st0_reset;
            
      end case;
    end process;    
end architecture;
