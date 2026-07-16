library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX16to1 is
    Port (
        D : in  STD_LOGIC_VECTOR(15 downto 0);
        S : in  STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC
    );
end MUX16to1;

architecture Behavioral of MUX16to1 is
begin

    with S select
        Y <= D(0)  when "0000",
             D(1)  when "0001",
             D(2)  when "0010",
             D(3)  when "0011",
             D(4)  when "0100",
             D(5)  when "0101",
             D(6)  when "0110",
             D(7)  when "0111",
             D(8)  when "1000",
             D(9)  when "1001",
             D(10) when "1010",
             D(11) when "1011",
             D(12) when "1100",
             D(13) when "1101",
             D(14) when "1110",
             D(15) when "1111",
             '0'   when others;

end Behavioral;