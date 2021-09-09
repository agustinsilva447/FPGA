library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
generic(K: integer := 7; -- position of the block (starting from zero)
        N: integer := 3  -- N+1 bits required to count upto size of the board);
    );    
port(
    clk: in std_logic;
    nRst: in std_logic;                                            -- Negative reset
    a_in: in std_logic_vector(((K + 1) * (N + 1) - 1) downto 0);   -- vector a del bloque anterior
    a_out: out std_logic_vector((K * (N + 1) - 1) downto 0)        -- vector a del bloque siguiente    
    );                         
end entity;

architecture rtl of fsm is
type t_State is (new_candidate, validation, output);
signal State: t_State; 
signal u, u_0: std_logic_vector(N downto 0);
signal ce, complete_tick, valid, done: std_logic := '0';
begin    
    dut: entity work.up_counter port map (clk => clk, ce => ce, reset=>nRst, u_0=>u_0, complete_tick => complete_tick, count => u);
    logic: entity work.ctrl_logic port map (clk => clk, reset => nRst, a => a_in, u => u, valid => valid, done => done);
    process(clk) is
    begin
        if rising_edge(clk) then
            if nRst = '0' then
                State   <= new_candidate;
                a_out <= (others => '0');
                u_0 <= (others => '0');
                u <= (others => '0');
            else
                case State is
                    when new_candidate =>
                        
                    when validation =>
                    
                    when output =>
                    
                end case;
            end if;
        end if;
    end process;
end architecture;