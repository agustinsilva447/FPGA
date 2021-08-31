library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity up_counter_tb is
end up_counter_tb;

architecture Behavioral of up_counter_tb is

component up_counter 
    generic (
            M : integer := 8; 
            N : integer := 3  
    );
    
    port(
            clk, reset : in std_logic;
            complete_tick : out std_logic;
            count : out std_logic_vector(N-1 downto 0)
    );
end component;

CONSTANT M : integer := 8;
CONSTANT N : integer := 3;

signal reset,clk, complete_tick: std_logic;
signal count: std_logic_vector(N-1 downto 0);

begin
    dut: up_counter port map (clk => clk, reset=>reset, complete_tick => complete_tick, count => count);
    
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
        wait for 20 ns;    
        reset <= '0';
        wait;
    end process;
end Behavioral;