library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity top_queens_tb is
end entity;

architecture sim of top_queens_tb is

    constant M: integer := 8;
    constant N_1: integer := 10;
    constant N_2: integer := 4;
    
    signal s_clk:      std_logic;   
    signal s_nRst:     std_logic;   
    signal s_count :   std_logic_vector(N_1 - 1 downto 0);    
    signal s_ack_in:   std_logic;
    signal s_next_out: std_logic;            
    signal s_a_in:     std_logic_vector((N_2 - 1) downto 0);
    signal s_a_out:    std_logic_vector((N_2 * M - 1) downto 0);  
    
begin         
    top_queens: entity work.top_queens
    generic map (M => 8, N_1 => 10, N_2 => 4)
    port map (clk => s_clk, nRst => s_nRst, count => s_count, ack_in => s_ack_in, next_out => s_next_out, a_in => s_a_in, a_out => s_a_out);
    
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
            
        wait for 10 ns;        
        s_ack_in <= '1';
        s_a_in <= "0001";
        wait for 10 ns;
        s_ack_in <= '0';
        wait until s_next_out = '1';
        
        wait for 10 ns;        
        s_ack_in <= '1';
        s_a_in <= "0010";
        wait for 10 ns;
        s_ack_in <= '0';
        wait until s_next_out = '1';
        
        wait for 10 ns;        
        s_ack_in <= '1';
        s_a_in <= "0011";
        wait for 10 ns;
        s_ack_in <= '0';
        wait until s_next_out = '1';
        
        wait for 10 ns;
        s_ack_in <= '1';
        s_a_in <= "0100";
        wait for 10 ns;
        s_ack_in <= '0';
        wait until s_next_out = '1';
        
        wait for 10 ns;
        s_ack_in <= '1';
        s_a_in <= "0101";
        wait for 10 ns;
        s_ack_in <= '0';
        wait until s_next_out = '1';
        
        wait for 10 ns;
        s_ack_in <= '1';
        s_a_in <= "0110";
        wait for 10 ns;
        s_ack_in <= '0';
        wait until s_next_out = '1';
        
        wait for 10 ns;
        s_ack_in <= '1';
        s_a_in <= "0111";
        wait for 10 ns;
        s_ack_in <= '0';
        wait until s_next_out = '1';
        
        wait for 10 ns;
        s_ack_in <= '1';
        s_a_in <= "1000";
        wait for 10 ns;
        s_ack_in <= '0';
        wait until s_next_out = '1';
        
        wait for 3 ms;        
        wait;
    end process;     
    
end architecture;