-- Daniel Sciortino
-- ECE 443 Computer Architecture
-- Implementing 1 port NOT gate

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY dff IS
	PORT(e,d: IN STD_LOGIC;
	q: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE structure OF dff IS

COMPONENT dlatch IS
	  PORT(e,d: IN STD_LOGIC;
      q: OUT STD_LOGIC);
END COMPONENT dlatch;

COMPONENT not1 IS
	  PORT(a: IN STD_LOGIC;
      y: OUT STD_LOGIC);
END COMPONENT not1;

SIGNAL i: STD_LOGIC_VECTOR (0 to 1);
BEGIN
	
	n: not1 PORT MAP(e, i(0));
	master: dlatch PORT MAP(i(0),d,i(1));
	slave: dlatch PORT MAP(e,i(1),q);
	
END ARCHITECTURE;
	