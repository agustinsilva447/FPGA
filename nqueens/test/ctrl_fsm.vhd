library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl_logic_fsm is
    generic (
        K : integer; -- position of the block (starting from zero)
        N : integer  -- N+1 bits required to count upto size of the board
    );    
    port(
        clk, reset : in std_logic;
        a: in std_logic_vector(0 to (K*N-1));
        u: in std_logic_vector(N-1 downto 0);
        valid: out std_logic ;
        done : out std_logic ;    
        output_state: out std_logic_vector(2 downto 0)      -- salida indicando cada estado
    );
end entity;

architecture arch of ctrl_logic_fsm is

type state_type is (st0_reset, st1_aument_j, st2_done, st3_compare, st4_count);
signal state, next_state : state_type;
signal valid_aux: std_logic;
signal done_aux: std_logic;
signal a_j : unsigned(N-1 downto 0);
signal u_k : unsigned(N-1 downto 0);
signal j : unsigned(N-1 downto 0);
signal count : unsigned(N-1 downto 0);
signal output_i : std_logic_vector(2 downto 0);

begin    
    u_k <= unsigned(u);
    valid <= valid_aux;
    done <= done_aux; 
    output_state <= output_i; 
    
    SYNC_PROC: process(clk, reset)
    begin
      if (clk'event and clk = '1') then
         if reset = '1' then
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
      elsif state = st1_aument_j then
         output_i <= "001";
      elsif state = st3_compare then
         output_i <= "010";
      elsif state = st4_count then
         output_i <= "011";
      elsif state = st2_done then
         output_i <= "100";
      else
         output_i <= "000";   
      end if;
    end process;   
    
    NEXT_STATE_DECODE: process (state)
    begin        
        next_state <= state;
        case (state) is
                  
        when st0_reset =>            
            done_aux <= '0';
            valid_aux <= '0';  
            j <= (others => '0');
            count <= (others => '0');
            next_state <= st1_aument_j;
                    
        when st1_aument_j =>      
            a_j <= unsigned(a((N*to_integer(j)) to (N*to_integer(j)+(N-1))));
            next_state <= st3_compare;     
            
        when st3_compare =>
            if ((u_k /= a_j) and (abs(signed(u_k) - signed(a_j)) /= (K - to_integer(j)))) then
                count <= count + 1;    
                next_state <= st4_count; 
            else
                next_state <= st2_done;
            end if;      
            
        when st4_count => 
            j <= to_unsigned(to_integer(j) + 1, N);
            if (count = K) then
                valid_aux <= '1';
                next_state <= st2_done;
            else
                next_state <= st1_aument_j;
            end if;                    
            
        when st2_done =>
            done_aux <= '1';        
            next_state <= st0_reset;    
                
        when others =>
            next_state <= st0_reset;
        end case;
    end process;    
    
end arch;