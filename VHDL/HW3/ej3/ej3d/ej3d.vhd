library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej3d is
port(	a,b: in std_logic_vector(7 downto 0);
		sel: in std_logic;
		  y: out std_logic_vector(7 downto 0)
);
end ej3d;

architecture mult of ej3d is
begin
	with sel select y <= a when '0',
								b when '1';
end mult;