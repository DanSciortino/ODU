--Daniel Sciortino
--ODU ECE 443 Computer Architecture
--Test bench to verify the functionality of the full adder

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fulladder_tb IS
END ENTITY;


ARCHITECTURE behavior OF fullAdder_tb IS

SIGNAL a,b,cIn,s,cOut: STD_LOGIC := '0';

COMPONENT fullAdder IS 
	PORT(a,b,cIn: IN STD_LOGIC;
		s,cOut: OUT STD_LOGIC);
END COMPONENT;


BEGIN
	
uut: fullAdder PORT MAP(a => a,
						b => b,
						cIn => cIN,
						s => s,
						cOut => cOut);
						
test: PROCESS
BEGIN
a <= NOT a AFTER 25 NS;
b <= NOT b AFTER 50 NS;
cIn <= NOT cIN AFTER 100 NS;
	WAIT;
END PROCESS;

END ARCHITECTURE;
