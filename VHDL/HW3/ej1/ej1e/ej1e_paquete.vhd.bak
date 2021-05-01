library ieee;
use ieee.std_logic_1164.all;

package ej1e_paquete is
    function Suma (a,b,cin: std_logic) return std_logic_vector;
end package ej1e_paquete;

package body ej1e_paquete is 
    function Suma(a,b,cin: std_logic) return std_logic_vector is
    variable s: std_logic;
    variable cout: std_logic;

    begin
        if std_logic_vector'(a,b,cin) = "000" then
            (cout, s) := std_logic_vector("00");
        elsif std_logic_vector'(a,b,cin) = "001" then
            (cout, s) := std_logic_vector("01");
        elsif std_logic_vector'(a,b,cin) = "010" then
            (cout, s) := std_logic_vector("01");
        elsif std_logic_vector'(a,b,cin) = "011" then
            (cout, s) := std_logic_vector("10");
        elsif std_logic_vector'(a,b,cin) = "100" then
            (cout, s) := std_logic_vector("01");
        elsif std_logic_vector'(a,b,cin) = "101" then
            (cout, s) := std_logic_vector("10");
        elsif std_logic_vector'(a,b,cin) = "110" then
            (cout, s) := std_logic_vector("10");
        elsif std_logic_vector'(a,b,cin) = "111" then
            (cout, s) := std_logic_vector("11");               
        else
            (cout, s) := std_logic_vector("00");            
        end if;
        return (cout, s);
    end Suma;
end package body ej1e_paquete;