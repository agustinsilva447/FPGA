library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej5a is
port( a: in std_logic_vector(7 downto 0);
		s: out std_logic_vector(2 downto 0)
);
end ej5a;

architecture codpri of ej5a is
begin
	s <=	"111" when a(7) = '1' else
			"110" when a(6) = '1' else
			"101" when a(5) = '1' else
			"100" when a(4) = '1' else
			"011" when a(3) = '1' else
			"010" when a(2) = '1' else
			"001" when a(1) = '1' else
			"000";
end codpri;