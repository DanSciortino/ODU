-- Daniel Sciortino
-- ECE 443 - Computer Architecture
-- n bit multiplier
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY multiplier IS 
	PORT
	(
	a,b: UNSIGNED (15 DOWNTO 0);
	s: OUT UNSIGNED (31 DOWNTO 0);
	overflow: OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE behavior OF multiplier IS
BEGIN
	PROCESS(a,b)
	BEGIN
		s <= a * b;
		IF (s'LENGTH > 16) THEN
			overflow <= '1';
		END IF;
	END PROCESS;
END ARCHITECTURE;