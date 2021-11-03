library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity top_nqueens_tb is
end entity;

architecture sim of top_nqueens_tb is    
    constant M: integer := 10;  -- size of the board MxM
    constant N: integer := 5;  -- N bits required to count upto size of the board;
    constant P: integer := 10; -- N bits required for the counter;
    signal counter: unsigned(P downto 0) := (others => '0');
    signal flag: std_logic := '0';   
    signal done: std_logic := '0';   
    signal nRst, clk: std_logic;     
begin
    top: entity work.top_nqueens
    generic map (M => M, N => N, P =>P)
    port map (clk=>clk, nRst=>nRst, flag=>flag, done=>done, counter=>counter);
            
    clock_process: process
    begin
         clk <= '0';
         wait for 5 ns;
         clk <= '1';
         wait for 5 ns;
    end process;
    
    counter_process: process is
    begin
        nRst <= '1';
        wait for 5 ns;
        nRst <= '0';  
        wait until done = '1';  
    end process;
end architecture;