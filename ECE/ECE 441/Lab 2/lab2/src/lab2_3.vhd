LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY lab2_3 IS  
	PORT (SW : IN STD_LOGIC_VECTOR	(15 downto 0);			-- Operand 1 
		KEY : IN STD_LOGIC_VECTOR   (2 downto 0);			-- push buttons         
		LEDR : OUT STD_LOGIC_VECTOR (7 downto 0); 			-- red LEDs         
		LEDG : OUT STD_LOGIC_VECTOR (2 downto 0);			-- green LEDs)
		HEX0 : OUT STD_logic_vector (0 TO 6);				-- Seven segment
		HEX1 : OUT STD_logic_vector (0 TO 6);				-- Seven segment
		HEX2 : OUT STD_logic_vector (0 TO 6);				-- Seven segment
		HEX3 : OUT STD_logic_vector (0 TO 6);				-- Seven segment
		HEX4 : OUT STD_logic_vector (0 TO 6);				-- Seven segment
		HEX5 : OUT STD_logic_vector (0 TO 6);				-- Seven segment
		HEX6 : OUT STD_logic_vector (0 TO 6);				-- Seven segment
		HEX7 : OUT STD_logic_vector (0 TO 6));				-- Seven segment
		
END lab2_3;
	
ARCHITECTURE Behavior OF lab2_3 IS
signal BlankOut : boolean := false;
signal result : std_logic_vector (15 downto 0);

	function hex_display (nibble: std_logic_vector(3 downto 0); Blank : boolean) 
	return std_logic_vector is
	variable return_value : std_logic_vector(0 to 6) := "1001001";
	begin
		case nibble  is
			when x"0" => return_value :=  "1111110";
			when x"1" => return_value :=  "0110000";
			when x"2" => return_value :=  "1101101";
			when x"3" => return_value :=  "1111001";
			when x"4" => return_value :=  "0110011";
			when x"5" => return_value :=  "1011011";
			when x"6" => return_value :=  "1011111";
			when x"7" => return_value :=  "1110000";
			when x"8" => return_value :=  "1111111";
			when x"9" => return_value :=  "1111011";
			when x"A" => return_value :=  "1110111";
			when x"B" => return_value :=  "0011111";
			when x"C" => return_value :=  "1001110";
			when x"D" => return_value :=  "0111101";
			when x"E" => return_value :=  "1001111";
			when x"F" => return_value :=  "1000111";
			when others => return_value := "1001001";
		end case;
		
		if Blank = true then
			return_value := "0000000";
		end if;
		
		return not return_value;
		
	end hex_display;
begin	
	process(SW(15 downto 12))
	variable nibble : std_logic_vector (3 downto 0);
	begin
		nibble(3) := SW(15);
		nibble(2) := SW(14);
		nibble(1) := SW(13);
		nibble(0) := SW(12);
		HEX7 <= hex_display(nibble, false);
	end process;
	
	process(SW(11 downto 8))
	variable nibble : std_logic_vector (3 downto 0);
	begin
		nibble(3) := SW(11);
		nibble(2) := SW(10);
		nibble(1) := SW(9);
		nibble(0) := SW(8);
		HEX6 <= hex_display(nibble, false);
	end process; 
	
	process(SW(7 downto 4))
	variable nibble : std_logic_vector (3 downto 0);
	begin
		nibble(3) := SW(7);
		nibble(2) := SW(6);
		nibble(1) := SW(5);
		nibble(0) := SW(4);
		HEX5 <= hex_display(nibble, false);
	end process;
	
	process(SW(3 downto 0))
	variable nibble : std_logic_vector (3 downto 0);
	begin
		nibble(3) := SW(3);
		nibble(2) := SW(2);
		nibble(1) := SW(1);
		nibble(0) := SW(0);
		HEX4 <= hex_display(nibble, false);
	end process;
	
	process(KEY (2 downto 0)) 
	begin						  
	    if	unsigned(SW(7 downto 0)) = "0" and KEY = "001" then
		   BlankOut <= true;
	    else
		   BlankOut <= false;
		end if;		
	case KEY(2 downto 0) is
		when "111" => result <= std_logic_vector("00000000"& unsigned(SW(15 downto 8)) +  
		unsigned("00000000"& SW(7 downto 0)));
		
		when "110" => result <= std_logic_vector("00000000"& unsigned(SW(15 downto 8)) -  
		unsigned("00000000"& SW(7 downto 0)));			  
		
		when "101" => result <= "00000000"& (SW(15 downto 8) xor SW(7 downto 0));
		
		when "100" => result <= "00000000"& (SW(15 downto 8) and SW(7 downto 0));
		
		when "011" => result <= "00000000"& (SW(15 downto 8) or SW(7 downto 0));
		
		when "010" => result <= std_logic_vector( unsigned(SW(15 downto 8)) *  
		unsigned(SW(7 downto 0)));
		
		when "001" => result <= std_logic_vector("00000000"& unsigned(SW(15 downto 8)) / unsigned("00000000"& SW(7 downto 0)));
		
		when others => result <= x"0000";
	
		end case;
	end process;
		
		
	HEX3 <= hex_display(result(15 downto 12), BlankOut);
	HEX2 <= hex_display(result(11 downto 8), BlankOut);
	HEX1 <= hex_display(result(7 downto 4), BlankOut);
	HEX0 <= hex_display(result(3 downto 0), BlankOut);

END Behavior;														  																	