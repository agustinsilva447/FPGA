library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej2 is
	port(entradas: in std_logic_vector(11 downto 0);
			salidas: out std_logic_vector(6 downto 0)
	);
end ej2;

architecture tabla of ej2 is
begin
	process(entradas)
	begin
		if std_match(entradas, "0110110-----") then salidas <= "1000100";
		elsif std_match(entradas, "1110110-----") then salidas <= "1001000";
		elsif std_match(entradas, "----010-----") then salidas <= "0000001";
		elsif std_match(entradas, "1100110-----") then salidas <= "0100000";
		elsif std_match(entradas, "0100110-----") then salidas <= "0010000";
		elsif std_match(entradas, "-1---10--111") then salidas <= "0000001";
		elsif std_match(entradas, "1----10--111") then salidas <= "0000001";
		elsif std_match(entradas, "-----100111-") then salidas <= "0000010";
		elsif std_match(entradas, "--1--10--111") then salidas <= "0000001";
		elsif std_match(entradas, "---1-10--111") then salidas <= "0000001";
		else salidas <= "ZZZZZZZ";
		end if;
	end process;
end tabla;