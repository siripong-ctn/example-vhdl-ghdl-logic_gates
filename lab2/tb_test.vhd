library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_test is
end tb_test;

architecture Behavioral of tb_test is

component test

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
end component;

signal D0,D1,D2,D3,D4,D5,D6,D7,D8,D9 : STD_LOGIC := '0';

signal seg_a,seg_b,seg_c,
       seg_d,seg_e,seg_f,seg_g : STD_LOGIC;

begin

UUT : test
port map(
    D0=>D0, D1=>D1, D2=>D2, D3=>D3, D4=>D4,
    D5=>D5, D6=>D6, D7=>D7, D8=>D8, D9=>D9,
    seg_a=>seg_a,
    seg_b=>seg_b,
    seg_c=>seg_c,
    seg_d=>seg_d,
    seg_e=>seg_e,
    seg_f=>seg_f,
    seg_g=>seg_g
);

stim_proc : process
begin

    D0<='1'; wait for 20 ns;
    D0<='0';

    D1<='1'; wait for 20 ns;
    D1<='0';

    D2<='1'; wait for 20 ns;
    D2<='0';

    D3<='1'; wait for 20 ns;
    D3<='0';

    D4<='1'; wait for 20 ns;
    D4<='0';

    D5<='1'; wait for 20 ns;
    D5<='0';

    D6<='1'; wait for 20 ns;
    D6<='0';

    D7<='1'; wait for 20 ns;
    D7<='0';

    D8<='1'; wait for 20 ns;
    D8<='0';

    D9<='1'; wait for 20 ns;
    D9<='0';

    wait;

end process;

end Behavioral;