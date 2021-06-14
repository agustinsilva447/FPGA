library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd2bin is
port (	reloj, ninicio: in std_logic;
			bcd: in std_logic_vector(11 downto 0);
			fin: out std_logic;
			bin: out std_logic_vector(7 downto 0)
);
end bcd2bin;

architecture a of bcd2bin is
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
			datobin := (others => '0');
			datobcd := bcd;
			elfin <= '0';
		elsif rising_edge(reloj) then 
			if elfin = '0' then
				datobin(6 downto 0) := datobin(7 downto 1);
				datobin(7) := datobcd(0);
				datobcd(10 downto 0) := datobcd(11 downto 1);
				datobcd(11) := '0';
				if i<7 then
					if unsigned(datobcd(3 downto 0)) >= 5 then
						datobcd(3 downto 0) := std_logic_vector(unsigned(datobcd(3 downto 0)) - 3);
					end if;
					if unsigned(datobcd(7 downto 4)) >= 5 then
						datobcd(7 downto 4) := std_logic_vector(unsigned(datobcd(7 downto 4)) - 3);
					end if;
					if unsigned(datobcd(11 downto 8)) >= 5 then
						datobcd(11 downto 8) := std_logic_vector(unsigned(datobcd(11 downto 8)) - 3);
					end if;
					i := i + 1;
				else
					elfin <= '1';
					bin <= datobin;
				end if;
			end if;
		end if;
	end process;
end a;