-- Daniel Sciortino
-- ECE 443 - Computer Architecture
-- 2 input xor gate with propagation delay
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY xor2 IS 
	PORT(a,b: IN STD_LOGIC;
		o: OUT STD_LOGIC);
END ENTITY;

--
-- Defining the behavior of the XOR gate 
ARCHITECTURE behavior OF xor2 IS
BEGIN
	o <= a XOR b AFTER 10 NS;
END ARCHITECTURE;