library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_nqueens is
generic(M : integer;  -- size of the board MxM
        N : integer;  -- N bits required to count upto size of the board;
        P : integer   -- N bits required for the counter;
    );  
port(
    clk, nRst: in std_logic; 
    flag, done: out std_logic; 
    counter: out unsigned(P downto 0)
    );                         
end entity;

architecture rtl of top_nqueens is

    ---------------
    -- agregar una cantidad de bloques igual al tamanio del tablero menos 1
    -- constant K_i: integer := i;  
    -- signal a_in_i: std_logic_vector((N*K_i-1) downto 0);
    -- signal a_out_i: std_logic_vector((N*(K_i+1)-1) downto 0);
    -- signal ack_in_i, next_in_i, ack_out_i, next_out_i: std_logic;
    -- signal output_state_i: std_logic_vector(2 downto 0);    
    --------------- 
    
    constant K_9: integer := 9;  
    signal a_in_9: std_logic_vector((N*K_9-1) downto 0);
    signal a_out_9: std_logic_vector((N*(K_9+1)-1) downto 0);
    signal ack_in_9, next_in_9, ack_out_9, next_out_9: std_logic;
    signal output_state_9: std_logic_vector(2 downto 0); 
    
    constant K_8: integer := 8;  
    signal a_in_8: std_logic_vector((N*K_8-1) downto 0);
    signal a_out_8: std_logic_vector((N*(K_8+1)-1) downto 0);
    signal ack_in_8, next_in_8, ack_out_8, next_out_8: std_logic;
    signal output_state_8: std_logic_vector(2 downto 0); 
    
    constant K_7: integer := 7;  
    signal a_in_7: std_logic_vector((N*K_7-1) downto 0);
    signal a_out_7: std_logic_vector((N*(K_7+1)-1) downto 0);
    signal ack_in_7, next_in_7, ack_out_7, next_out_7: std_logic;
    signal output_state_7: std_logic_vector(2 downto 0);    
    
    constant K_6: integer := 6;   
    signal a_in_6: std_logic_vector((N*K_6-1) downto 0);
    signal a_out_6: std_logic_vector((N*(K_6+1)-1) downto 0);
    signal ack_in_6, next_in_6, ack_out_6, next_out_6: std_logic;
    signal output_state_6: std_logic_vector(2 downto 0);
    
    constant K_5: integer := 5;   
    signal a_in_5: std_logic_vector((N*K_5-1) downto 0);
    signal a_out_5: std_logic_vector((N*(K_5+1)-1) downto 0);
    signal ack_in_5, next_in_5, ack_out_5, next_out_5: std_logic;
    signal output_state_5: std_logic_vector(2 downto 0);
    
    constant K_4: integer := 4;   
    signal a_in_4: std_logic_vector((N*K_4-1) downto 0);
    signal a_out_4: std_logic_vector((N*(K_4+1)-1) downto 0);
    signal ack_in_4, next_in_4, ack_out_4, next_out_4: std_logic;
    signal output_state_4: std_logic_vector(2 downto 0);
    
    constant K_3: integer := 3;  
    signal a_in_3: std_logic_vector((N*K_3-1) downto 0);
    signal a_out_3: std_logic_vector((N*(K_3+1)-1) downto 0);
    signal ack_in_3, next_in_3, ack_out_3, next_out_3: std_logic;
    signal output_state_3: std_logic_vector(2 downto 0);
    
    constant K_2: integer := 2;    
    signal a_in_2: std_logic_vector((N*K_2-1) downto 0);
    signal a_out_2: std_logic_vector((N*(K_2+1)-1) downto 0);
    signal ack_in_2, next_in_2, ack_out_2, next_out_2: std_logic;
    signal output_state_2: std_logic_vector(2 downto 0);
    
    constant K_1: integer := 1;    
    signal a_in_1: std_logic_vector((N*K_1-1) downto 0) := (others => '0');
    signal a_out_1: std_logic_vector((N*(K_1+1)-1) downto 0);
    signal next_in_1, ack_out_1, next_out_1: std_logic;
    signal ack_in_1: std_logic := '1';
    signal output_state_1: std_logic_vector(2 downto 0); 
    
    signal counter_s: unsigned(P downto 0) := (others => '0');
    signal flag_s, done_s: std_logic := '0';
    
