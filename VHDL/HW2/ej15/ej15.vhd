entity ej15 is
port
(
	a, b, e : in bit;
	    c, d: out bit
);
end ej15;

architecture maxpld of ej15 is
begin
	c <= a and b;
	d <= e;
end maxpld;