entity ej12 is
port
(
	d, clk, clr, pre, load, data: in bit;
	  q1, q2, q3, q4, q5, q6, q7: out bit
);
end ej12;

architecture maxpld of ej12 is
begin
	-- register with active-high clock
	process
	begin
		wait until clk = '1';
		q1 <= d;
	end process;

	-- register with active-low clock
	process
	begin
		wait until clk = '0';
		q2 <= d;
	end process;

	-- register with active-high clock & asynchronous clear
	process (clk, clr)
	begin
		if clr = '1' then
			q3 <= '0';
		elsif clk'event and clk = '1' then
			q3 <= d;
		end if;
	end process;

	-- register with active-low clock & asynchronous clear
	process (clk, clr)
	begin
		if clr = '0' then
			q4 <= '0';
		elsif clk'event and clk = '0' then
			q4 <= d;
		end if;
	end process;

	-- register with active-high clock & asynchronous preset
	process (clk, pre)
	begin
		if pre = '1' then
			q5 <= '1';
		elsif clk'event and clk = '1' then
			q5 <= d;
		end if;
	end process;

	-- register with active-high clock & asynchronous load
	process (clk, load, data)
	begin
		if load = '1' then
			q6 <= data;
		elsif clk'event and clk = '1' then
			q6 <= d;
		end if;
	end process;

	-- register with active-high clock & asynchronous clear & preset
	process (clk, clr, pre)
	begin
		if clr = '1' then
			q7 <= '0';
		elsif pre = '1' then
			q7 <= '1';
		elsif clk'event and clk = '1' then
			q7 <= d;
		end if;
	end process;
end maxpld;