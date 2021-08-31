library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl_logic_tb is
end ctrl_logic_tb;

architecture arch of ctrl_logic_tb is 
component ctrl_logic is
    generic (
        K : integer := 7; -- position of the block
        M : integer := 8; -- size of the board MxM
        N : integer := 3  -- N bits required to count upto M
    );    
    port(
        clk, reset : in std_logic;
        a: in unsigned((N * K) downto 0);
        u: in unsigned(N downto 0);
        valid: out std_logic;
        done : out std_logic 
    );
end component;

constant K : integer := 7;
constant M : integer := 8;
constant N : integer := 3;

signal clk, reset, valid, done: std_logic;
signal a: unsigned((N * K) downto 0);
signal u: unsigned(N downto 0);

begin    
    ctrl_logic port map (clk => clk, reset => reset, a => a, u => u, valid => valid, done => done);
    
    Clk_generator : process
    begin
        wait for 10 ns;
        clk <= not clk;
    end process;
end arch;