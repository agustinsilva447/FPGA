entity ej16 is
port
(
	    clk : in bit;
	 input0 : in bit;
	  reset : in bit;
	output0 : out bit
);
end ej16;

architecture a of ej16 is
	type state_type is (s0, s1);
	signal state : state_type;
begin
	process (clk)
	begin
		if reset = '1' then
			state <= s0;
		elsif (clk'event and clk = '1') then
			case state is
				when s0=>
					state <= s1;
				when s1=>
					if input0 = '1' then
						state <= s0;
					else
						state <= s1;
					end if;
			end case;
		end if;
	end process;
	output0 <= '1' when state = s1 else '0';
end a;