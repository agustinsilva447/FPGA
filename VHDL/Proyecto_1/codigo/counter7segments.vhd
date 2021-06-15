library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.bcd27seg.all;

entity counter7segments is
port(
			reloj, borrar: in std_logic;
			salida7u, salida7d: out std_logic_vector(6 downto 0);
			salunidades, saldecenas: out std_logic_vector(3 downto 0);
			sal: out std_logic
);
end counter7segments;

architecture a of counter7segments is

signal unhertz: std_logic;
signal unidades: std_logic_vector(3 downto 0);
signal decenas: std_logic_vector(3 downto 0);

begin
	process(reloj, borrar)
	variable cuentaunhertz: integer range 0 to 67108863 := 0;
	begin
		if not borrar = '1' then
			cuentaunhertz := 0;
			unhertz <= '0';
		elsif rising_edge(reloj) then
			if cuentaunhertz = 9 then
				unhertz <= '1';
				cuentaunhertz := 0;
			else 
				cuentaunhertz := cuentaunhertz + 1;
				unhertz <= '0';
			end if;
		end if;
	end process;
	
	process(reloj, borrar)
	variable cuentau: integer range 0 to 9 := 0;
	begin
		if not borrar = '1' then
			cuentau := 0;
			unidades <= "0000";
		elsif rising_edge(reloj) then
			if unhertz = '1' then
				if cuentau = 9 then
					cuentau := 0;
				else 
					cuentau := cuentau + 1;
				end if;
			end if;
		end if;
		unidades <= std_logic_vector(to_unsigned(cuentau, 4));
	end process;
	
	process(reloj, borrar)
	variable cuentad: integer range 0 to 9 := 0;
	begin
		if not borrar = '1' then
			cuentad := 0;
			decenas <= "0000";	
		elsif rising_edge(reloj) then
			if unhertz = '1' and unidades = "1001" then 
				if cuentad = 9 then
					cuentad := 0;
				else
					cuentad := cuentad + 1;
				end if;
			end if;
		end if;
		decenas <= std_logic_vector(to_unsigned(cuentad, 4));
	end process;
	
	sal <= unhertz;
	salunidades <= unidades;
	saldecenas <= decenas; 
	
	process(unidades, decenas)
	begin
		if decenas = "0000" then
			salida7d <= bcd27seg2("1111");
		else 
			salida7d <= bcd27seg2(decenas);
		end if;
		salida7u <= bcd27seg2(unidades);
	end process;
end a;
	
library ieee;
use ieee.std_logic_1164.all;

package bcd27seg is
	function bcd27seg2(bcdin: std_logic_vector(3 downto 0)) return std_logic_vector;
end bcd27seg;	

package body bcd27seg is
	function bcd27seg2(bcdin: std_logic_vector(3 downto 0)) return std_logic_vector is
		variable sietesal: std_logic_vector(6 downto 0);
		
		begin
			if bcdin = "0000" then
				sietesal := "1000000";
			elsif bcdin = "0001" then
				sietesal := "1111001";
			elsif bcdin = "0010" then
				sietesal := "0100100";
			elsif bcdin = "0011" then
				sietesal := "0110000";
			elsif bcdin = "0100" then
				sietesal := "0011001";
			elsif bcdin = "0101" then
				sietesal := "0010010";
			elsif bcdin = "0110" then
				sietesal := "0000010";
			elsif bcdin = "0111" then
				sietesal := "1111000";
			elsif bcdin = "1000" then
				sietesal := "0000000";
			elsif bcdin = "1001" then
				sietesal := "0011000";
			else
				sietesal := "1111111";
			end if;
		return(sietesal);
	end bcd27seg2;
end bcd27seg;