entity ej6 is
port
	(
				 --d : in integer range 0 to 255;
			  clk : in bit;
		   --clear : in bit;
		 	   --ld : in bit;
		  --enable : in bit;
		 --up_down : in bit;
				--qa : out integer range 0 to 255;
				--qb : out integer range 0 to 255;
				--qc : out integer range 0 to 255;
				--qd : out integer range 0 to 255;
				--qe : out integer range 0 to 255;
				--qf : out integer range 0 to 255;
				--qg : out integer range 0 to 255;
				--qh : out integer range 0 to 255;
				--qi : out integer range 0 to 255;
				--qj : out integer range 0 to 255;
				--qk : out integer range 0 to 255;
				--ql : out integer range 0 to 255;
				--qm : out integer range 0 to 255;
				qn : out integer range 0 to 255
	);
end ej6;

architecture a of ej6 is
begin
	-- Contador de modulo 200
	process (clk)
	variable cnt : integer range 0 to 255;
	constant modulus : integer := 200;
	
	begin
		if (clk'event and clk = '1') then
			if cnt = modulus then
				cnt := 0;
			else
				cnt := cnt + 1;
			end if;
		end if;
		qn <= cnt;
	end process;
end a;