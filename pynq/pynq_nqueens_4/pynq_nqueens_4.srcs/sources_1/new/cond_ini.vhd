library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cond_ini is
generic(M : integer;  -- size+1 of the board MxM
        N : integer   -- N bits required to count upto size of the board);
    );   
port(
    clk, nRst: in std_logic;   
    next_out: in std_logic;
    ack_in: out std_logic;
    a: out std_logic_vector((N-1) downto 0);
    done: out std_logic;
    output_state: out std_logic_vector(1 downto 0)         
    );                         
end entity;

architecture Behavioral of cond_ini is

type state_type is (st0_reset, st1_new_number, st2_process, st3_done);
signal state, next_state : state_type;

signal s_output : std_logic_vector(1 downto 0);
signal s_a: std_logic_vector((N-1) downto 0);
signal s_next, s_ack, s_done: std_logic;

begin

    s_next <= next_out;
    output_state <= s_output;
    a <= s_a;
    ack_in <= s_ack;
    done <= s_done;

    SYNC_PROC: process(clk, nRst)
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
         s_output <= "00";
      elsif state = st1_new_number then
         s_output <= "01";
      elsif state = st2_process then
         s_output <= "10";
      elsif state = st3_done then
         s_output <= "11";
      else
         s_output <= "00";   
      end if;
    end process;       
    
    NEXT_STATE_DECODE: process (state, next_out)
    begin
    
      case (state) is 
      
         when st0_reset =>            
            s_a <= (others => '0');
            s_ack <= '1';
            s_done <= '0';
            next_state <= st1_new_number;     
      
         when st1_new_number =>    
            s_a <= std_logic_vector(unsigned(s_a) + 1);
            s_ack <= '1';
            s_done <= '0';
            next_state <= st2_process;
      
         when st2_process =>     
            s_a <= s_a;        
            s_ack <= '0';
            s_done <= '0';
            
            if (next_out = '1') then
                if (unsigned(s_a) >= M) then
                    next_state <= st3_done;
                else
                    next_state <= st1_new_number;
                end if;
            else
                next_state <= st2_process;
            end if;    
            
         when st3_done =>            
            s_a <= s_a;
            s_ack <= '1';
            s_done <= '1';
            next_state <= st3_done;     
            
      end case;
    end process;      

end Behavioral;
