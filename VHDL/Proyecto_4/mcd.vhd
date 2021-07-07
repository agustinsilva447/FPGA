library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mcd is 
generic (	n: integer := 8
);

port (	reloj, nreset, pulsoa, pulsob: in std_logic;
			dato: in std_logic_vector(n-1 downto 0);
			fin: out std_logic;
			salida: out std_logic_vector(n-1 downto 0)
);
end mcd;

architecture a of mcd is
type state is (ereset, e1, e2, e3, e4, eamayor, ebmayor, efin);
signal estado: state;
signal a,b,r: std_logic_vector(n-1 downto 0);
begin
	process(reloj,nreset)
	begin
		if nreset = '0' then
			estado <= ereset;
			fin <= '0';
			a <= (others => '0');
			b <= (others => '0');
			r <= (others => '0');
			salida <= (others => '0');
		elsif rising_edge(reloj) then
			case estado is
				when ereset =>
					if pulsoa = '0' then
						salida <= dato;
						a <= dato;
						estado <= e1;
					end if;
				when e1 =>
					if pulsob = '0' then
						salida <= dato;
						b <= dato;
						estado <= e2;
					end if;
				when e2 =>
					if a = b then
						estado <= efin;
					elsif a<b then
						estado <= ebmayor;
					else 
						estado <= eamayor;
					end if;
				when efin =>
					salida <= a;
					fin <= '1';
					if pulsoa = '0' then
						salida <= dato;
						a <= dato;
						estado <= e1; 
						fin <= '0';
					end if;
				when eamayor =>
					r <= std_logic_vector(unsigned(a) - unsigned(b));
					estado <= e3;
				when ebmayor =>
					r <= std_logic_vector(unsigned(b) - unsigned(a));
					estado <= e4;
				when e3 =>
					a <= r;
					if r = b then
						estado <= efin;
					elsif r < b then
						estado <= ebmayor;
					else 
						estado <= eamayor;
					end if;
				when e4 =>
					b <= r;
					if r = a then
						estado <= efin;
					elsif r < a then
						estado <= eamayor;
					else
						estado <= ebmayor;
					end if;
			end case;
		end if;
	end process;
end a;