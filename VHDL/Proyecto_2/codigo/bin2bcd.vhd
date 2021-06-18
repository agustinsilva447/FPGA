library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.bcd27seg.all;

entity bin2bcd is
port(	clock, n_begin: in std_logic;
		data_bin: in std_logic_vector(7 downto 0);
		done: out std_logic;
		bcd_out: out std_logic_vector(11 downto 0);		
		salida7u, salida7d, salida7c: out std_logic_vector(6 downto 0)
);
end bin2bcd;

architecture a of bin2bcd is
signal fin: std_logic;
signal bcd: std_logic_vector(11 downto 0);
signal unidades: std_logic_vector(3 downto 0);
signal decenas: std_logic_vector(3 downto 0);
signal centenas: std_logic_vector(3 downto 0);

begin
	bcd_out <= bcd;
	done <= fin;
	process(clock, n_begin)
	variable datobin: std_logic_vector(7 downto 0);
	variable datobcd: std_logic_vector(11 downto 0);
	variable i: integer range 0 to 7;
	begin
		if n_begin = '0' then
			i := 0;
			datobin := data_bin;
			datobcd := (others => '0');
			fin <= '0';
		elsif rising_edge(clock) then
			if fin = '0' then
				datobcd(11 downto 1) := datobcd(10 downto 0);
				datobcd(0) := datobin(7);
				datobin(7 downto 1) := datobin(6 downto 0);
				datobin(0) := '0';
				if i<7 then
					if unsigned(datobcd(3 downto 0)) >= 5 then
						datobcd(3 downto 0) := std_logic_vector(unsigned(datobcd(3 downto 0)) + 3);
					end if;
					if unsigned(datobcd(7 downto 4)) >= 5 then
						datobcd(7 downto 4) := std_logic_vector(unsigned(datobcd(7 downto 4)) + 3);
					end if;
					if unsigned(datobcd(11 downto 8)) >= 5 then
						datobcd(11 downto 8) := std_logic_vector(unsigned(datobcd(11 downto 8)) + 3);
					end if;
					i := i+1;
				else 
					fin <= '1';
					bcd <= datobcd;
				end if;
			end if;
		end if;
	end process;
	
	unidades <= bcd(3 downto 0);
	decenas  <= bcd(7 downto 4);
	centenas <= bcd(11 downto 8);
	
	
	process(unidades, decenas, centenas)
	begin
		if centenas = "0000" then
			salida7d <= bcd27seg2("1111");
		else
			salida7c <= bcd27seg2(centenas);
		end if;
		
		if centenas = "0000" and decenas = "0000" then
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