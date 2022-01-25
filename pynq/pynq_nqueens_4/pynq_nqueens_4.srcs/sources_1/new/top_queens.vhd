library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_queens is
generic(M   : integer;  --08-- size of the board MxM
        N_1 : integer;  --10-- N bits required to count upto solutions
        N_2 : integer   --04-- N bits required to count upto upto size of the board
    );   

port(
    clk: in std_logic;       
    nRst: in std_logic;   
    count : out std_logic_vector(N_1 - 1 downto 0);    
    ack_in: in std_logic;
    next_out: out std_logic;            
    a_in: in std_logic_vector((N_2 - 1) downto 0);
    a_out: out std_logic_vector((N_2 * M - 1) downto 0)    
    );                         
end entity;

architecture Behavioral of top_queens is

    constant K_7: integer := 7;  
    signal a_in_7: std_logic_vector((N_2*K_7-1) downto 0);
    signal a_out_7: std_logic_vector((N_2*(K_7+1)-1) downto 0);
    signal ack_in_7, next_in_7, ack_out_7, next_out_7: std_logic;
    signal output_state_7: std_logic_vector(2 downto 0);
    
    constant K_6: integer := 6;   
    signal a_in_6: std_logic_vector((N_2*K_6-1) downto 0);
    signal a_out_6: std_logic_vector((N_2*(K_6+1)-1) downto 0);
    signal ack_in_6, next_in_6, ack_out_6, next_out_6: std_logic;
    signal output_state_6: std_logic_vector(2 downto 0);
    
    constant K_5: integer := 5;   
    signal a_in_5: std_logic_vector((N_2*K_5-1) downto 0);
    signal a_out_5: std_logic_vector((N_2*(K_5+1)-1) downto 0);
    signal ack_in_5, next_in_5, ack_out_5, next_out_5: std_logic;
    signal output_state_5: std_logic_vector(2 downto 0);
    
    constant K_4: integer := 4;   
    signal a_in_4: std_logic_vector((N_2*K_4-1) downto 0);
    signal a_out_4: std_logic_vector((N_2*(K_4+1)-1) downto 0);
    signal ack_in_4, next_in_4, ack_out_4, next_out_4: std_logic;
    signal output_state_4: std_logic_vector(2 downto 0);
    
    constant K_3: integer := 3;  
    signal a_in_3: std_logic_vector((N_2*K_3-1) downto 0);
    signal a_out_3: std_logic_vector((N_2*(K_3+1)-1) downto 0);
    signal ack_in_3, next_in_3, ack_out_3, next_out_3: std_logic;
    signal output_state_3: std_logic_vector(2 downto 0);
    
    constant K_2: integer := 2;    
    signal a_in_2: std_logic_vector((N_2*K_2-1) downto 0);
    signal a_out_2: std_logic_vector((N_2*(K_2+1)-1) downto 0);
    signal ack_in_2, next_in_2, ack_out_2, next_out_2: std_logic;
    signal output_state_2: std_logic_vector(2 downto 0);
    
    constant K_1: integer := 1;    
    signal a_in_1: std_logic_vector((N_2*K_1-1) downto 0);
    signal a_out_1: std_logic_vector((N_2*(K_1+1)-1) downto 0);
    signal ack_in_1, next_in_1, ack_out_1, next_out_1: std_logic;
    signal output_state_1: std_logic_vector(2 downto 0); 
    
    signal s_nRst:     std_logic;   
    signal s_count :   std_logic_vector(N_1 - 1 downto 0);    
    signal s_ack_in:   std_logic;
    signal s_next_out: std_logic;            
    signal s_a_in:     std_logic_vector((N_2 - 1) downto 0);
    signal s_a_out:    std_logic_vector((N_2 * M - 1) downto 0);    

begin

    counter_sol: entity work.sol_counter
    generic map(N=>N_1)
    port map (clk=>ack_out_7, reset=> s_nRst, next_sol=>next_in_7, count=>s_count);    
    fsm_7: entity work.fsm_block
    generic map (K => K_7, M => M, N =>N_2)
    port map (clk=>clk, nRst=>s_nRst, a_in=>a_in_7, ack_in=>ack_in_7, next_in=>next_in_7, a_out=>a_out_7, ack_out=>ack_out_7, next_out=>next_out_7, output_state=>output_state_7);   
    fsm_6: entity work.fsm_block
    generic map (K => K_6, M => M, N =>N_2)
    port map (clk=>clk, nRst=>s_nRst, a_in=>a_in_6, ack_in=>ack_in_6, next_in=>next_in_6, a_out=>a_out_6, ack_out=>ack_out_6, next_out=>next_out_6, output_state=>output_state_6);   
    fsm_5: entity work.fsm_block
    generic map (K => K_5, M => M, N =>N_2)
    port map (clk=>clk, nRst=>s_nRst, a_in=>a_in_5, ack_in=>ack_in_5, next_in=>next_in_5, a_out=>a_out_5, ack_out=>ack_out_5, next_out=>next_out_5, output_state=>output_state_5);   
    fsm_4: entity work.fsm_block
    generic map (K => K_4, M => M, N =>N_2)
    port map (clk=>clk, nRst=>s_nRst, a_in=>a_in_4, ack_in=>ack_in_4, next_in=>next_in_4, a_out=>a_out_4, ack_out=>ack_out_4, next_out=>next_out_4, output_state=>output_state_4);   
    fsm_3: entity work.fsm_block
    generic map (K => K_3, M => M, N =>N_2)
    port map (clk=>clk, nRst=>s_nRst, a_in=>a_in_3, ack_in=>ack_in_3, next_in=>next_in_3, a_out=>a_out_3, ack_out=>ack_out_3, next_out=>next_out_3, output_state=>output_state_3);   
    fsm_2: entity work.fsm_block
    generic map (K => K_2, M => M, N =>N_2)
    port map (clk=>clk, nRst=>s_nRst, a_in=>a_in_2, ack_in=>ack_in_2, next_in=>next_in_2, a_out=>a_out_2, ack_out=>ack_out_2, next_out=>next_out_2, output_state=>output_state_2);   
    fsm_1: entity work.fsm_block
    generic map (K => K_1, M => M, N =>N_2)
    port map (clk=>clk, nRst=>s_nRst, a_in=>a_in_1, ack_in=>ack_in_1, next_in=>next_in_1, a_out=>a_out_1, ack_out=>ack_out_1, next_out=>next_out_1, output_state=>output_state_1);     
    
    a_in_7 <= a_out_6;
    ack_in_7  <= ack_out_6;
    next_in_6 <= next_out_7;    
    
    a_in_6 <= a_out_5;  
    ack_in_6  <= ack_out_5;
    next_in_5 <= next_out_6;
    
    a_in_5 <= a_out_4;   
    ack_in_5  <= ack_out_4;
    next_in_4 <= next_out_5;    
    
    a_in_4 <= a_out_3;  
    ack_in_4  <= ack_out_3;
    next_in_3 <= next_out_4;    
    
    a_in_3 <= a_out_2;   
    ack_in_3  <= ack_out_2;
    next_in_2 <= next_out_3;
       
    a_in_2 <= a_out_1;    
    ack_in_2 <= ack_out_1; 
    next_in_1 <= next_out_2;  

    a_in_1 <= s_a_in;
    ack_in_1 <= s_ack_in;
    s_next_out <= next_out_1;
    s_a_out <= a_out_7;

    s_nRst <= nRst;
    s_ack_in <= ack_in;
    s_a_in <= a_in;    
    count <= s_count;
    next_out <= s_next_out;    
    a_out <= s_a_out;   
      

end Behavioral;
