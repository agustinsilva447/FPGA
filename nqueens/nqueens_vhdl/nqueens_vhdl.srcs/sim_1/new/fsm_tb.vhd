library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity fsm_tb is
end entity;

architecture sim of fsm_tb is
    constant ClockPeriod : time := 10 ns;
    constant K : integer := 7;
    constant N : integer := 3;
    signal a_in: std_logic_vector(((K + 1) * (N + 1) - 1) downto 0);
    signal a_out: std_logic_vector((K * (N + 1) - 1) downto 0);
    signal clk : std_logic := '1';
    signal nRst : std_logic := '0';
begin    
 
    fsm : entity work.fsm
    port map (clk=>clk, nRst=>nRst, a_in=>a_in, a_out=>a_out);
        
    clk <= not clk after ClockPeriod / 2;
    process is
    begin
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        nRst <= '1';
        wait;
    end process; 
end architecture;