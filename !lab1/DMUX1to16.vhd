library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMUX1to16 is
    Port (
        D : in STD_LOGIC;
        S : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(15 downto 0)
    );
end DMUX1to16;

architecture GateLevel of DMUX1to16 is
begin

    Y(0)  <= D and (not S(3)) and (not S(2)) and (not S(1)) and (not S(0));
    Y(1)  <= D and (not S(3)) and (not S(2)) and (not S(1)) and      S(0);
    Y(2)  <= D and (not S(3)) and (not S(2)) and      S(1)  and (not S(0));
    Y(3)  <= D and (not S(3)) and (not S(2)) and      S(1)  and      S(0);

    Y(4)  <= D and (not S(3)) and      S(2)  and (not S(1)) and (not S(0));
    Y(5)  <= D and (not S(3)) and      S(2)  and (not S(1)) and      S(0);
    Y(6)  <= D and (not S(3)) and      S(2)  and      S(1)  and (not S(0));
    Y(7)  <= D and (not S(3)) and      S(2)  and      S(1)  and      S(0);

    Y(8)  <= D and      S(3)  and (not S(2)) and (not S(1)) and (not S(0));
    Y(9)  <= D and      S(3)  and (not S(2)) and (not S(1)) and      S(0);
    Y(10) <= D and      S(3)  and (not S(2)) and      S(1)  and (not S(0));
    Y(11) <= D and      S(3)  and (not S(2)) and      S(1)  and      S(0);

    Y(12) <= D and      S(3)  and      S(2)  and (not S(1)) and (not S(0));
    Y(13) <= D and      S(3)  and      S(2)  and (not S(1)) and      S(0);
    Y(14) <= D and      S(3)  and      S(2)  and      S(1)  and (not S(0));
    Y(15) <= D and      S(3)  and      S(2)  and      S(1)  and      S(0);

end GateLevel;