library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm is
   generic(
      PWM_BITS : natural := 16
   );
   port (
      clk_i :  in std_logic;
      rst_i :  in std_logic;
      ena_i :  in std_logic;
      duty_cycle_i : in std_logic_vector(PWM_BITS-1 downto 0);
      pwm_o : out std_logic
   );
end entity pwm;

architecture Behavioral of pwm is
   type state_type is (RESET_S, ACTIVE_S, ZERO_S);
   signal state, next_state : state_type;
   signal count, next_count : unsigned(PWM_BITS-1 downto 0) := (others => '0');
   signal limit_r           : unsigned(PWM_BITS-1 downto 0);
   signal pwm               : std_logic;
begin

   -- synchronic process
   do_sync: process(???)
   begin
      if rising_edge(???) then
         if rst_i = '1' then
            state <= RESET_S;
            count <= (others => '0');
         elsif ena_i = '1' then
            state <= next_state;
            count <= next_count;
         end if;
      end if;
   end process do_sync;

   -- next state logic
   do_future_state: process(state, count, duty_cycle_i)
   begin
      next_state <= state;
      case(state) is
         when RESET_S =>
            next_count <= count;
            next_state <= ACTIVE_S;
            limit_r    <= unsigned(duty_cycle_i);
         when ACTIVE_S =>
            next_count <= count + 1;
            if count >= limit_r-1 then
               next_state <= ???;
            end if;
         when ZERO_S =>
            next_count <= count + 1;
            if count = 2**PWM_BITS-1 then -- MAX value
               next_state <= ACTIVE_S;
            end if;
         when others =>
            next_state <= RESET_S;
      end case;
   end process do_future_state;

   -- output process
   do_output: process(state)
   begin
      case(state) is
         when RESET_S =>
            pwm <= '0';
         when ??? =>
            pwm <= '1';
         when ZERO_S =>
            pwm <= '0';
         when others =>
            pwm <= '0';
      end case;
   end process do_output;

end architecture Behavioral;
