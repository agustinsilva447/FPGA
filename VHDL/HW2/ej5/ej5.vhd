entity ej5 is
port
	( high, mid, low : in bit;
						q : out integer
	);
end ej5;

architecture maxpld of ej5 is
begin
	q <= 3 when high = '1' else
	2 when mid = '1' else
	1 when low = '1' else
	0;
end maxpld;