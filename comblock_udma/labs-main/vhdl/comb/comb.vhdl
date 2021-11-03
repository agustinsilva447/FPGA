library IEEE;
use IEEE.std_logic_1164.all;

entity comb is
    port (
        a_i, b_i, c_i, d_i, e_i : in  std_logic;
        q_o : out std_logic
    );
end entity comb;

architecture alt1 of comb is
    signal int1, int2, int3 : std_logic;
begin
    int1 <= a_i and b_i;
    int2 <= c_i or d_i;
    int3 <= d_i and (not e_i);
    q_o <= int1 or int2 or int3;
end architecture alt1;

architecture alt2 of comb is
    signal int1, int2, int3 : std_logic;
begin
    process (
        a_i, b_i, c_i, d_i, e_i,
        int1, int2, int3
    )
    begin
        int1 <= a_i and b_i;
        int2 <= c_i or d_i;
        int3 <= d_i and (not e_i);
        q_o <= int1 or int2 or int3;
    end process;
end architecture alt2;

architecture alt3 of comb is
begin
    process (a_i, b_i, c_i, d_i, e_i)
        variable int1, int2, int3 :
            std_logic;
    begin
        int1 := a_i and b_i;
        int2 := c_i or d_i;
        int3 := d_i and (not e_i);
        q_o <= int1 or int2 or int3;
    end process;
end architecture alt3;
