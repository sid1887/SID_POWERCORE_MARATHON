library IEEE;
use IEEE.std_logic_1164.all;

entity mux2 is
port (
    A : in std_logic;
    B : in std_logic;
    S : in std_logic;
    Y : out std_logic
);
end mux2;

architecture RTL of mux2 is
begin
    Y <= A when S ='0' else B;
end RTL;
