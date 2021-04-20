entity ej4 is
port
	( input0, input1, sel : in bit;
						output0 : out bit
	);
end ej4;

architecture maxpld of ej4 is
begin
	output0 <= input0 when sel = '0' else input1;
end maxpld;