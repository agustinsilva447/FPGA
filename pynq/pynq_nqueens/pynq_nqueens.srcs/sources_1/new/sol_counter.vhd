library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sol_counter is
    generic (
        N : integer  -- N bits required to count upto M-1
    );    
    port(
            clk, reset : in std_logic;   
            next_sol: out std_logic;
            count : out std_logic_vector(N-1 downto 0)
    );
end sol_counter;

architecture arch of sol_counter is
signal count_reg, count_next : unsigned(N-1 downto 0);
begin
    process(clk, reset)
    begin        
        if reset = '1' then 
            count_reg <= (others => '0');
        elsif clk = '0' then
            count_reg <= count_next;
            next_sol <= '1';
        else  
            count_reg <= count_reg;
        end if;        
    end process;
    
    count_next <= (count_reg + 1);   
    count <= std_logic_vector(count_reg); 
    
end arch;