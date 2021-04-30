library ieee;
use ieee.std_logic_1164.all;

entity ej1d is
port
(
	 entradas: in std_logic_vector(0 to 2);
	  salidas: out std_logic_vector(0 to 1)
);
end ej1d;

architecture sumador_completo of ej1d is
begin
	salidas <= std_logic_vector'(suma(entradas));
end sumador_completo;