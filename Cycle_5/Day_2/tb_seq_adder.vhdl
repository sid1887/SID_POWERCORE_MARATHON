library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_seq_adder is
end entity;

architecture sim of tb_seq_adder is

  -- DUT signals
  signal clk : std_logic := '0';
  signal rst : std_logic := '1';
  signal a   : unsigned(3 downto 0) := (others => '0');
  signal sum : unsigned(5 downto 0);

begin

  ----------------------------------------------------------------
  -- DUT instantiation
  ----------------------------------------------------------------
  dut : entity work.seq_adder
    port map (
      clk => clk,
      rst => rst,
      a   => a,
      sum => sum
    );

  ----------------------------------------------------------------
  -- Clock generation (20 ns period)
  ----------------------------------------------------------------
  clk_process : process
  begin
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
  end process;

  ----------------------------------------------------------------
  -- Stimulus process
  ----------------------------------------------------------------
  stim_process : process
  begin
    -- Hold reset for 2 clocks
    rst <= '1';
    wait for 40 ns;

    rst <= '0';

    -- Apply inputs every clock
    a <= to_unsigned(1, 4);   -- cycle 1
    wait for 20 ns;

    a <= to_unsigned(2, 4);   -- cycle 2
    wait for 20 ns;

    a <= to_unsigned(3, 4);   -- cycle 3
    wait for 20 ns;

    a <= to_unsigned(4, 4);   -- cycle 4
    wait for 20 ns;

    -- Stop simulation
    wait;
  end process;

end architecture;
