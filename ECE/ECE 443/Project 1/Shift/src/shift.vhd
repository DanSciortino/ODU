-- Daniel Sciortino
-- ECE 443 Computer Architecture
-- Implementing a 8 bit shift register

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--
-- Specifing the ports for the shift register
ENTITY shiftRegister IS
  PORT(e,a: IN STD_LOGIC;
      f: OUT STD_LOGIC);
END ENTITY;

--
-- Defining the structure of the DFF
ARCHITECTURE strucure OF shiftRegister IS

  --
  -- Component declaration
  COMPONENT dff IS
    PORT(e,d: IN STD_LOGIC;
	q: OUT  STD_LOGIC);
  END COMPONENT;
  
SIGNAL i: STD_LOGIC_VECTOR (0 to 7);  
BEGIN
	
  --
  -- Component instantiation
	shift0: dff PORT MAP(e, a, i(0));
	shift1: dff PORT MAP(e, i(0), i(1));
	shift2: dff PORT MAP(e, i(1), i(2));
	shift3: dff PORT MAP(e, i(2), i(3));
	shift4: dff PORT MAP(e, i(3), i(4));
	shift5: dff PORT MAP(e, i(4), i(5));
	shift6: dff PORT MAP(e, i(5), i(6));
	shift7: dff PORT MAP(e, i(6), i(7));
	
	PROCESS(i(7))
	BEGIN
		IF(i(7) = '1') THEN
			REPORT "DONE" SEVERITY ERROR;
		END IF;
	END PROCESS;
	
	f <= i(7);
		
END ARCHITECTURE;
