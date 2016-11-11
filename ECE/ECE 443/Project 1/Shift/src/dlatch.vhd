-- Daniel Sciortino
-- ECE 443 Computer Architecture
-- Implementing a D latch
-- structurally 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--
-- Specifing the ports for the dff
ENTITY dlatch IS
  PORT(e,d: IN STD_LOGIC;
      q: OUT STD_LOGIC);
END ENTITY;

--
-- Definging the structure to the dff
ARCHITECTURE strucure OF dlatch is

  --
  -- Component declaration for the respected gates
    COMPONENT jkff IS
      PORT(r,e,s: in STD_LOGIC;
          q,notQ: out STD_LOGIC);
    END COMPONENT jkff;

    COMPONENT not1 IS
      PORT(a: in STD_LOGIC;
          y: out STD_LOGIC);
    END COMPONENT not1;

	signal s1: STD_LOGIC;
  BEGIN
    --
    -- Component instantiation
		n0: not1 PORT MAP(d,s1);
		jkff1: jkff PORT MAP(s1,e,d,q);
END strucure;
