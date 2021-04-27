library ieee;
use ieee.std_logic_1164.all;

entity ej1d is
port
(
	 a,b,cin: in std_logic;
	  s,cout: out std_logic
);
end ej1d;

architecture sumador_completo of ej1d is
begin
	with (a, b, cin) select
		(s,cout) <= "00" when "000",
						"01" when "001",
						"01" when "010",
						"10" when "011",
						"01" when "100",
						"10" when "101",
						"10" when "110",
						"11" when "111";
end sumador_completo;