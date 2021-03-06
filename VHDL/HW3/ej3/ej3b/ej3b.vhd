library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej3b is
port(	a,b: in std_logic_vector(7 downto 0);
		sel: in std_logic;
		  y: out std_logic_vector(7 downto 0)
);
end ej3b;

architecture mult of ej3b is
begin
	process(sel)
	begin
		case sel is
			when '0' => 
				y <= b;
			when '1' =>
				y <= a;
			when others =>
				null;
			end case;
	end process;
end mult;