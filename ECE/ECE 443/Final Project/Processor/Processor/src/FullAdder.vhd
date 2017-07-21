library ieee ;
use ieee.std_logic_1164.all;

---------------------------------------------

entity FullAdder is
port(	  
	A, B, Cin	:	in std_logic;
	S, Cout		:	out std_logic

);
end FullAdder;

architecture Structural of FullAdder is
signal s1, c1, c2 : std_logic := '0';

Component HalfAdder
	port (
		A, B	:	in std_logic;
		S, C	:	out std_logic
	);
end component;

begin
	-- Implement the full adder using two half adders and an OR gate
	HA1: HalfAdder port map (A,B,s1,c1);
	HA2: HalfAdder port map (Cin,s1,S,c2);
	Cout <= c1 OR c2 after 10 ns;
end architecture; 