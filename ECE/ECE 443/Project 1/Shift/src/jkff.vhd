-- Daniel Sciortino
-- ECE 443 Computer Architecture
-- Implementing a JK Flip Flop
-- structurally (jkff)

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--
-- Specifing the ports for the jkff
ENTITY jkff IS
  PORT(r,e,s: in STD_LOGIC;
      q,notQ: out STD_LOGIC);
END ENTITY;

--
-- Definging the structure to the jkff
ARCHITECTURE strucure OF jkff IS
SIGNAL i: std_logic_vector(0 to 5);

  --
  -- Component declaration for the respected gates
    COMPONENT and2 IS
      PORT(a,b: in STD_LOGIC;
          y: out STD_LOGIC);
    END COMPONENT and2;

    COMPONENT or2 IS
      PORT(a,b: in STD_LOGIC;
          y: out STD_LOGIC);
    END COMPONENT or2;

    COMPONENT not1 IS
      PORT(a: in STD_LOGIC;
          y: out STD_LOGIC);
    END COMPONENT not1;

  BEGIN
    --
    -- Component instantiation

    a0: and2 PORT MAP(r,e,i(0));
    a1: and2 PORT MAP(s,e,i(3));

    o0: or2 PORT MAP(i(0),i(5),i(1));
    o1: or2 PORT MAP(i(3),i(2),i(4));

    n0: not1 PORT MAP(i(1),i(2));
    n1: not1 PORT MAP(i(4),i(5));
q <= i(2);
notQ <= i(5);
END strucure;
