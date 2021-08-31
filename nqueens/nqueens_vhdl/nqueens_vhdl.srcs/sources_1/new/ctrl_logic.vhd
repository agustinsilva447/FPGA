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
        a: in unsigned(((N + 1) * (K + 1) - 1) downto 0);
        u: in unsigned(N downto 0);
        valid: out std_logic;
        done : out std_logic 
    );
end entity;

architecture arch of ctrl_logic is
signal count : unsigned(N downto 0) := "000";
signal a_j : unsigned(N downto 0) := "000";
signal aux : unsigned(N downto 0) := "000";
signal j : integer := 0;

signal u_k : unsigned(N downto 0) := "000";
signal done_aux: std_logic;

begin
    u_k <= u;
    done <= done_aux;
    
    process(clk, reset)
    begin
        if(reset = '1') then
            a_j <= "000";
            count <= "000";
            done_aux <= '0';
        elsif rising_edge(clk) then
            if ((j<K) and (done_aux = '0')) then
                a_j <= a((3*j+2) downto (3*j));  
                          
                if (u_k > a_j) then
                    aux <= u_k - a_j;
                else
                    aux <= a_j - u_k;
                end if;       
                     
                if (u_k /= a_j and (aux /= (K - j))) then
                    count <= count + 1;
                else 
                    valid <= '0';
                    done_aux <= '1';
                end if;
                j <= j + 1;      
            end if;      
            
            if (count = k) then
                valid <= '1';    
                done_aux <= '1';
            end if;
        end if;
    end process;   
end arch;