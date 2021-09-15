library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
generic(K: integer := 7; -- position of the block (starting from zero)
        N: integer := 3  -- N+1 bits required to count upto size of the board);
    );    
port(
    clk: in std_logic;
    nRst: in std_logic;                                            -- Negative reset
    a_in: in std_logic_vector(((K + 1) * (N + 1) - 1) downto 0);   -- vector a del bloque anterior
    a_out: out std_logic_vector((K * (N + 1) - 1) downto 0);       -- vector a del bloque siguiente    
    output_state: out std_logic_vector(1 downto 0)                 -- salida indicando cada estado
    );                         
end entity;

architecture rtl of fsm is
type state_type is (st1_new_candidate, st2_validation, st3_writefifo);
signal state, next_state : state_type;
signal output_i : std_logic_vector(1 downto 0);
signal u, u_0: std_logic_vector(N downto 0);
signal asin: std_logic_vector(((K + 1) * (N + 1) - 1) downto 0);
signal asout: std_logic_vector((K * (N + 1) - 1) downto 0);
signal ce, complete_tick, valid, done: std_logic := '0';

begin
    dut: entity work.up_counter port map (clk => clk, ce => ce, reset=>nRst, u_0=>u_0, complete_tick => complete_tick, count => u);
    logic: entity work.ctrl_logic port map (clk => clk, reset => nRst, a => a_in, u => u, valid => valid, done => done);

    SYNC_PROC: process(clk)
    begin
      if (clk'event and clk = '1') then
         if (nRst = '1') then
            state <= st1_new_candidate;
            output_state <= "00";
         else
            asin <= a_in;
            a_out <= asout;
            output_state <= output_i;
            state <= next_state;
         end if;
      end if;
    end process;
    
    OUTPUT_DECODE: process(state)
    begin
      if state = st1_new_candidate then
         output_i <= "01";
      elsif state = st2_validation then
         output_i <= "10";
      elsif state = st3_writefifo then
         output_i <= "11";
      else
         output_i <= "00";   
      end if;
    end process;    
    
    NEXT_STATE_DECODE: process (state, a_in)
    begin
      next_state <= state;
      case (state) is
         when st1_new_candidate =>
            if () then
               next_state <= st2_validation;
            end if;
         when st2_validation =>
            if () then
               next_state <= st3_writefifo;
            end if;
         when st3_writefifo =>
            next_state <= st1_new_candidate;
         when others =>
            next_state <= st1_new_candidate;
      end case;
    end process;    
        
        end architecture;
