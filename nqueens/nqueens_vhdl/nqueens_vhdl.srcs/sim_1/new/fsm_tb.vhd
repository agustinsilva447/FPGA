library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity fsm_tb is
end entity;

architecture sim of fsm_tb is
    constant M: integer := 8;
    constant N: integer := 4;
    
    constant K_7: integer := 7;    
    signal nRst_7: std_logic;    
    signal u_0_7: std_logic_vector(N-1 downto 0);
    signal a_in_7: std_logic_vector((N*K_7-1) downto 0);
    signal a_out_7: std_logic_vector((N*(K_7+1)-1) downto 0);
    signal ack_in_7, next_in_7, ack_out_7, next_out_7: std_logic;
    signal output_state_7: std_logic_vector(2 downto 0);
    
    constant K_6: integer := 6;   
    signal nRst_6: std_logic;    
    signal u_0_6: std_logic_vector(N-1 downto 0);
    signal a_in_6: std_logic_vector((N*K_6-1) downto 0);
    signal a_out_6: std_logic_vector((N*(K_6+1)-1) downto 0);
    signal ack_in_6, next_in_6, ack_out_6, next_out_6: std_logic;
    signal output_state_6: std_logic_vector(2 downto 0);
    
    constant K_5: integer := 5;   
    signal nRst_5: std_logic;    
    signal u_0_5: std_logic_vector(N-1 downto 0);
    signal a_in_5: std_logic_vector((N*K_5-1) downto 0);
    signal a_out_5: std_logic_vector((N*(K_5+1)-1) downto 0);
    signal ack_in_5, next_in_5, ack_out_5, next_out_5: std_logic;
    signal output_state_5: std_logic_vector(2 downto 0);
    
    constant K_4: integer := 4;   
    signal nRst_4: std_logic;    
    signal u_0_4: std_logic_vector(N-1 downto 0);
    signal a_in_4: std_logic_vector((N*K_4-1) downto 0);
    signal a_out_4: std_logic_vector((N*(K_4+1)-1) downto 0);
    signal ack_in_4, next_in_4, ack_out_4, next_out_4: std_logic;
    signal output_state_4: std_logic_vector(2 downto 0);
    
    constant K_3: integer := 3;  
    signal nRst_3: std_logic;     
    signal u_0_3: std_logic_vector(N-1 downto 0);
    signal a_in_3: std_logic_vector((N*K_3-1) downto 0);
    signal a_out_3: std_logic_vector((N*(K_3+1)-1) downto 0);
    signal ack_in_3, next_in_3, ack_out_3, next_out_3: std_logic;
    signal output_state_3: std_logic_vector(2 downto 0);
    
    constant K_2: integer := 2;    
    signal nRst_2: std_logic;   
    signal u_0_2: std_logic_vector(N-1 downto 0);
    signal a_in_2: std_logic_vector((N*K_2-1) downto 0);
    signal a_out_2: std_logic_vector((N*(K_2+1)-1) downto 0);
    signal ack_in_2, next_in_2, ack_out_2, next_out_2: std_logic;
    signal output_state_2: std_logic_vector(2 downto 0);
    
    constant K_1: integer := 1;    
    signal nRst_1: std_logic;   
    signal u_0_1: std_logic_vector(N-1 downto 0);
    signal a_in_1: std_logic_vector((N*K_1-1) downto 0);
    signal a_out_1: std_logic_vector((N*(K_1+1)-1) downto 0);
    signal ack_in_1, next_in_1, ack_out_1, next_out_1: std_logic;
    signal output_state_1: std_logic_vector(2 downto 0); 
    
    signal clk: std_logic := '1';
