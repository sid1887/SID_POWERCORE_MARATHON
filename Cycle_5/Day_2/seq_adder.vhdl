library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seq_adder is
  port (
    clk   : in  std_logic;
    rst   : in  std_logic;
    a     : in  unsigned(3 downto 0);
    sum   : out unsigned(5 downto 0)
  );
end entity;

architecture rtl of seq_adder is
  signal acc : unsigned(5 downto 0) := (others => '0');
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        acc <= (others => '0');
      else
        acc <= acc + a;   -- SAME adder reused every clock
      end if;
    end if;
  end process;

  sum <= acc;
end architecture;
