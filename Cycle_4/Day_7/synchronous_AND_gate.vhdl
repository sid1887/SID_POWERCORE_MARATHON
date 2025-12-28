library IEEE;
use IEEE.std_logic_1164.ALL;

entity and_gate is
port (
    A : in std_logic;
    B : in std_logic;
    CLK : in std_logic;
    RST : in std_logic;
    Y : out std_logic
);
end and_gate;

architecture behavioral of and_gate is
begin
process(CLK, RST)
begin
if RST = '1' then
Y <= 0;
elsif rising_edge(CLK) then
Y <= A and B;
end if;
end process;

end behavioral
