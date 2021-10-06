library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.env.finish;

entity ring_buffer_tb is
end ring_buffer_tb; 

architecture sim of ring_buffer_tb is

  constant clock_period : time := 10 ns;

  -- Generics
  constant RAM_WIDTH : natural := 8;
  constant RAM_DEPTH : natural := 16;

  -- DUT signals
  signal clk : std_logic := '1';
  signal rst : std_logic := '1';
  signal wr_en : std_logic := '0';
  signal wr_data : std_logic_vector(RAM_WIDTH - 1 downto 0) := (others => '0');
  signal rd_en : std_logic := '0';
  signal rd_data : std_logic_vector(RAM_WIDTH - 1 downto 0);
  signal empty : std_logic;
  signal empty_next : std_logic;
  signal full : std_logic;
  signal full_next : std_logic;
  signal fill_count : integer range RAM_DEPTH - 1 downto 0;

begin

  DUT : entity work.ring_buffer(rtl)
    generic map (
      RAM_WIDTH => RAM_WIDTH,
      RAM_DEPTH => RAM_DEPTH
    )
    port map (
      clk => clk,
      rst => rst,
      wr_en => wr_en,
      wr_data => wr_data,
      rd_en => rd_en,
      rd_data => rd_data,
      empty => empty,
      empty_next => empty_next,
      full => full,
      full_next => full_next,
      fill_count => fill_count
    );

    clk <= not clk after clock_period / 2;

    PROC_SEQUENCER : process
    begin      
      wait for clock_period;
      rst <= '0';
      wr_en <= '1';
      rd_en <= '0';
      while full = '0' loop
        wr_data <= std_logic_vector(unsigned(wr_data) + 1);
        wait until rising_edge(clk);
      end loop;
      wr_en <= '0';
      rd_en <= '1';
      wait until empty = '1';
      wait for 10 * clock_period;      
      finish;
    end process;
    
end architecture;