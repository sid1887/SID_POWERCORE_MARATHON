library IEEE;
use IEEE.std_logic_1164.all;

entity reg1 is
port (
    clk : in std_logic;
    D : in std_logic;
    Q : out std_logic
);
end reg1;

architecture RTL of reg1 is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            Q <= D;
        end if;
    end process;
end RTL;
