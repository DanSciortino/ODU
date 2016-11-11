-- Daniel Sciortino
-- ODU ECE 443 - Computer Architecture
-- Testbench for dff

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY testbench IS
END ENTITY;

ARCHITECTURE testbench OF testbench IS
  COMPONENT dff IS
    PORT(e,d: in std_logic;
         q,notQ: out std_logic);
  END COMPONENT;

  SIGNAL e_tb, d_tb: std_logic := '0';
  SIGNAL q_tb: std_logic;

BEGIN

  uut: dff
    PORT MAP(e => e_tb,
             d => d_tb,
             q => q_tb);

             e_tb <= NOT e_tb after 30 ns;
             d_tb <= NOT d_tb after 60 ns;
 END ARCHITECTURE;
