library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity final_tb is
end final_tb;

architecture Behavioral of final_tb is
constant M : integer := 8; -- size of the board MxM
constant K : integer := 7; -- position of the block (starting from zero)
constant N : integer := 3; -- N+1 bits required to count upto size of the board

signal clk, reset, valid, done: std_logic;
signal a: std_logic_vector(((K + 1) * (N + 1) - 1) downto 0);
signal u: std_logic_vector(N downto 0);

signal reset_c, clk_c, complete_tick: std_logic;
signal u_0, count: std_logic_vector(N downto 0);

begin
    dut: entity work.up_counter port map (clk => clk_c, reset=>reset_c, u_0=>u_0, complete_tick => complete_tick, count => count);
    logic: entity work.ctrl_logic port map (clk => clk, reset => reset, a => a, u => u, valid => valid, done => done);
    
    clock_process :process
    begin
         clk <= '0';
         wait for 10 ns;
         clk <= '1';
         wait for 10 ns;
    end process;
end Behavioral;