library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej3a is
port(	a,b: in std_logic_vector(7 downto 0);
		sel: in std_logic;
		  y: out std_logic_vector(7 downto 0)
);
end ej3a;

architecture mult of ej3a is
begin
	process(sel)
	begin
		if sel = '0' then
			y <= a;
		else
			y <= b;
		end if;
	end process;
end mult;