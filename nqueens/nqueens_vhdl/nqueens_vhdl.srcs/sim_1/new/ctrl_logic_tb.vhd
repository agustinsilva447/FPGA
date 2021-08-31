library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl_logic_tb is
end ctrl_logic_tb;

architecture arch of ctrl_logic_tb is 
component ctrl_logic
    generic (
        K : integer := 5; -- position of the block
        N : integer := 2  -- N bits required to count upto M
    );    
    port(
        clk, reset : in std_logic;
        a: in unsigned(((N + 1) * (K + 1) - 1) downto 0);
        u: in unsigned(N downto 0);
        valid: out std_logic;
        done : out std_logic 
    );
end component;

constant K : integer := 5;
constant N : integer := 2;

signal clk, reset, valid, done: std_logic;
signal a: unsigned(((N + 1) * (K + 1) - 1) downto 0);
signal u: unsigned(N downto 0);
signal aux: std_logic;

begin    
    logic: ctrl_logic port map (clk => clk, reset => reset, a => a, u => u, valid => valid, done => done);
    
    clock_process: process
    begin
         clk <= '0';
         wait for 10 ns;
         clk <= '1';
         wait for 10 ns;
    end process;
    
    imputs: process
    begin
        reset <= '1';
        wait for 50 ns;
        a <= "010100110001011000"; -- [2. 4. 6. 1. 3. 0]
        u <= "011"; -- (u = 4) no valid
        -- u <= "101" -- (u = 5) valid
        wait for 50 ns;
        reset <= '0';
        wait until done = '1';
        aux <= valid;
    end process;    
end arch;