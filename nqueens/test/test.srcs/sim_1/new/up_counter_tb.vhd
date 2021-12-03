library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity up_counter_tb is
end up_counter_tb;

architecture Behavioral of up_counter_tb is

constant M : integer := 8;
constant N : integer := 4;
signal reset, clk, ce, complete_tick: std_logic;
signal count: std_logic_vector(N-1 downto 0);

begin
    dut: entity work.up_counter 
    generic map (M => M, N => N)
    port map (clk => clk, ce => ce, reset=>reset, complete_tick => complete_tick, count => count);
    
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
        wait for 20 ns;    
        reset <= '0';
        wait;
    end process;
end Behavioral;