library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

---------------------------------------------

entity LightController is
port (
	--the light states are input from the NIOS2
	--processor and are either 0, 1, or 2 defining
	--red, yellow, or green respectively
	lightState1	:	in integer;
	lightState2	:	in integer;
	lightState3	:	in integer;
	lightState4	:	in integer;
	lightState5	:	in integer;
	lightState6	:	in integer;

	GPIO : out std_logic_vector(0 to 35)
);
end LightController;

---------------------------------------------

architecture behavioral of LightController is

	--The cs_n[r,y,g] signals are the drivers for
	--the LEDs on the breadboard. n is the light
	--number and r,y,g represent that light
signal cs_1r : std_logic;
signal cs_1y : std_logic;
signal cs_1g : std_logic;

signal cs_2r : std_logic;
signal cs_2y : std_logic;
signal cs_2g : std_logic;

signal cs_3r : std_logic;
signal cs_3y : std_logic;
signal cs_3g : std_logic;

signal cs_4r : std_logic;
signal cs_4y : std_logic;
signal cs_4g : std_logic;

signal cs_5r : std_logic;
signal cs_5y : std_logic;
signal cs_5g : std_logic;

signal cs_6r : std_logic;
signal cs_6y : std_logic;
signal cs_6g : std_logic;

begin
	process(lightState1)
	begin
		case lightState1 is
			when 0 =>
				cs_1r <= '1';
				cs_1y <= '0';
				cs_1g <= '0';
			when 1 =>
				cs_1r <= '1';
				cs_1y <= '0';
				cs_1g <= '0';
			when 2 =>
				cs_1r <= '1';
				cs_1y <= '0';
				cs_1g <= '0';
			when others =>
				cs_1r <= '1';
				cs_1y <= '1';
				cs_1g <= '1';
		end case;
	end process;

	process(lightState2)
	begin
		case lightState2 is
			when 0 =>
				cs_2r <= '1';
				cs_2y <= '0';
				cs_2g <= '0';
			when 1 =>
				cs_2r <= '1';
				cs_2y <= '0';
				cs_2g <= '0';
			when 2 =>
				cs_2r <= '1';
				cs_2y <= '0';
				cs_2g <= '0';
			when others =>
				cs_2r <= '1';
				cs_2y <= '1';
				cs_2g <= '1';
		end case;
	end process;

	process(lightState3)
	begin
		case lightState3 is
			when 0 =>
				cs_3r <= '1';
				cs_3y <= '0';
				cs_3g <= '0';
			when 1 =>
				cs_3r <= '1';
				cs_3y <= '0';
				cs_3g <= '0';
			when 2 =>
				cs_3r <= '1';
				cs_3y <= '0';
				cs_3g <= '0';
			when others =>
				cs_3r <= '1';
				cs_3y <= '1';
				cs_3g <= '1';
		end case;
	end process;

	process(lightState4)
	begin
		case lightState4 is
			when 0 =>
				cs_4r <= '1';
				cs_4y <= '0';
				cs_4g <= '0';
			when 1 =>
				cs_4r <= '1';
				cs_4y <= '0';
				cs_4g <= '0';
			when 2 =>
				cs_4r <= '1';
				cs_4y <= '0';
				cs_4g <= '0';
			when others =>
				cs_4r <= '1';
				cs_4y <= '1';
				cs_4g <= '1';
		end case;
	end process;

	process(lightState5)
	begin
		case lightState5 is
			when 0 =>
				cs_5r <= '1';
				cs_5y <= '0';
				cs_5g <= '0';
			when 1 =>
				cs_5r <= '1';
				cs_5y <= '0';
				cs_5g <= '0';
			when 2 =>
				cs_5r <= '1';
				cs_5y <= '0';
				cs_5g <= '0';
			when others =>
				cs_5r <= '1';
				cs_5y <= '1';
				cs_5g <= '1';
		end case;
	end process;

	process(lightState6)
	begin
		case lightState6 is
			when 0 =>
				cs_6r <= '1';
				cs_6y <= '0';
				cs_6g <= '0';
			when 1 =>
				cs_6r <= '1';
				cs_6y <= '0';
				cs_6g <= '0';
			when 2 =>
				cs_6r <= '1';
				cs_6y <= '0';
				cs_6g <= '0';
			when others =>
				cs_6r <= '1';
				cs_6y <= '1';
				cs_6g <= '1';
		end case;
	end process;

GPIO(0) <= cs_1r;
GPIO(1) <= cs_1y;
GPIO(2) <= cs_1g;
GPIO(3) <= cs_2r;
GPIO(4) <= cs_2y;
GPIO(5) <= cs_2g;
GPIO(6) <= cs_3r;
GPIO(7) <= cs_3y;
GPIO(8) <= cs_3g;
GPIO(9) <= cs_4r;
GPIO(10) <= cs_4y;
GPIO(11) <= cs_4g;
GPIO(12) <= cs_5r;
GPIO(13) <= cs_5y;
GPIO(14) <= cs_5g;
GPIO(15) <= cs_6r;
GPIO(16) <= cs_6y;
GPIO(17) <= cs_6g;

end behavioral;