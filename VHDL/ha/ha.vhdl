library ieee;
use ieee.std_logic_1164.all;

entity ha is
    port(
        a,b: in std_ulogic;
        o,c: out std_ulogic
    );
end ha;

architecture behave of ha is 
begin
    o <= a xor b;
    c <= a and b;
end behave;