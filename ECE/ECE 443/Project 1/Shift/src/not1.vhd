-- Daniel Sciortino
-- ECE 443 Computer Architecture
-- Implementing 1 port NOT gate

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--
-- Specifing the ports for the NOT gate
ENTITY not1 IS
  PORT(a: IN STD_LOGIC;
      y: OUT STD_LOGIC);
END ENTITY;

--
-- Defining the behavior for the NOT gate
ARCHITECTURE Behavior OF not1 is
BEGIN
    y <= NOT a;
END ARCHITECTURE;
