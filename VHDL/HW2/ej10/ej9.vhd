entity ej9 is
port
	(
		d: in bit_vector( 11 downto 0 );
	 clk: in bit;
	   q: out bit_vector( 11 downto 0 )
	);
end ej9;

architecture a of ej9 is
begin
	process
	begin
		wait until clk = '1' and clk'event;
		q <= d;
	end process;
end a;