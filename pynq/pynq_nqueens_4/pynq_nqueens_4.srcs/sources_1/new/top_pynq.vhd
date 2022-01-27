library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_pynq is
generic(M   : integer;  --08-- size of the board MxM
        N_1 : integer;  --10-- N bits required to count upto solutions
        N_2 : integer   --04-- N bits required to count upto upto size of the board
    );   
port(
    clk   : in std_logic;       
    nRst  : in std_logic;   
    count : out std_logic_vector((N_1 - 1) downto 0);
    a_in  : out std_logic_vector((N_2 - 1) downto 0);
    done  : out std_logic
);
end entity;    
    
architecture Behavioral of top_pynq is

    signal s_ack_in:   std_logic;
    signal s_next_out: std_logic;            
    signal s_a_in:     std_logic_vector((N_2 - 1) downto 0);
    signal s_a_out:    std_logic_vector((N_2 * M - 1) downto 0); 
    signal s_output :  std_logic_vector(1 downto 0);

begin

    top_queens: entity work.top_queens
    generic map (M => M, N_1 => N_1, N_2 => N_2)
    port map (clk => clk, nRst => nRst, count => count, ack_in => s_ack_in, next_out => s_next_out, a_in => s_a_in, a_out => s_a_out);

    cond_ini: entity work.cond_ini
    generic map (M => M, N => N_2)
    port map (clk => clk, nRst => nRst, next_out => s_next_out, ack_in => s_ack_in, a => s_a_in, done => done, output_state => s_output);
    
    a_in <= s_a_in;     

end Behavioral;