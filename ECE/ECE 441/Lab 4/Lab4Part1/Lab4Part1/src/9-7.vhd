library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Memory is
  port(CS, WE, Clk: in std_logic;
       ADDR: in unsigned(31 downto 0);
       Mem_Bus: inout unsigned(31 downto 0));
end Memory;

architecture Internal of Memory is
type RAMtype is array (0 to 1023) of unsigned(31 downto 0); --10 bits
-- Values = 2,3,5,7,11 --13 missing
-- Weights = 17,19,23,29,31
-- Others = 0
-- 750/119 = 9
  signal RAM1: RAMtype := (256 => x"00000002",257 => x"00000003",258 => x"00000005",259 => x"00000007",260 => x"0000000B", 512 => x"00000011",513 => x"00000013",514 => x"00000017",515 => x"0000001D",516 => x"0000001F", others => (others => '0'));
  signal output: unsigned(31 downto 0);
begin
  Mem_Bus <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" when CS = '0' or WE = '1'
    else output;
  process(Clk)
  begin
    if Clk = '0' and Clk'event then
      if CS = '1' and WE = '1' then
        RAM1(to_integer(ADDR(9 downto 0))) <= Mem_Bus;
      end if;
    output <= RAM1(to_integer(ADDR(9 downto 0)));
    end if;
  end process;
end Internal;