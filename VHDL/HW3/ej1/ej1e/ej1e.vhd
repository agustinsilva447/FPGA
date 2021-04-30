library ieee;
use ieee.std_logic_1164.all;

library work;
use work.ej1e_paquete.all;

entity ej1e is
port
(
	 entradas: in std_logic_vector(0 to 2);
	  salidas: out std_logic_vector(0 to 1)
);
end ej1e;

architecture sumador_completo of ej1e is
begin
	salidas <= std_logic_vector'(suma(entradas));
end sumador_completo;