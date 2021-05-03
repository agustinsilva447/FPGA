library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej6a is
port( clk, areset: in std_logic;
			  salida: out std_logic_vector(3 downto 0)
);
end ej6a;

architecture contador of ej6a is
begin
	process(clk, areset)
	variable cuenta: unsigned(3 downto 0);
	begin
		if areset='1' then
			cuenta := (others => '0');
		elsif falling_edge(clk) then
			cuenta := cuenta + 1;
		end if;
		salida <= std_logic_vector(cuenta);
	end process;
end contador;