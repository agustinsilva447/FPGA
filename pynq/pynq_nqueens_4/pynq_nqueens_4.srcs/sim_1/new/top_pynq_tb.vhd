library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity top_pynq_tb is
end entity;

architecture Behavioral of top_pynq_tb is

    constant M: integer := 8;
    constant N_1: integer := 10;
    constant N_2: integer := 4;    
    
    signal s_clk:      std_logic;   
    signal s_nRst:     std_logic;   
    signal s_count :   std_logic_vector(N_1 - 1 downto 0);     
    signal s_done:     std_logic;    

begin

    top_pynq: entity work.top_pynq
    generic map (M => 8, N_1 => 10, N_2 => 4)
    port map (clk => s_clk, nRst => s_nRst, count => s_count, done => s_done);

    clock_process: process
    begin
         s_clk <= '0';
         wait for 5 ns;
         s_clk <= '1';
         wait for 5 ns;
    end process;
    
    process is
    begin
    
        s_nRst <= '1';
        wait for 10 ns;    
        s_nRst <= '0';  
        wait until s_done = '1';
        wait;    
        
    end process;   

end Behavioral;
