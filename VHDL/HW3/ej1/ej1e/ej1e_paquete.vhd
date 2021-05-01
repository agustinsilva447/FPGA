library ieee;
use ieee.std_logic_1164.all;

package ej1e_paquete is
    function Suma (entradas: std_logic_vector(0 to 2)) return std_logic_vector;
end package ej1e_paquete;

package body ej1e_paquete is 
    function Suma(entradas: std_logic_vector(0 to 2)) return std_logic_vector is
    variable salidas: std_logic_vector(0 to 1);

    begin
        if entradas = "000" then
            salidas := "00";
        elsif entradas = "001" then
            salidas := "01";
        elsif entradas = "010" then
            salidas := "01";
        elsif entradas = "011" then
            salidas := "10";
        elsif entradas = "100" then
            salidas := "01";
        elsif entradas = "101" then
            salidas := "10";
        elsif entradas = "110" then
            salidas := "10";
        elsif entradas = "111" then
            salidas := "11";               
        else
            salidas := "00";            
        end if;
        return salidas;
    end Suma;
end package body ej1e_paquete;