library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity example_generic is
  generic (
    g_DEBUG      : natural := 1;        -- 0 = no debug, 1 = print debug
    g_IMAGE_ROWS : natural := 16;
    g_IMAGE_COLS : natural := 10
    );
end example_generic;
 
architecture behave of example_generic is
 
  constant c_CLK_PERIOD : time := 10 ns;  -- 100 MHz
 
  signal r_CLK_TB : std_logic := '0';
   
  signal r_ROW : natural range 0 to g_IMAGE_ROWS := 0;
  signal r_COL : natural range 0 to g_IMAGE_COLS := 0;
   
begin
 
  -- Generates a clock that is used by this example, NOT synthesizable
  p_CLK : process
  begin
    r_CLK_TB <= not(r_CLK_TB);
    wait for c_CLK_PERIOD/2;
  end process p_CLK;
   
 
  -- Keeps track of row/col counters, limits set by generics
  -- This process is synthesizable
  p_IMAGE : process (r_CLK_TB)
  begin
    if rising_edge(r_CLK_TB) then
      if (r_ROW = g_IMAGE_ROWS-1 and r_COL = g_IMAGE_COLS-1) then
        r_ROW <= 0;
        r_COL <= 0;
      elsif r_COL = g_IMAGE_COLS-1 then
        r_ROW <= r_ROW + 1;
        r_COL <= 0;
      else
        r_COL <= r_COL + 1;
      end if;
    end if;
  end process;
 
 
  -- Prints debug statements if g_DEBUG is set to 1. (not synthesizable)
  p_DEBUG : process (r_CLK_TB)
  begin
    if rising_edge(r_CLK_TB) then
      if g_DEBUG = 1 then
        report ("ROW = "  & natural'image(r_ROW) &
                " COL = " & natural'image(r_COL)) severity note;
      end if;
    end if;
  end process;
   
end behave;