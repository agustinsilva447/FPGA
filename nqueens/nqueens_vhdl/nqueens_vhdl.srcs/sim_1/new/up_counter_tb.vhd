library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity up_counter_tb is
end up_counter_tb;

architecture Behavioral of up_counter_tb is

constant M : integer := 8;
constant N : integer := 3;
signal reset,clk, complete_tick: std_logic;
signal u_0, count: std_logic_vector(N downto 0);

begin
    dut: entity work.up_counter port map (clk => clk, reset=>reset, u_0=>u_0, complete_tick => complete_tick, count => count);
    
    clock_process :process
    begin
         clk <= '0';
         wait for 10 ns;
         clk <= '1';
         wait for 10 ns;
    end process;
    
    stim_proc: process
    begin        
        reset <= '1';
        u_0 <= "0011";
        wait for 20 ns;    
        reset <= '0';
        wait;
    end process;
end Behavioral;