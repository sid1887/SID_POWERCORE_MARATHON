library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comb_adder is
port (
    a0, a1, a2, a3 : in unsigned (3 downto 0);
    sum : out unsigned (5 downto 0)
);
end entity;

architecture rtl of comb_adder is
begin
sum <= a0 + a1 + a2 + a3;
end architecture;
