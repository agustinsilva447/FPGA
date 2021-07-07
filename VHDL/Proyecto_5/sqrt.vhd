library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sqrt is
port(	reloj, ninicio: in std_logic;
		a,b: in unsigned(7 downto 0);
		fin: out std_logic;
		salida: out unsigned(7 downto 0)
);
end sqrt;

architecture a of sqrt is
signal elfin: std_logic;
begin
	fin <= elfin;
	process(reloj, ninicio)
	variable x,y,resultado: unsigned(7 downto 0);
	begin
		if ninicio = '0' then
			elfin <= '0';
			y := b;
			x := a;
			resultado := a;
		elsif rising_edge(reloj) then
			if x>y then
				resultado := x - x/8 + y/2;
				if resultado > x then
					salida <= resultado;
				else
					salida <= x;
				end if;
			else
				resultado := y - y/8 + x/2;
				if resultado > y then
					salida <= resultado;
				else
					salida <= y;
				end if;
			end if;
			elfin <= '1';
		end if;
	end process;
end a;