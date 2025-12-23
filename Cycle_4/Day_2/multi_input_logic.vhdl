library IEEE;
use IEEE.std_logic_1164.all;

entity logic_block is
port (
    A : in std_logic;
    B : in std_logic;
    C : in std_logic;
    D : in std_logic;
    Y : out std_logic
);

end logic_block;

architecture RTL of logic_block is
begin
    Y = (A and B) or (C and D);
end RTL;