begin
    
    ---------------
    -- agregar una cantidad de bloques igual al tamanio del tablero menos 1
    -- fsm_i: entity work.fsm
    -- generic map (K => i, M => M, N =>N)
    -- port map (clk=>clk, nRst=>nRst, a_in=>a_in_i, ack_in=>ack_in_i, next_in=>next_in_i, a_out=>a_out_i, ack_out=>ack_out_i, next_out=>next_out_i, output_state=>output_state_i);    
    ---------------
    
    fsm_9: entity work.fsm
    generic map (K => 9, M => M, N =>N)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_9, ack_in=>ack_in_9, next_in=>next_in_9, a_out=>a_out_9, ack_out=>ack_out_9, next_out=>next_out_9, output_state=>output_state_9);       
    
    fsm_8: entity work.fsm
    generic map (K => 8, M => M, N =>N)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_8, ack_in=>ack_in_8, next_in=>next_in_8, a_out=>a_out_8, ack_out=>ack_out_8, next_out=>next_out_8, output_state=>output_state_8);       
    
    fsm_7: entity work.fsm
    generic map (K => 7, M => M, N =>N)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_7, ack_in=>ack_in_7, next_in=>next_in_7, a_out=>a_out_7, ack_out=>ack_out_7, next_out=>next_out_7, output_state=>output_state_7);       
    
    fsm_6: entity work.fsm
    generic map (K => 6, M => M, N =>N)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_6, ack_in=>ack_in_6, next_in=>next_in_6, a_out=>a_out_6, ack_out=>ack_out_6, next_out=>next_out_6, output_state=>output_state_6);   
    
    fsm_5: entity work.fsm
    generic map (K => 5, M => M, N =>N)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_5, ack_in=>ack_in_5, next_in=>next_in_5, a_out=>a_out_5, ack_out=>ack_out_5, next_out=>next_out_5, output_state=>output_state_5);   
    
    fsm_4: entity work.fsm
    generic map (K => 4, M => M, N =>N)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_4, ack_in=>ack_in_4, next_in=>next_in_4, a_out=>a_out_4, ack_out=>ack_out_4, next_out=>next_out_4, output_state=>output_state_4);   
    
    fsm_3: entity work.fsm
    generic map (K => 3, M => M, N =>N)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_3, ack_in=>ack_in_3, next_in=>next_in_3, a_out=>a_out_3, ack_out=>ack_out_3, next_out=>next_out_3, output_state=>output_state_3);   
    
    fsm_2: entity work.fsm
    generic map (K => 2, M => M, N =>N)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_2, ack_in=>ack_in_2, next_in=>next_in_2, a_out=>a_out_2, ack_out=>ack_out_2, next_out=>next_out_2, output_state=>output_state_2);   
    
    fsm_1: entity work.fsm
    generic map (K => 1, M => M, N =>N)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_1, ack_in=>ack_in_1, next_in=>next_in_1, a_out=>a_out_1, ack_out=>ack_out_1, next_out=>next_out_1, output_state=>output_state_1);
    
    ---------------
    -- agregar una cantidad de bloques igual al tamanio del tablero menos 1
    -- a_in_i <= a_out_(i-1);
    -- ack_in_i  <= ack_out_(i-1);
    -- next_in_(i-1) <= next_out_i;     
    ---------------           

    a_in_9 <= a_out_8;
    ack_in_9  <= ack_out_8;
    next_in_8 <= next_out_9; 

    a_in_8 <= a_out_7;
    ack_in_8  <= ack_out_7;
    next_in_7 <= next_out_8; 

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
    
    counter <= counter_s;
    flag <= flag_s;
    done <= done_s;
    
    counter_process: process(ack_out_9)     -- ack_out_i
    begin
        if (ack_out_9 = '0') then           -- ack_out_i
            counter_s <= counter_s + 1;
            next_in_9 <= '1';               -- next_in_i
        end if;
    end process;    
    
    flag_process: process(a_in_1)
    begin
        if a_in_1 = std_logic_vector(to_unsigned(M, N)) then
            flag_s <= '1';
        end if;
    end process;

    process(clk)
    begin        
        if flag_s = '0' then
            if ack_in_1 = '1' then 
                a_in_1 <= std_logic_vector(unsigned(a_in_1) + 1);
                ack_in_1 <= '0';
            elsif ack_in_1 = '0' then
                if next_out_1 = '1' then
                    ack_in_1 <= '1';
                end if;
            end if;
        else
            if next_out_1 = '1' then
                done_s <= '1';
            end if;
        end if;
    end process; 

end architecture;