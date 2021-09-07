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

signal count : unsigned(N downto 0) := "000";
signal a_j : unsigned(N downto 0) := "000";
signal u_k : unsigned(N downto 0) := "000";
signal valid_aux: std_logic;
signal done_aux: std_logic;

begin
    u_k <= unsigned(u);
    valid <= valid_aux;
    done <= done_aux;
    
    process(clk, reset)
    begin
        if (reset = '1') then
            count <= "000";
        elsif rising_edge(clk) then      
            valid_aux <= '0';  
            for j in 0 to K loop
                a_j <= unsigned(a((3*j+2) downto (3*j)));         
                if ((u_k /= a_j) and (abs(signed(u_k) - signed(a_j)) /= (K - j))) then
                    count <= count + 1;
                end if;       
            end loop;            
            if (count = k) then
                valid_aux <= '1';    
            end if;
            done <= '1';     
        end if;
    end process;   
end arch;