library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej5c is
port( a: in std_logic_vector(7 downto 0);
		s: out std_logic_vector(2 downto 0)
);
end ej5c;

architecture codpri of ej5c is
begin
	process(a)
	variable v: std_logic_vector(s'range);
	begin
		for i in 0 to 7 loop
			if a(i) = '1' then
				v := std_logic_vector(to_unsigned(i, v'length));
			end if;
		end loop;
		s <= v;
	end process;
end codpri;