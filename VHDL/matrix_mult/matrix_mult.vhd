library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all; 

entity matrix_mult is
    port (  Clock: in std_logic; 
            reset : in std_logic;                   --active high reset
            start : in std_logic;                   --A '1' starts the matrix multiplication process.
            A,B : in unsigned(71 downto 0);         --Each matrix has 9 elements each of which is 8 bit wide. So the inputs is 9*8=72 bit long.
            C : out unsigned(71 downto 0);
            done : out std_logic                    --a '1' indicates that multiplication is done and result is availble at C.
            );
end entity;

architecture Behav of matrix_mult is
type matType is array(0 to 2,0 to 2) of unsigned(7 downto 0);
signal matA, matB, matC : matType := (others => (others => X"00"));
type state_type is (init,do_mult,apply_outputs);
signal state : state_type := init;
signal i,j,k : integer := 0;

begin 
    sm : process (Clock,reset)                      --process implementing the state machine for multiplying the matrices.
    variable temp : unsigned(15 downto 0) := (others => '0');
    begin
        if(reset = '1') then
            state <= init;
            i <= 0;
            j <= 0;
            k <= 0;
            done <= '0';
            matA <= (others => (others => X"00"));
            matB <= (others => (others => X"00"));
            matC <= (others => (others => X"00"));
        elsif rising_edge(Clock) then
            case state is
                when init =>                        --the matrices which are in a 1-D array are converted to 2-D matrices first.
                    if(start = '1') then
                        for i in 0 to 2 loop        --run through the rows
                            for j in 0 to 2 loop    --run through the columns
                                matA(i,j) <= A((i*3+j+1)*8-1 downto (i*3+j)*8);
                                matB(i,j) <= B((i*3+j+1)*8-1 downto (i*3+j)*8);
                            end loop;
                        end loop;
                        state <= do_mult;
                    end if;
                when do_mult =>
                    temp := matA(i,k)*matB(k,j);
                    matC(i,j) <= matC(i,j) + temp(7 downto 0);
                    if(k = 2) then
                        k <= 0;
                        if(j = 2) then
                            j <= 0;
                            if (i= 2) then
                                i <= 0;
                                state <= apply_outputs;
                            else
                                i <= i + 1;
                            end if;
                        else
                            j <= j+1;
                        end if;        
                    else
                        k <= k+1;
                    end if;     
                when apply_outputs =>               --convert 3 by 3 matrix into a 1-D matrix.
                    for i in 0 to 2 loop            --run through the rows
                        for j in 0 to 2 loop        --run through the columnss
                            C((i*3+j+1)*8-1 downto (i*3+j)*8) <= matC(i,j);
                        end loop;
                    end loop;   
                    done <= '1';
                    state <= init;  
            end case;
        end if;
    end process; 
end architecture;