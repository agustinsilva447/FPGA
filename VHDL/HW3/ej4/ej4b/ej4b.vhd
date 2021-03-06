library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej4b is
port (a: in std_logic_vector(2 downto 0);
      y: out std_logic_vector(7 downto 0)
);
end ej4b;

architecture decod of ej4b is
begin
	process(a)
	begin
		case to_integer(unsigned(a)) is
			when 0 => y <= "00000001";
			when 1 => y <= "00000010";
			when 2 => y <= "00000100";
			when 3 => y <= "00001000";
			when 4 => y <= "00010000";
			when 5 => y <= "00100000";
			when 6 => y <= "01000000";
			when 7 => y <= "10000000";
			when others => y <= "ZZZZZZZZ";
		end case;
	end process;
end decod;