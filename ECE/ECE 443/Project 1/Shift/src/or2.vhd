-- Daniel Sciortino
-- ECE 443 Computer Architecture
-- Implementing 2 port OR gate

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--
-- Specifing the ports for the OR gate
ENTITY or2 IS
  PORT(a,b: IN STD_LOGIC;
      y: OUT STD_LOGIC);
END ENTITY;

--
-- Defining the behavior for the OR gate
ARCHITECTURE behavior OF or2 is
BEGIN
    y <= a or b;
END ARCHITECTURE;
