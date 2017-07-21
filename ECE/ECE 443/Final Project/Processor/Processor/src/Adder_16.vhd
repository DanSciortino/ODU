library ieee ;
use ieee.std_logic_1164.all;

---------------------------------------------

entity Adder_16 is
port(	  
	A, B	:	in std_logic_vector(15 downto 0);
	S		:	out std_logic_vector(15 downto 0);
	Cout	:	out std_logic
);
end Adder_16;

architecture Structural of Adder_16 is

Component HalfAdder
	port (
		A, B	:	in std_logic;
		S, C	:	out std_logic
	);
end component;

Component FullAdder
	port (
	A, B, Cin	:	in std_logic;
	S, Cout		:	out std_logic
	);
end component;

signal CarryBit : std_logic_vector(15 downto 0);

begin
	-- Implement the 16 bit adder using a generate statment to create the array of 16 adders
	AdderGenerate: for I in 0 to 15 generate 	-- 16 bits
    	HA : if I=0 generate					-- For the zeroith bit use a half adder (no carry in)
    		LowerBit: HalfAdder port map (A(I),B(I),S(I),CarryBit(I));
    	end generate HA;
    	FA : if I>0 generate					-- For the other bits use a full adder with the prevous Carry out as this carry in
    		UpperBit: FullAdder port map (A(I),B(I),CarryBit(I-1),S(I),CarryBit(I));
    	end generate FA;
    end generate AdderGenerate;

    -- Map the carry bit for the entire adder
    Cout <= CarryBit(15);
end architecture; 