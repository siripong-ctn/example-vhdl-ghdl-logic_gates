library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test is
    Port (
        D0 : in STD_LOGIC;
        D1 : in STD_LOGIC;
        D2 : in STD_LOGIC;
        D3 : in STD_LOGIC;
        D4 : in STD_LOGIC;
        D5 : in STD_LOGIC;
        D6 : in STD_LOGIC;
        D7 : in STD_LOGIC;
        D8 : in STD_LOGIC;
        D9 : in STD_LOGIC;

        seg_a : out STD_LOGIC;
        seg_b : out STD_LOGIC;
        seg_c : out STD_LOGIC;
        seg_d : out STD_LOGIC;
        seg_e : out STD_LOGIC;
        seg_f : out STD_LOGIC;
        seg_g : out STD_LOGIC
    );
end test;
architecture Behavioral of test is
signal A,B,C,D : std_logic;
signal na,nb,nc,nd : std_logic;

begin
--------------------------------------------------
-- Encoder
--------------------------------------------------

A <= D8 or D9;
B <= D4 or D5 or D6 or D7;
C <= D2 or D3 or D6 or D7;
D <= D1 or D3 or D5 or D7 or D9;

--------------------------------------------------
-- NOT Gate
--------------------------------------------------

NA <= not A;
NB <= not B;
NC <= not C;
ND <= not D;

--------------------------------------------------
-- Decoder
--------------------------------------------------

seg_a <= A or C or (B and D) or (NB and ND);

seg_b <= NB or (C and D) or (NC and ND);

seg_c <= B or NC or D;

seg_d <= A or (NB and C) or (NB and ND) or (C and ND) or (B and NC and D);
  
seg_e <= (NB and ND) or (C and ND);

seg_f <= A or (B and NC) or (C and ND) or (NC and ND);

seg_g <= A or (NB and C) or (B and NC) or (B and ND);

end Behavioral;