-- Daniel Sciortino
-- ECE 443 Computer Architecture
-- Implementing 2 port AND gate

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--
-- specifing the ports for the AND gate
ENTITY and2 IS
  PORT(a,b:IN STD_LOGIC;
      y: OUT STD_LOGIC);
END ENTITY;

--
--Defining the behavior of the AND gate
ARCHITECTURE behavior OF and2 IS
BEGIN
    y <= a AND b;
END ARCHITECTURE;
