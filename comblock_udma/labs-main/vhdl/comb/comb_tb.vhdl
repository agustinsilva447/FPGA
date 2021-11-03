library IEEE;
use IEEE.std_logic_1164.all;

entity comb_tb is
end entity comb_tb;

architecture simul of comb_tb is
    signal a, b, c, d, e : std_logic;
    signal q1, q2, q3    : std_logic;
begin

    comb1: entity work.comb(alt1)
    port map (a_i => a, b_i => b, c_i => c, d_i => d, e_i => e, q_o => q1);

    comb2: entity work.comb(alt2)
    port map (a_i => a, b_i => b, c_i => c, d_i => d, e_i => e, q_o => q2);

    comb3: entity work.comb(alt3)
    port map (a_i => a, b_i => b, c_i => c, d_i => d, e_i => e, q_o => q3);

    do_test : process
    begin
        report "Start";
        --
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '0';
        e <= '0';
        wait for 1 ns;
        a <= '1';
        wait for 1 ns;
        b <= '1';
        wait for 1 ns;
        assert q1=q2 and q2=q3 report "There was an ERROR (1)";
        a <= '0';
        b <= '0';
        wait for 2 ns;
        c <= '1';
        wait for 1 ns;
        assert q1=q2 and q2=q3 report "There was an ERROR (2)";
        c <= '0';
        wait for 2 ns;
        d <= '1';
        wait for 1 ns;
        e <= '1';
        wait for 1 ns;
        assert q1=q2 and q2=q3 report "There was an ERROR (3)";
        d <= '0';
        e <= '0';
        wait for 2 ns;
        --
        report "End";
        wait;
    end process do_test;

end architecture simul;
