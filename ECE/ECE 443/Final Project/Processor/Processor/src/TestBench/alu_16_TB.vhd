																												 																					 LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY alu_tb IS
END ENTITY alu_tb;

ARCHITECTURE behavioral OF alu_tb IS

COMPONENT ALU_16 IS
port(	  
	A, B		:	in std_logic_vector(15 downto 0);
	R			:	out std_logic_vector(15 downto 0);
	S0,S1,S2	:	in std_logic;
	Status		:	out std_logic_vector(2 downto 0)
);
END COMPONENT;


SIGNAL A, B, R: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL S0,S1,S2: STD_LOGIC;
SIGNAL Status: STD_LOGIC_VECTOR(2 DOWNTO 0);


BEGIN

UUT: ALU_16
	PORT MAP(
		A => A,
		B => B,
		R => R,
		S0 => S0,
		S1 => S1,
		S2 => S2,
		Status => Status
	);

-----------------------------
-- 000 Addition
-- 001 Multiplication
-- 010 Pass Through A
-- 011 Pass Through B
-- 100 Subtraction
-----------------------------
PROCESS
BEGIN
	A <= x"0002";
	B <= x"0003";

	S0 <= '0';
	S1 <= '0';
	S2 <= '0';
	WAIT FOR 1US;

	S0 <= '0';
	S1 <= '0';
	S2 <= '1';
	WAIT FOR 1US;
	
	S0 <= '0';
	S1 <= '1';
	S2 <= '0';
	WAIT FOR 1US;
	
	S0 <= '0';
	S1 <= '1';
	S2 <= '1';
	WAIT FOR 1US;

	S0 <= '1';
	S1 <= '0';
	S2 <= '0';
	WAIT FOR 1US;
end process;
END ARCHITECTURE;
