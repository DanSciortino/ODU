-- Daniel Sciortino
-- ECE 443 - Computer Architecture
-- 16b Subtractor
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY nSubber IS

	--
	-- making the Subtractor generic in length
	GENERIC
	(
	bits: INTEGER
	);

	--
	-- Port decleration
	PORT
	(
	a,b: IN STD_LOGIC_VECTOR(bits - 1 DOWNTO 0);
	Cin: IN STD_LOGIC := '1';
	s: OUT STD_LOGIC_VECTOR(bits - 1 DOWNTO 0);
	Cout: OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE structure OF nSubber IS

--
-- component decleration for the full adder
COMPONENT nAdder IS
GENERIC
	(
		bits: INTEGER
	);

	--
	-- Port decleration
	PORT
	(
		a,b: IN STD_LOGIC_VECTOR(bits - 1 DOWNTO 0);
		Cin: IN STD_LOGIC := '1';
		s: OUT STD_LOGIC_VECTOR(bits - 1 DOWNTO 0);
		Cout: OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT not1 IS
	PORT(
	a: IN STD_LOGIC;
	b: OUT STD_LOGIC
	);
END COMPONENT;

	--
	-- wire interconnect for the adder
	SIGNAL i: STD_LOGIC_VECTOR(bits - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN

	--
	-- component instiation
	sub: FOR n IN 0 TO bits GENERATE
		notArray: not1 PORT MAP (b(n),i(n));
	END GENERATE;

	adder: nAdder GENERIC MAP(bits => bits) PORT MAP(a,i,Cin,s,Cout);
END structure;
