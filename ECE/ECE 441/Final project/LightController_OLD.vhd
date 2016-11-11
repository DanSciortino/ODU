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

	--The cs_n[r,y,g] signals are the drivers for
	--the LEDs on the breadboard. n is the light
	--number and r,y,g represent that light
	cs_1r	:	out std_logic;
	cs_1y	:	out std_logic;
	cs_1g	:	out std_logic;

	cs_2r	:	out std_logic;
	cs_2y	:	out std_logic;
	cs_2g	:	out std_logic;

	cs_3r	:	out std_logic;
	cs_3y	:	out std_logic;
	cs_3g	:	out std_logic;

	cs_4r	:	out std_logic;
	cs_4y	:	out std_logic;
	cs_4g	:	out std_logic;

	cs_5r	:	out std_logic;
	cs_5y	:	out std_logic;
	cs_5g	:	out std_logic;

	cs_6r	:	out std_logic;
	cs_6y	:	out std_logic;
	cs_6g	:	out std_logic
);
end LightController;

---------------------------------------------

architecture behavioral of LightController is
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
end behavioral;