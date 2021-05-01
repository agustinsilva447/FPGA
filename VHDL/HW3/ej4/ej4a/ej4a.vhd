library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej4a is
port (a: in std_logic_vector(2 downto 0);
      y: out std_logic_vector(7 downto 0)
);
end ej4a;

architecture decod of ej4a is
begin
	with to_integer(unsigned(a)) select
	y <= "00000001" when 0,
		  "00000010" when 1,
		  "00000100" when 2,
		  "00001000" when 3,
		  "00010000" when 4,
		  "00100000" when 5,
		  "01000000" when 6,
		  "10000000" when 7,		  
		  "ZZZZZZZZ" when others;
end decod;