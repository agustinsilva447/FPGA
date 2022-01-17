library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity fsm_tb is
end entity;

architecture sim of fsm_tb is
    constant M: integer := 8;
    constant N: integer := 4;
    
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
    signal a_in_1: std_logic_vector((N*K_1-1) downto 0);
    signal a_out_1: std_logic_vector((N*(K_1+1)-1) downto 0);
    signal ack_in_1, next_in_1, ack_out_1, next_out_1: std_logic;
    signal output_state_1: std_logic_vector(2 downto 0); 
    
    --signal counter: unsigned(9 downto 0):=(others => '0');
    signal counter_2: std_logic_vector(9 downto 0):=(others => '0');
    signal nRst: std_logic;
    signal clk: std_logic := '1';
    
    
begin     
    counter_sol: entity work.sol_counter
    generic map(N=>10)
    port map (clk=>ack_out_7, reset=> nRst, next_sol=>next_in_7, count=>counter_2);

    fsm_7: entity work.fsm
    generic map (K => 7, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_7, ack_in=>ack_in_7, next_in=>next_in_7, a_out=>a_out_7, ack_out=>ack_out_7, next_out=>next_out_7, output_state=>output_state_7);   
    fsm_6: entity work.fsm
    generic map (K => 6, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_6, ack_in=>ack_in_6, next_in=>next_in_6, a_out=>a_out_6, ack_out=>ack_out_6, next_out=>next_out_6, output_state=>output_state_6);   
    fsm_5: entity work.fsm
    generic map (K => 5, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_5, ack_in=>ack_in_5, next_in=>next_in_5, a_out=>a_out_5, ack_out=>ack_out_5, next_out=>next_out_5, output_state=>output_state_5);   
    fsm_4: entity work.fsm
    generic map (K => 4, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_4, ack_in=>ack_in_4, next_in=>next_in_4, a_out=>a_out_4, ack_out=>ack_out_4, next_out=>next_out_4, output_state=>output_state_4);   
    fsm_3: entity work.fsm
    generic map (K => 3, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_3, ack_in=>ack_in_3, next_in=>next_in_3, a_out=>a_out_3, ack_out=>ack_out_3, next_out=>next_out_3, output_state=>output_state_3);   
    fsm_2: entity work.fsm
    generic map (K => 2, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_2, ack_in=>ack_in_2, next_in=>next_in_2, a_out=>a_out_2, ack_out=>ack_out_2, next_out=>next_out_2, output_state=>output_state_2);   
    fsm_1: entity work.fsm
    generic map (K => 1, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst, a_in=>a_in_1, ack_in=>ack_in_1, next_in=>next_in_1, a_out=>a_out_1, ack_out=>ack_out_1, next_out=>next_out_1, output_state=>output_state_1);     
    
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
    

    clock_process: process
    begin
         clk <= '0';
         wait for 5 ns;
         clk <= '1';
         wait for 5 ns;
    end process;
    
--    counter_process: process(ack_out_7)
--    begin
--        if (ack_out_7 = '0') then
--            counter <= counter + 1;
--            next_in_7 <= '1';
--        end if;
--    end process;
    
    process is
    begin
    
        nRst <= '1';
        wait for 10 ns;    
        nRst <= '0';
            
        wait for 10 ns;        
        ack_in_1 <= '1';
        a_in_1 <= "0001";
        wait for 10 ns;
        ack_in_1 <= '0';
        wait until next_out_1 = '1';
        
        wait for 10 ns;        
        ack_in_1 <= '1';
        a_in_1 <= "0010";
        wait for 10 ns;
        ack_in_1 <= '0';
        wait until next_out_1 = '1';
        
        wait for 10 ns;        
        ack_in_1 <= '1';
        a_in_1 <= "0011";
        wait for 10 ns;
        ack_in_1 <= '0';
        wait until next_out_1 = '1';
        
        wait for 10 ns;
        ack_in_1 <= '1';
        a_in_1 <= "0100";
        wait for 10 ns;
        ack_in_1 <= '0';
        wait until next_out_1 = '1';
        
        wait for 10 ns;
        ack_in_1 <= '1';
        a_in_1 <= "0101";
        wait for 10 ns;
        ack_in_1 <= '0';
        wait until next_out_1 = '1';
        
        wait for 10 ns;
        ack_in_1 <= '1';
        a_in_1 <= "0110";
        wait for 10 ns;
        ack_in_1 <= '0';
        wait until next_out_1 = '1';
        
        wait for 10 ns;
        ack_in_1 <= '1';
        a_in_1 <= "0111";
        wait for 10 ns;
        ack_in_1 <= '0';
        wait until next_out_1 = '1';
        
        wait for 10 ns;
        ack_in_1 <= '1';
        a_in_1 <= "1000";
        wait for 10 ns;
        ack_in_1 <= '0';
        wait until next_out_1 = '1';
        
        wait;
    end process; 
    
end architecture;