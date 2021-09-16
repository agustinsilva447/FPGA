library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl_logic_tb is
end ctrl_logic_tb;

architecture arch of ctrl_logic_tb is 

constant K : integer := 7;
constant N : integer := 4;

signal clk, reset, valid, done: std_logic;
signal a: std_logic_vector((K*N-1) downto 0);
signal u: std_logic_vector(N-1 downto 0);

begin    
    logic: entity work.ctrl_logic port map (clk => clk, reset => reset, a => a, u => u, valid => valid, done => done);
    clock_process: process
    begin
         clk <= '0';
         wait for 10 ns;
         clk <= '1';
         wait for 10 ns;
    end process;
    
    inputs: process
    begin
        reset <= '1';
        wait for 50 ns;
        -- a <= "100110001011101"; -- [5. 3. 1. 6. 4. (2.)]
        -- u <= "001"; -- (u = 1) no valid
        -- u <= "010"; -- (u = 2) valid
        
        a <= "0111001001100011000101001000"; -- [8. 4. 1. 3. 6. 2. 7. (5.)]
        u <= "0100"; -- no valid
        -- u <= "0101"; -- valid
        wait for 50 ns;
        reset <= '0';
        wait until done = '1';
        wait;
    end process;    
end arch;