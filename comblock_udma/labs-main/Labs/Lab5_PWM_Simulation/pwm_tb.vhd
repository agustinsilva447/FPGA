library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library STD;
use STD.textio.all;

entity pwm_tb is
end entity pwm_tb;

architecture Behavioral of pwm_tb is

   constant PERIOD     : time     := 20 ns; -- 50 MHz
   constant PWM_BITS   : natural  := 3;
   constant TOT_CYCLES : natural  := 2**PWM_BITS;
   constant ACT_CYCLES : positive := 5;

   signal clk          : std_logic:='1';
   signal rst          : std_logic;
   signal ena          : std_logic;
   signal pwm          : std_logic;
   signal stop         : boolean := FALSE;
   signal duty_cycle   : std_logic_vector(PWM_BITS-1 downto 0);

begin

   -- Write the clock generation here
   ???

   -- Write the reset generaion here
   ???

   uut : entity work.pwm
   generic map(
      PWM_BITS => PWM_BITS
   )
   port map(
      clk_i => clk,
      rst_i => rst,
      ena_i => ena,
      duty_cycle_i => duty_cycle,
      pwm_o => pwm
   );

   do_test: process
      variable L : LINE;
   begin
      -- Write an start message here (include the current simulation time)
      ???
      -- Set initial input values
      ena <= '0';
      duty_cycle <= std_logic_vector(to_unsigned(ACT_CYCLES,duty_cycle'LENGTH));
      wait until rising_edge(clk);
      wait until rst='0';

      -- Test the initial value
      assert pwm = '0'
         report "Error! PWM Output is not 0 after reset"
            severity failure;
      
      -- Check no PWM output when not enabled
      for i in 0 to 15 loop
         wait until rising_edge(clk);
         assert pwm = '0'
            report "Error! PWM Output is active when not enabled"
               severity failure;
      end loop;

      -- Enable the core
      ena <= '1';
      wait until rising_edge(clk); -- ena is read here

      -- Check PWM active
      for cycle in 1 to ACT_CYCLES loop
         wait until rising_edge(clk);
         --report integer'image(cycle);
         assert pwm = '1'
            report "Error! PWM Output is not active when expected"
               severity failure;
      end loop;

      -- Check PWM inactive
      for cycle in 1 to TOT_CYCLES-ACT_CYCLES loop
         wait until rising_edge(clk);
         --report integer'image(cycle);
         assert pwm = ???
            report "Error! PWM Output is active when not expected"
               severity failure;
      end loop;

      -- Check PWM restart
      wait until rising_edge(clk);
      assert pwm = '1'
         report "Error! PWM Output not restarted"
            severity failure;

      -- Print to STDOUT and finish
      wait until rising_edge(clk);
      -- Write an end message here (include the current simulation time)
      ???
      stop <= true;
      wait;
   end process do_test;

end architecture Behavioral;
