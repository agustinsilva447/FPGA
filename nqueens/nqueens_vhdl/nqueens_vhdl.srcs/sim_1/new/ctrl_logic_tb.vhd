library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl_logic_tb is
end ctrl_logic_tb;

architecture arch of ctrl_logic_tb is 
component ctrl_logic
    generic (
        K : integer := 7; -- position of the block (starting from zero)
        N : integer := 3  -- N+1 bits required to count upto size of the board
    );    
    port(
        clk, reset : in std_logic;
        a: in std_logic_vector(((K + 1) * (N + 1) - 1) downto 0);
        u: in std_logic_vector(N downto 0);
        valid: out std_logic;
        done : out std_logic 
    );
end component;

constant K : integer := 7;
constant N : integer := 3;

signal clk, reset, valid, done: std_logic;
signal a: std_logic_vector(((K + 1) * (N + 1) - 1) downto 0);
signal u: std_logic_vector(N downto 0);

begin    
    logic: ctrl_logic port map (clk => clk, reset => reset, a => a, u => u, valid => valid, done => done);
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
        -- a <= "000100110001011101"; -- [5. 3. 1. 6. 4. 2.]
        -- u <= "001"; -- (u = 1) no valid
        -- u <= "010"; -- (u = 2) valid
        
        a <= "00000111001001100011000101001000"; -- [8. 4. 1. 3. 6. 2. 7. 5.]
        -- u <= "0100"; -- no valid
        u <= "0101"; -- valid
        wait for 50 ns;
        reset <= '0';
        wait until done = '1';
        wait;
    end process;    
end arch;