begin     
    fsm_7: entity work.fsm
    generic map (K => 7, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst_7, u_0=>u_0_7, a_in=>a_in_7, ack_in=>ack_in_7, next_in=>next_in_7, a_out=>a_out_7, ack_out=>ack_out_7, next_out=>next_out_7, output_state=>output_state_7);   
    fsm_6: entity work.fsm
    generic map (K => 6, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst_6, u_0=>u_0_6, a_in=>a_in_6, ack_in=>ack_in_6, next_in=>next_in_6, a_out=>a_out_6, ack_out=>ack_out_6, next_out=>next_out_6, output_state=>output_state_6);   
    fsm_5: entity work.fsm
    generic map (K => 5, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst_5, u_0=>u_0_5, a_in=>a_in_5, ack_in=>ack_in_5, next_in=>next_in_5, a_out=>a_out_5, ack_out=>ack_out_5, next_out=>next_out_5, output_state=>output_state_5);   
    fsm_4: entity work.fsm
    generic map (K => 4, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst_4, u_0=>u_0_4, a_in=>a_in_4, ack_in=>ack_in_4, next_in=>next_in_4, a_out=>a_out_4, ack_out=>ack_out_4, next_out=>next_out_4, output_state=>output_state_4);   
    fsm_3: entity work.fsm
    generic map (K => 3, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst_3, u_0=>u_0_3, a_in=>a_in_3, ack_in=>ack_in_3, next_in=>next_in_3, a_out=>a_out_3, ack_out=>ack_out_3, next_out=>next_out_3, output_state=>output_state_3);   
    fsm_2: entity work.fsm
    generic map (K => 2, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst_2, u_0=>u_0_2, a_in=>a_in_2, ack_in=>ack_in_2, next_in=>next_in_2, a_out=>a_out_2, ack_out=>ack_out_2, next_out=>next_out_2, output_state=>output_state_2);   
    fsm_1: entity work.fsm
    generic map (K => 1, M => 8, N =>4)
    port map (clk=>clk, nRst=>nRst_1, u_0=>u_0_1, a_in=>a_in_1, ack_in=>ack_in_1, next_in=>next_in_1, a_out=>a_out_1, ack_out=>ack_out_1, next_out=>next_out_1, output_state=>output_state_1);     
    
    a_in_7 <= a_out_6;
    nRst_7 <= ack_out_6;
    ack_in_7  <= ack_out_6;
    next_in_6 <= next_out_7;    
    
    a_in_6 <= a_out_5;  
    nRst_6 <= ack_out_5;  
    ack_in_6  <= ack_out_5;
    next_in_5 <= next_out_6;
    
    a_in_5 <= a_out_4;   
    nRst_5 <= ack_out_4;
    ack_in_5  <= ack_out_4;
    next_in_4 <= next_out_5;    
    
    a_in_4 <= a_out_3;  
    nRst_4 <= ack_out_3;
    ack_in_4  <= ack_out_3;
    next_in_3 <= next_out_4;    
    
    a_in_3 <= a_out_2;   
    nRst_3 <= ack_out_2;
    ack_in_3  <= ack_out_2;
    next_in_2 <= next_out_3;
       
    a_in_2 <= a_out_1;     
    nRst_2 <= ack_out_1;
    ack_in_2 <= ack_out_1; 
    next_in_1 <= next_out_2;
    

    clock_process: process
    begin
         clk <= '0';
         wait for 10 ns;
         clk <= '1';
         wait for 10 ns;
    end process;
    
    process is
    begin
        nRst_7 <= '1';
        nRst_6 <= '1';
        nRst_5 <= '1';
        nRst_4 <= '1';
        nRst_3 <= '1';
        nRst_2 <= '1';
        nRst_1 <= '1';
        wait for 50 ns;
        a_in_1 <= "0001"; -- [8. 4. 1. 3. 6. 2. 7. (5.)]
        u_0_7  <= "0001";
        u_0_6  <= "0001";
        u_0_5  <= "0001";
        u_0_4  <= "0001";
        u_0_3  <= "0001";
        u_0_2  <= "0001";
        u_0_1  <= "0001";
        wait for 50 ns;
        nRst_1 <= '0';
        wait until output_state_7 = "111";
        wait;
    end process; 
    
end architecture;