library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity fsm_tb is
end entity;

architecture sim of fsm_tb is
    constant ClockPeriod : time := 10 ns;
    constant M: integer := 8;
    constant K: integer := 7;
    constant N: integer := 3;
    signal a_in: std_logic_vector(((K + 1) * (N + 1) - 1) downto 0);
    signal a_out: std_logic_vector((K * (N + 1) - 1) downto 0);
    signal clk: std_logic := '1';
    signal nRst: std_logic := '0';
    signal output_state: std_logic_vector(2 downto 0);
begin     
    fsm: entity work.fsm
    port map (clk=>clk, nRst=>nRst, a_in=>a_in, a_out=>a_out, output_state=>output_state);
                
    clk <= not clk after ClockPeriod / 2;
    process is
    begin
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        nRst <= '1';
        wait;
    end process;
    
    process is
    begin
        reset <= '1';
        wait for 50 ns;
        a <= "00000111001001100011000101001000";
    end process; 
end architecture;