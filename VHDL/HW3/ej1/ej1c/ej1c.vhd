library ieee;
use ieee.std_logic_1164.all;

entity ej1c is
port
(
	 a,b,cin: in std_logic;
	  s,cout: out std_logic
);
end ej1c;

architecture sumador_completo of ej1c is
begin
	(cout, s) <=   std_logic_vector'( "00" ) when (a='0') and (b='0') and (cin='0') else
						std_logic_vector'( "01" ) when (a='0') and (b='0') and (cin='1') else
						std_logic_vector'( "01" ) when (a='0') and (b='1') and (cin='0') else
						std_logic_vector'( "10" ) when (a='0') and (b='1') and (cin='1') else
						std_logic_vector'( "01" ) when (a='1') and (b='0') and (cin='0') else
						std_logic_vector'( "10" ) when (a='1') and (b='0') and (cin='1') else
						std_logic_vector'( "10" ) when (a='1') and (b='1') and (cin='0') else
						std_logic_vector'( "11" ) when (a='1') and (b='1') and (cin='1');
end sumador_completo;