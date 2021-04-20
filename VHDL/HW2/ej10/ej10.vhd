package ej10_package is
	component ej9
	port(
		  d : in bit_vector(11 downto 0);
		clk : in bit;
		  q : out bit_vector(11 downto 0));
	end component;
end ej10_package;

library work;
use work.ej10_package.all;

entity ej10 is
	port
	(
	  d : in bit_vector(23 downto 0);
	clk : in bit;
	  q : out bit_vector(23 downto 0)
	);
end ej10;

architecture a of ej10 is
begin
	ej9a : ej9 port map (d => d(11 downto 0), clk => clk, q => q(11 downto 0));
	ej9b : ej9 port map (d => d(23 downto 12), clk => clk, q => q(23 downto 12));
end a;