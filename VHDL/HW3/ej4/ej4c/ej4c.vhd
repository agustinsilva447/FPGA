library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej4c is
port (a: in std_logic_vector(2 downto 0);
      y: out std_logic_vector(7 downto 0)
);
end ej4c;

architecture decod of ej4c is
begin
	process(a)
	variable v: std_logic_vector(y'range);
	begin
		for i in y'range loop
			if i = to_integer(unsigned(a)) then
				v(i):= '1';
			else
				v(i):= '0';
			end if;
		end loop;
		y <= v;
	end process;
end decod;