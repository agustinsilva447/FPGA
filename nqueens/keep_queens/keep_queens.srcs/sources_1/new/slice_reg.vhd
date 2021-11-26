library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity slice_reg is
    generic (
        K : integer; -- position of the block (starting from zero) 
        N : integer  -- N+1 bits required to count upto size of the board
    );    
    port(
        clk, reset : in std_logic;
        a: in std_logic_vector(0 to (N*K-1));
        idx: out std_logic_vector(N-1 downto 0);
        u, ux: out std_logic_vector(0 to N-1)
        
    );
end entity;

architecture arch of slice_reg is

type array_in is array (K-1 downto 0) of std_logic_vector(0 to N-1);
signal asin_array: array_in;
signal j : unsigned(N-1 downto 0);

begin
    GENERATE_FOR_in: for i in 0 to K-1 generate
        asin_array(i) <= a(i*N to ((i+1)*N-1));
    end generate; 
    idx <= std_logic_vector(j);
    u <= asin_array(to_integer(j));    
    ux <= a((N*to_integer(j)) to (N*to_integer(j)+(N-1)));
           
    process(clk, reset)
    begin
        if (reset = '1') then
            j <= (others => '0');
        elsif (rising_edge(clk)) then   
            if (j<K-1) then
                j <= to_unsigned(to_integer(j) + 1, N);
            else
                j <= (others => '0');
            end if; 
        end if;    
    end process;   
    
end arch;