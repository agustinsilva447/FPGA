library ieee;
	use ieee.std_logic_1164.all;
	
entity compuerta_AND is
	port(	A,B	: in std_logic;
			Z 		: out std_logic);
end entity;

architecture uno of compuerta_AND is

begin
	Z <= A and B;
end uno;