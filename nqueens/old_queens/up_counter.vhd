library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity up_counter is
    generic (
        M : integer; -- size of the board MxM
        N : integer  -- N bits required to count upto M-1
    );    
    port(
            clk, ce, reset : in std_logic;            
            complete_tick : out std_logic;
            count : out std_logic_vector(N-1 downto 0)
    );
end up_counter;

architecture arch of up_counter is
signal count_reg, count_next : unsigned(N-1 downto 0);
begin
    process(clk, reset)
    begin        
        if reset = '1' then 
            count_reg <= (others => '0');
        elsif (clk'event and clk='1') and (ce='1') then
            count_reg <= count_next;
        else  
            count_reg <= count_reg;
        end if;        
    end process;
    
    count_next <= (others => '0') when count_reg=(M) else (count_reg + 1);   
    complete_tick <= '1' when count_reg = (M) else '0'; 
    count <= std_logic_vector(count_reg); 
    
end arch;