library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library std;
use std.textio.all;

entity defaults_tb is
end entity defaults_tb;

architecture Simul of defaults_tb is
    signal slv : std_logic_vector(7 downto 0);
    signal uns : unsigned(7 downto 0);
    signal sig : signed(7 downto 0);
    signal int : integer;
    signal nat : natural;
    signal pos : positive;
begin

    testing:  process
    begin
        wait for 1 ns;
        wait;
    end process testing;

end architecture Simul;
