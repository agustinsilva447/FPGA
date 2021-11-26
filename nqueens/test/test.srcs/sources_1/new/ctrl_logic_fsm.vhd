library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl_logic_fsm is
    generic (
        K : integer; -- position of the block (starting from zero) 
        N : integer  -- N+1 bits required to count upto size of the board
    );    
    port(
        clk, reset : in std_logic;
        a: in std_logic_vector(0 to (K*N-1));
        u: in std_logic_vector(N-1 downto 0);
        valid: out std_logic ;
        done : out std_logic ;    
        output_state: out std_logic_vector(2 downto 0)      -- salida indicando cada estado
    );
end entity;

architecture arch of ctrl_logic_fsm is

signal valid_aux: std_logic;
signal done_aux: std_logic;
signal a_j : unsigned(N-1 downto 0);
signal u_k : unsigned(N-1 downto 0);
signal j : unsigned(N-1 downto 0);
signal count : unsigned(N-1 downto 0);
signal output_i : std_logic_vector(2 downto 0);

begin
    output_state <= output_i; 
    u_k <= unsigned(u);
    valid <= valid_aux;
    done <= done_aux;    
    a_j <= unsigned(a((N*to_integer(j)) to (N*to_integer(j)+(N-1)))) when j<K else
           unsigned(a(0 to (N-1)));
    
    process(clk, reset)
    begin
        if (reset = '1') then
            done_aux <= '0';
            valid_aux <= '0';  
            j <= (others => '0');
            count <= (others => '0');
            output_i <= "000";
        elsif (rising_edge(clk)) then     
            if ((j<K) and (done_aux = '0')) then
                j <= to_unsigned(to_integer(j) + 1, N);      
                if ((u_k /= a_j) and (abs(signed(u_k) - signed(a_j)) /= (K - to_integer(j)))) then
                    count <= count + 1;                    
                else
                    done_aux <= '1';
                end if; 
            elsif (j=K) then     
                done_aux <= '1';
                if (count = K) then
                    valid_aux <= '1';    
                end if; 
            end if; 
        end if;
    end process;   
end arch;