library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcd is
port(	reloj, ninicio: in std_logic;
		bin: in std_logic_vector(7 downto 0);
		fin: out std_logic;
		bcd: out std_logic_vector(11 downto 0)
);
end bin2bcd;

architecture a of bin2bcd is
signal elfin: std_logic;
begin
	fin <= elfin;
	process(reloj, ninicio)
	variable datobin: std_logic_vector(7 downto 0);
	variable datobcd: std_logic_vector(11 downto 0);
	variable i: integer range 0 to 7;
	begin
		if ninicio = '0' then
			i := 0;
			datobin := bin;
			datobcd := (others => '0');
			elfin <= '0';
		elsif rising_edge(reloj) then
			if elfin = '0' then
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
					elfin <= '1';
					bcd <= datobcd;
				end if;
			end if;
		end if;
	end process;
end a;