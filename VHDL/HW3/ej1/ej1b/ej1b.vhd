library ieee;
use ieee.std_logic_1164.all;

entity ej1b is
port
(
	 a,b,cin: in std_logic;
	  s,cout: out std_logic
);
end ej1b;

architecture sumador_completo of ej1b is
begin
	process(a,b,cin)
	variable v_CONCATENATE : std_logic_vector(2 downto 0);
	begin
		v_CONCATENATE := a & b & cin;
		case v_CONCATENATE is
			when "000" => 
				s <= '0';
				cout <= '0';
			when "001" => 
				s <= '1';
				cout <= '0';
			when "010" => 
				s <= '1';
				cout <= '0';
			when "011" => 
				s <= '0';
				cout <= '1';
			when "100" => 
				s <= '1';
				cout <= '0';
			when "101" => 
				s <= '0';
				cout <= '1';
			when "110" => 
				s <= '0';
				cout <= '1';
			when "111" => 
				s <= '1';
				cout <= '1';		
		end case;
	end process;	
end sumador_completo;