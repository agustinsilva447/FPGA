library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl_logic is
    generic (
        K : integer := 7; -- position of the block (starting from zero)
        N : integer := 3  -- N+1 bits required to count upto size of the board
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
signal a_j : unsigned(N downto 0) := (others => '0');
signal u_k : unsigned(N downto 0) := (others => '0');
signal j : unsigned(N downto 0) := (others => '0');
signal count : unsigned(N downto 0);

begin
    u_k <= unsigned(u);
    valid <= valid_aux;
    done <= done_aux;
    a_j <= unsigned(a(((N+1)*to_integer(j)+N) downto ((N+1)*to_integer(j))));            
    process(clk, reset)
    begin
        if (reset = '1') then
            count <= (others => '0') ;
            j <= (others => '0');
            valid_aux <= '0';  
            done_aux <= '0';
        elsif (rising_edge(clk) and (j<K)) then                 
            j <= to_unsigned(to_integer(j) + 1, N+1);      
            if ((u_k /= a_j) and (abs(signed(u_k) - signed(a_j)) /= (K - to_integer(j)))) then
                count <= count + 1;
            end if;                  
        elsif (rising_edge(clk) and (j=K)) then
            done_aux <= '1';
            if (count = K) then
                valid_aux <= '1';    
            end if;                 
        end if;
    end process;   
end arch;