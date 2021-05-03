library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej6c is
generic( n: integer := 4
);
port( clk, areset, ce, l: in std_logic;
						 carga: in std_logic_vector(n-1 downto 0);
						salida: out std_logic_vector(n-1 downto 0)
);
end ej6c;

architecture contador of ej6c is
begin
	process(clk, areset)
	variable cuenta: unsigned(n-1 downto 0);
	begin
		if areset='1' then
			cuenta := (others => '0');
		elsif falling_edge(clk) then
			if l='1' then
				cuenta := unsigned(carga);
			elsif ce='1' then
				cuenta := cuenta + 1;
			end if;
		end if;
		salida <= std_logic_vector(cuenta);
	end process;
end contador;