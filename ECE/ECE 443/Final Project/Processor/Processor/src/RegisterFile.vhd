LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY reg is
	PORT(clk, regWrite: IN std_logic;
		WriteData: IN std_logic_vector(15 DOWNTO 0);
		WriteRegister, Reg1, Reg2: IN std_logic_vector(3 DOWNTO 0);
		Reg1Data, Reg2Data: OUT std_logic_vector(15 DOWNTO 0)
		);
END ENTITY reg;

ARCHITECTURE behavioral OF reg IS
	TYPE ram IS ARRAY (0 TO 15) OF std_logic_vector(15 DOWNTO 0);
	SIGNAL regs: ram := (OTHERS => (OTHERS=> '0'));

BEGIN
	PROCESS(clk)
		BEGIN
			IF clk'EVENT AND clk = '1' THEN
				IF regWrite = '1' THEN
					regs(TO_INTEGER(unsigned(WriteRegister))) <= WriteData;
				END IF;
			END IF;
		END PROCESS;
	Reg1Data <= regs(TO_INTEGER(unsigned(Reg1)));
	Reg2Data <= regs(TO_INTEGER(unsigned(Reg2)));
END behavioral;
