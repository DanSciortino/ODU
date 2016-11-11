-- Daniel Sciortino
-- ECE 443 - Computer Architecture
-- 2 input and gate with propagation delay
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY and2 IS 
	PORT(a,b: IN STD_LOGIC;
		o: OUT STD_LOGIC);
END ENTITY;

--
-- Defining the behavior of the AND gate
ARCHITECTURE behavior OF and2 IS
BEGIN
	o <= a AND b AFTER 10 NS;
END ARCHITECTURE;