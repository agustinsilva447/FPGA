library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity fsm_tb is
end entity;

architecture sim of fsm_tb is
    constant M: integer := 8;
    constant K: integer := 7;
    constant N: integer := 4;
    signal a_in: std_logic_vector((N*K-1) downto 0);
    signal a_out: std_logic_vector((N*(K+1)-1) downto 0);
    signal clk: std_logic := '1';
    signal nRst: std_logic := '0';
    signal output_state: std_logic_vector(2 downto 0);
begin     
    fsm: entity work.fsm
    port map (clk=>clk, nRst=>nRst, a_in=>a_in, a_out=>a_out, output_state=>output_state);                

    clock_process: process
    begin
         clk <= '0';
         wait for 10 ns;
         clk <= '1';
         wait for 10 ns;
    end process;
    
    process is
    begin
        nRst <= '1';
        wait for 50 ns;
        a_in <= "0111001001100011000101001000";
        wait for 50 ns;
        nRst <= '0';
        wait until output_state = "111";
        wait;
    end process; 
    
end architecture;