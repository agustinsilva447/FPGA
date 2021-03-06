library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej3c is
port(	a,b: in std_logic_vector(7 downto 0);
		sel: in std_logic;
		  y: out std_logic_vector(7 downto 0)
);
end ej3c;

architecture mult of ej3c is
begin
	y <= a when sel = '0' else
	     b when sel = '1';
end mult;