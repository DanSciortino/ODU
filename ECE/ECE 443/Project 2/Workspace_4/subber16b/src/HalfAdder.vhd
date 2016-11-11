-- Daniel Sciortino
-- ECE 443 - Computer Architecture
-- 
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY halfAdder IS 
	PORT(a,b: IN STD_LOGIC;
		c,s: OUT STD_LOGIC);
END ENTITY;

--
-- Defining the structure of the Half Adder
ARCHITECTURE structure OF halfAdder IS

--
-- Component declaration
	COMPONENT xor2 IS
		PORT(a,b: IN STD_LOGIC;
		o: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT and2 IS
		PORT(a,b: IN STD_LOGIC;
		o: OUT STD_LOGIC);
	END COMPONENT;
	
BEGIN

	--
	-- Component Instantiation
	x1: xor2 PORT MAP(a,b,s);
	a1: and2 PORT MAP(a,b,c);
	
END ARCHITECTURE;