library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej5b is
port( a: in std_logic_vector(7 downto 0);
		s: out std_logic_vector(2 downto 0)
);
end ej5b;

architecture codpri of ej5b is
begin
	process(a)
	begin
		if a(7) = '1' then
			s <= "111";
		elsif a(6) = '1' then
			s <= "110";
		elsif a(5) = '1' then
			s <= "101";
		elsif a(4) = '1' then
			s <= "100";
		elsif a(3) = '1' then
			s <= "011";
		elsif a(2) = '1' then
			s <= "010";
		elsif a(1) = '1' then
			s <= "001";
		else
			s <= "000";
		end if;
	end process;
end codpri;