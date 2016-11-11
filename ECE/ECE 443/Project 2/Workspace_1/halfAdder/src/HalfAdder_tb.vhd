--Daniel Sciortino
--ODU ECE 443 Computer Architecture
--Test bench to verify the functionality of the half adder

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY halfadder_tb IS
END ENTITY;


ARCHITECTURE behavior OF halfAdder_tb IS

SIGNAL a,b,c,s: STD_LOGIC := '0';

COMPONENT  halfAdder IS 
	PORT(a,b: IN STD_LOGIC;
		c,s: OUT STD_LOGIC);
END COMPONENT;


BEGIN
	
uut: halfAdder PORT MAP(a => a,
						b => b,
						c => c,
						s => s);
						
test: PROCESS
BEGIN
	WAIT FOR 25 NS;
	a <= NOT a;
	WAIT FOR 50 NS;
	b <= NOT b;
	WAIT;
END PROCESS;

END ARCHITECTURE;
