library altera;
use altera.maxplus2.all;

library ieee;
use ieee.std_logic_1164.all;

entity ej3 is
port
	( data, clock, clearn, presetn: in std_logic;
	                        q_out : out std_logic;
							a, b, c, gn : in std_logic;
										d7 : in STD_LOGIC;
										d6 : in STD_LOGIC;
										d5 : in STD_LOGIC;
										d4 : in STD_LOGIC;
										d3 : in STD_LOGIC;
										d2 : in STD_LOGIC;
										d1 : in STD_LOGIC;
										d0 : in STD_LOGIC;
	                        y, wn : out std_logic
	);
end ej3;

architecture a of ej3 is
begin
	dff1 : dff port map (d =>data, q => q_out, clk => clock, clrn => clearn, prn => presetn);
	mux1 : a_74151 port map (c, b, a, d7, d6, d5, d4, d3, d2, d1, d0, gn, y, wn);
end a;