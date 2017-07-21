-- Implement the 256 address x 16 bit RAM 
-- May be implemented behaiorally using arrays	 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_Std.all;

entity RAM is
  port (
    clk		: in  std_logic;
    WE      : in  std_logic; -- Write Enabled
    address : in  std_logic_vector(15 downto 0);
    DataIn  : in  std_logic_vector(15 downto 0);
    DataOut : out std_logic_vector(15 downto 0)
  );
end entity RAM;

architecture behavioral of RAM is

   type ram_type is array (0 to 255) of std_logic_vector(15 downto 0);
   signal memory : ram_type := ((others=> (others=>'0')));
   signal read_address : std_logic_vector(15 downto 0);

begin

  RamProc: process(clk) is
  begin
    if rising_edge(clk) then
      if WE = '1' then
        memory(to_integer(unsigned(address))) <= DataIn; -- We are writting so write DataIn to the Addressed location
      end if;
      read_address <= address;
    end if;
  end process RamProc;

  dataout <= memory(to_integer(unsigned(read_address))); --Just read every time, other parts will ignore it if not needed

end architecture behavioral;