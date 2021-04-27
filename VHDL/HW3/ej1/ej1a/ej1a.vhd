library ieee;
use ieee.std_logic_1164.all;

entity ej1a is
port
(
	 a,b,cin: in std_logic;
	  s,cout: out std_logic
);
end ej1a;

architecture sumador_completo of ej1a is
begin
	process(a,b,cin)
	begin
		if (a='0') and (b='0') and (cin='0') then
			s <= '0';
			cout <= '0';
		elsif (a='0') and (b='0') and (cin='1') then
			s <= '1';
			cout <= '0';
		elsif (a='0') and (b='1') and (cin='0') then
			s <= '1';
			cout <= '0';
		elsif (a='0') and (b='1') and (cin='1') then
			s <= '0';
			cout <= '1';
		elsif (a='1') and (b='0') and (cin='0') then
			s <= '1';
			cout <= '0';
		elsif (a='1') and (b='0') and (cin='1') then
			s <= '0';
			cout <= '1';
		elsif (a='1') and (b='1') and (cin='0') then
			s <= '0';
			cout <= '1';
		elsif (a='1') and (b='1') and (cin='1') then
			s <= '1';
			cout <= '1';		
		end if;	
	end process;	
end sumador_completo;