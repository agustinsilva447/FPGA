library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity slice_reg_tb is
end slice_reg_tb;

architecture arch of slice_reg_tb is 

constant K : integer := 7;
constant N : integer := 4;

signal clk, reset: std_logic;
signal a: std_logic_vector(0 to (K*N-1));
signal idx: std_logic_vector(N-1 downto 0);
signal u,ux: std_logic_vector(0 to N-1);

begin    
    slice: entity work.slice_reg
    generic map (K => K, N => N)
    port map (clk => clk, reset => reset, a => a, idx=> idx, u => u, ux => ux);        
    
    clock_process: process
    begin
         clk <= '0';
         wait for 5 ns;
         clk <= '1';
         wait for 5 ns;
    end process;
    
    a <= "0111001001100011000101001000"; -- [8. 4. 1. 3. 6. 2. 7.]
    
    inputs: process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait;
    end process;          
    
end arch;