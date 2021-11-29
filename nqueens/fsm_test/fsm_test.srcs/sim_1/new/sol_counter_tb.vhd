library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sol_counter_tb is
end sol_counter_tb;

architecture Behavioral of sol_counter_tb is

constant N : integer := 8;
signal reset, clk, ce: std_logic;
signal count: std_logic_vector(N-1 downto 0);

begin
    dut: entity work.sol_counter 
    generic map (N => N)
    port map (clk => clk, ce => ce, reset=>reset, count => count);
    
    clock_process :process
    begin
         clk <= '0';
         wait for 10 ns;
         clk <= '1';
         wait for 10 ns;
    end process;
    
    ce_process :process
    begin
         ce <= '0';
         wait for 100 ns;
         ce <= '1';
         wait for 100 ns;
    end process;
    
    stim_proc: process
    begin        
        reset <= '1';
        wait for 1000 ns;    
        reset <= '0';
        wait for 1000 ns;  
        wait;
    end process;
end Behavioral;
