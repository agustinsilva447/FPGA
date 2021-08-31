library ieee; 
use ieee.std_logic_1164.all;

entity fsm_tb is
end fsm_tb; 

architecture arch of fsm_tb is 
constant T : time := 20 ps;
signal clk, reset : std_logic;
signal x : std_logic;
signal z_moore_glitch : std_logic;
begin 
    fsm_unit : entity work.fsm
               port map (clk=>clk, reset=>reset, x=>x,
               z_moore_glitch=>z_moore_glitch
            );
                
    process
    begin
        clk <= '0';
        wait for T/2;
        clk <= '1';
        wait for T/2;
    end process;
    
    reset <= '1', '0' after T/2;    
    x <= '0', '1' after T, '1' after 2*T, '0' after 3*T;   
end; 