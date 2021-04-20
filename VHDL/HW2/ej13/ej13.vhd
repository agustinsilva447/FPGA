entity ej13 is
port
(
	d0, d1, d2, d3 : in bit;
				     s: in integer range 0 to 3;
			   output0: out bit
);
end ej13;

architecture maxpld of ej13 is
begin
	with s select
		-- creates a 4-to-1 multiplexer
		output0 <= d0 when 0,
		d1 when 1,
		d2 when 2,
		d3 when 3;
end maxpld;