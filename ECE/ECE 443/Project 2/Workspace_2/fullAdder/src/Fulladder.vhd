-- Daniel Sciortino
-- ECE 443 - Computer Architecture
-- Full adder made structurally
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fullAdder IS 
	PORT(a,b,cIn: IN STD_LOGIC;
		s,cOut: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE structure OF fullAdder IS
SIGNAL i: STD_LOGIC_VECTOR (0 TO 2) := (OTHERS => '0');

COMPONENT or2 IS 
	PORT(a,b: IN STD_LOGIC;
		o: OUT STD_LOGIC);
END COMPONENT;

COMPONENT xor2 IS 
	PORT(a,b: IN STD_LOGIC;
		o: OUT STD_LOGIC);
END COMPONENT;

COMPONENT and2 IS 
	PORT(a,b: IN STD_LOGIC;
		o: OUT STD_LOGIC);
END COMPONENT;

COMPONENT halfAdder IS 
	PORT(a,b: IN STD_LOGIC;
		c,s: OUT STD_LOGIC);
END COMPONENT;

BEGIN
	
x1: xor2 PORT MAP(a,b,i(0));
ha: halfAdder PORT MAP(i(0),cIn,i(1),s);
a1: and2 PORT MAP(a,b,i(2));
o1: or2 PORT MAP(i(1),i(2),cOut);

END ARCHITECTURE;