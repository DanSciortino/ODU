library ieee ;
use ieee.std_logic_1164.all;

---------------------------------------------

entity HalfAdder is
port(	  
	A, B	:	in std_logic;
	S, C	:	out std_logic
);
end HalfAdder;

architecture Structural of HalfAdder is
begin
	-- Implement the Half Adder using an XOR gate and an AND gate
	S <= A XOR B after 10 ns;
	C <= A AND B after 10 ns;
end architecture; 