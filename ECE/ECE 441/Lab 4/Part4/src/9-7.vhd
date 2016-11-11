library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Memory is
  port(CS, WE, Clk: in std_logic;
  ADDR: in unsigned(31 downto 0); 
  Mem_in: in unsigned(31 downto 0);
  Mem_out: out unsigned(31 downto 0));
end Memory;

architecture Internal of Memory is
type RAMtype is array (0 to 1023) of unsigned(31 downto 0); --10 bits
-- Values = 2,3,5,7,11 --13 missing
-- Weights = 17,19,23,29,31
-- Others = 0
-- 750/119 = 6
signal RAM1: RAMtype := 
(
0	=> x"21080100",
1	=> x"21290101",
2	=> x"214a0102",
3	=> x"216b0103",
4	=> x"218c0104",
5	=> x"21ad0200",
6	=> x"21ce0201",
7	=> x"21ef0202",
8	=> x"23180203",
9	=> x"23390204",
10	=> x"8d080000",
11	=> x"8d290000",
12	=> x"8d4a0000",
13	=> x"8d6b0000",
14	=> x"8d8c0000",
15	=> x"8dad0000",
16	=> x"8dce0000",
17	=> x"8def0000",
18	=> x"8f180000",
19	=> x"8f390000",
20	=> x"010D0018",
21	=> x"00004012",
22	=> x"012E0018",
23	=> x"00004812",
24	=> x"014F0018",
25	=> x"00005012",
26	=> x"01780018",
27	=> x"00005812",
28	=> x"01990018",
29	=> x"00006012",
30	=> x"01094020",
31	=> x"010a4020",
32	=> x"010b4020",
33	=> x"010c4020",
34	=> x"01ae6820",
35	=> x"01af6820",
36	=> x"01b86820",
37	=> x"01b96820",
38	=> x"010D001A",
39	=> x"00004012",
40	=> x"33390000",
41	=> x"233900ff",
42	=> x"af280000",

256 => x"00000002",
257 => x"00000003",
258 => x"00000005",
259 => x"00000007",
260 => x"0000000B", 
512 => x"00000011",
513 => x"00000013",
514 => x"00000017",
515 => x"0000001D",
516 => x"0000001F", 
others => (others => '0'));
  signal output: unsigned(31 downto 0);
begin
  --Mem_Bus <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" when CS = '0' or WE = '1'
  --else output;
  process(Clk)
  begin
    if Clk = '0' and Clk'event then
      if CS = '1' and WE = '1' then
        RAM1(to_integer(ADDR(9 downto 0))) <= Mem_in;
      end if;
    --output <= RAM1(to_integer(ADDR(9 downto 0)));	 
	Mem_out <= RAM1(to_integer(ADDR(9 downto 0)));
    end if;
  end process;
end Internal;