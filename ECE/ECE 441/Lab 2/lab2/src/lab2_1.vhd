LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- Simple module that connects the SW switches to the LEDR lights

ENTITY lab2_1 IS  
	PORT ( SW : IN STD_LOGIC_VECTOR(0 TO 17); -- switches         
		KEY : IN STD_LOGIC_VECTOR(0 TO 3); -- push buttons         
		LEDR : OUT STD_LOGIC_VECTOR(0 TO 17); -- red LEDs         
		LEDG : OUT STD_LOGIC_VECTOR(0 TO 3)); -- green LEDs); 
END lab2_1;

ARCHITECTURE Behavior OF lab2_1 IS
BEGIN  
	LEDR <= SW;  
	LEDG <= KEY;
END Behavior;														  																	