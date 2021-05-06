library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej7a is
port( clk, din, reset: in std_logic;
						  f: out std_logic
);
end ej7a;

architecture hdlc of ej7a is
type e is (ereset, primer0, primer1, segundo1, tercer1, cuarto1, quinto1, sexto1, inicio);
signal estado: e;

begin
	process(clk, reset)
	begin
		if reset = '0' then
			estado <= ereset;
		elsif (rising_edge(clk)) then
			case estado is
				when ereset =>
					if din = '0' then
						estado <= primer0;
					else 
						estado <= ereset;
					end if;
				when primer0 =>
					if din = '1' then
						estado <= primer1;
					else 
						estado <= primer0;
					end if;
				when primer1 =>
					if din = '1' then
						estado <= segundo1;
					else 
						estado <= primer0;
					end if;
				when segundo1 =>
					if din = '1' then
						estado <= tercer1;
					else 
						estado <= primer0;
					end if;
				when tercer1 =>
					if din = '1' then
						estado <= cuarto1;
					else 
						estado <= primer0;
					end if;
				when cuarto1 =>
					if din = '1' then
						estado <= quinto1;
					else 
						estado <= primer0;
					end if;
				when quinto1 =>
					if din = '1' then
						estado <= sexto1;
					else 
						estado <= primer0;
					end if;
				when sexto1 =>
					if din = '1' then
						estado <= ereset;
					else 
						estado <= inicio;
					end if;
				when inicio =>
					if din = '1' then
						estado <= ereset;
					else 
						estado <= primer0;
					end if;
				when others =>
					estado <= ereset;
			end case;
		end if;
	end process;
	process(estado)
	begin
		case estado is
			when ereset =>
				f <= '0';
			when primer0 =>
				f <= '0';
			when primer1 =>
				f <= '0';
			when segundo1 =>
				f <= '0';
			when tercer1 =>
				f <= '0';
			when cuarto1 =>
				f <= '0';
			when quinto1 =>
				f <= '0';
			when sexto1 =>
				f <= '0';
			when inicio =>
				f <= '1';
			when others =>
				f <= '0';
		end case;
	end process;
end hdlc;