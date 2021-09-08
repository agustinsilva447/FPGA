library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl_logic is
    generic (
        K : integer := 5; -- position of the block
        N : integer := 2  -- N+1 bits required to count upto M
    );    
    port(
        clk, reset : in std_logic;
        a: in std_logic_vector(((K + 1) * (N + 1) - 1) downto 0);
        u: in std_logic_vector(N downto 0);
        valid: out std_logic ;
        done : out std_logic 
    );
end entity;

architecture arch of ctrl_logic is

signal valid_aux: std_logic;
signal done_aux: std_logic;
signal a_j : unsigned(N downto 0) := "000";
signal u_k : unsigned(N downto 0) := "000";
signal j : unsigned(N downto 0);
signal count : unsigned(N downto 0);
signal count_0, count_1 : std_logic;

begin
    u_k <= unsigned(u);
    valid <= valid_aux;
    done <= done_aux;
    
    process(clk, reset)
    begin
        if (reset = '1') then
            j <= "000"; 
            count_0 <= '0'; 
            count_1 <= '0'; 
            count <= "000"; 
            valid_aux <= '0';  
            done_aux <= '0';
        elsif (rising_edge(clk) and (j<K)) then     
            a_j <= unsigned(a((3*to_integer(j)+2) downto (3*to_integer(j))));
            j <= to_unsigned(to_integer(j) + 1, 3);      
            if ((u_k /= a_j) and (abs(signed(u_k) - signed(a_j)) /= (K - to_integer(j)))) then
                count <= count + 1;
            end if;      
            
            if (u_k /= a_j) then
                count_0 <= '1';
            else
                count_0 <= '0';
            end if;  
            
            if (abs(signed(u_k) - signed(a_j)) /= (K - to_integer(j))) then
                count_1 <= '1';
            else
                count_1 <= '0';
            end if;
            
        elsif (rising_edge(clk) and (j=K)) then   
            a_j <= "000";
            done_aux <= '1';
            if (count = K) then
                valid_aux <= '1';    
            end if;                 
        end if;
    end process;   
end arch;