-- Daniel Sciortino
-- ECE 443 - Computer Architecture
-- 2 input OR gate with propagation delay
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY or2 IS 
	PORT(a,b: IN STD_LOGIC;
		o: OUT STD_LOGIC);
END ENTITY;

-- 
-- defining the behavior of an OR gate
ARCHITECTURE behavior OF or2 IS
BEGIN
	o <= a OR b AFTER 10NS;
END ARCHITECTURE;