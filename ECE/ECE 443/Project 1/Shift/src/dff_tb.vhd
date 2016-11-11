-- Daniel Sciortino
-- ODU ECE 443 - Computer Architecture
-- Testbench for dff

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY testbench IS
END ENTITY;

ARCHITECTURE testbench OF testbench IS
  COMPONENT shiftRegister IS
    PORT(d: in std_logic;
         q: out std_logic);
  END COMPONENT;

  SIGNAL d_tb: std_logic := '0';
  SIGNAL q_tb: std_logic;

BEGIN

  uut: shiftRegister
    PORT MAP(d => d_tb,
             q => q_tb);

              d_tb <= NOT d_tb after 20 ns;
 END ARCHITECTURE;
