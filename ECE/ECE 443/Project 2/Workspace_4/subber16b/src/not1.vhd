-- Daniel Sciortino
-- ECE 443 - Computer Architecture
-- not gate structure
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY not1 IS
	PORT
  (
  a: IN STD_LOGIC;
  b: OUT STD_LOGIC
  );
END ENTITY;

ARCHITECTURE structure OF not1 IS
BEGIN
	b <= NOT a AFTER 10ns;
END ARCHITECTURE;
