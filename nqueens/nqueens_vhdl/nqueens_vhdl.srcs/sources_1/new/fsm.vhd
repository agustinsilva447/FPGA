library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
    generic (
        K : integer := 7; -- position of the block
        M : integer := 8; -- size of the board MxM
        N : integer := 3  -- N bits required to count upto M
    );    
    port(
        clk, reset : in std_logic;
        x : in std_logic; 
        z_moore_glitch : out std_logic
    );
end entity;

architecture arch of fsm is
type stateType_moore is (zero_moore, one_moore, two_moore, three_moore);
signal state_reg_moore, state_next_moore : stateType_moore;     
signal z_moore : std_logic;
begin 
    process(clk, reset)
    begin 
        if reset = '1' then
            state_reg_moore <= zero_moore; 
        elsif rising_edge(clk) then
            state_reg_moore <= state_next_moore;
        end if; 
    end process; 
        
    process(state_reg_moore, x) 
    begin 
        z_moore <= '0'; 
        state_next_moore <= state_reg_moore;
        case state_reg_moore is 
            when zero_moore => 
                if x = '1' then 
                    state_next_moore <= one_moore;
                end if; 
            when one_moore => 
                if x = '1' then 
                    state_next_moore <= two_moore;
                else 
                    state_next_moore <= zero_moore;
                end if;
            when two_moore =>
                if x = '0' then
                    state_next_moore <= three_moore; 
                end if;
            when three_moore =>
                z_moore <= '1';
                if x = '0' then 
                    state_next_moore <= zero_moore; 
                else
                    state_next_moore <= one_moore;
                end if;
        end case;
    end process;     
z_moore_glitch <= z_moore;
end architecture; 