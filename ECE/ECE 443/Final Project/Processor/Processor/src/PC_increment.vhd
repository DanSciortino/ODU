library ieee ;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

---------------------------------------------

entity PC_increment is
port(	  
	PC		:	in std_logic_vector(4 downto 0);
	PC_next	:	out std_logic_vector(4 downto 0)
);
end PC_increment;

architecture Behavioral of PC_increment is
begin
	PC_next <= std_logic_vector(to_unsigned(to_integer(unsigned(PC)) + 1,5));
end architecture; 