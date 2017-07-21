library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------------------------------------

entity Multiplier_16 is
port(	  
	A, B		:	in std_logic_vector(15 downto 0);
	S			:	out std_logic_vector(15 downto 0);
	overflow	:	out std_logic := '0'
);
end Multiplier_16;

architecture Behavioral of Multiplier_16 is

signal product : signed(31 downto 0);
signal TooBig : signed(31 downto 0) := X"00010000";

begin
	-- Convert the operands to signed integers and then multiply
	product <= signed(A) * signed(B);

	-- Check for overflow	
	overflow <= '1' when product >= TooBig else
				'0';

	-- Convert back to bit vector
	S <= std_logic_vector(product(15 downto 0));
end architecture; 