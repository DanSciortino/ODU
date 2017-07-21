LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY reg_tb IS
END ENTITY reg_tb;

ARCHITECTURE behavioral OF reg_tb IS
COMPONENT reg IS 
	PORT(clk, regWrite: IN std_logic;
		WriteData: IN std_logic_vector(15 DOWNTO 0);
		WriteRegister, Reg1, Reg2: IN std_logic_vector(3 DOWNTO 0);
		Reg1Data, Reg2Data: OUT std_logic_vector(15 DOWNTO 0)
		);
END COMPONENT;

SIGNAL clk, regWrite: STD_LOGIC;
SIGNAL Reg1Data, Reg2Data, WriteData: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL WriteRegister, Reg1, Reg2: STD_LOGIC_VECTOR(3 DOWNTO 0);

UUT: reg
	PORT MAP(
	clk => clk,
	regWrite => regWrite,
	WriteData => WriteData,
	WriteRegister => WriteRegister,
	Reg1 => Reg1,
	Reg2 => Reg2,
	Reg1Data => Reg1Data,
	Reg2Data => Reg2Data
	);

PROCESS
BEGIN
regWrite <= '1';
clk <=  '1' WAIT FOR 5NS;
clk <= "0" WAIT FOR 5NS;

WriteData <= x'0005';
WriteRegister <= '1';
WAIT FOR 20NS;

clk <=  '1' WAIT FOR 5NS;
clk <= 0' WAIT FOR 5NS;

Reg1 <= x"0007";
Reg2 <= x"0002";
WAIT FOR 20NS;

END PROCESS;
END ARCHITECTURE;
	Reg2 <= x"2";
		WAIT FOR 20NS;
		
	END PROCESS;
END ARCHITECTURE;