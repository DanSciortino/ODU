-- Daniel Sciortino
-- ECE 443 - Computer Architecture
-- n bit adder
--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY nAdder IS

	--
	-- making the adder generic in length
	GENERIC
	(
	bits: INTEGER
	);

	--
	-- Port decleration
	PORT
	(
	a,b: IN STD_LOGIC_VECTOR(bits - 1 DOWNTO 0);
	Cin: IN STD_LOGIC;
	s: OUT STD_LOGIC_VECTOR(bits - 1 DOWNTO 0);
	Cout: OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE structure OF nAdder IS

--
-- component decleration for the full adder
COMPONENT fullAdder IS
	PORT
	(
	a,b,cIn: IN STD_LOGIC;
	s,cOut: OUT STD_LOGIC
	);
END COMPONENT;

	--
	-- wire interconnect for the adder
	SIGNAL i: STD_LOGIC_VECTOR(bits - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN

	--
	-- component instiation
	adder: FOR n IN 0 TO bits GENERATE

		--
		-- If the generate statement is at the inital adder
		lowerAdder: IF n = 0 GENERATE
			inital: fullAdder PORT MAP(a(n),b(n),Cin,s(n),i(n+1));
		END GENERATE;

		--
		-- if the number is between the high and o-th adder
		middleAdder: IF (n > 0 AND n < bits) GENERATE
			middle:fullAdder PORT MAP (a(n),b(n),i(n),s(n),i(n+1));
		END GENERATE;

		--
		-- if the number is at the highest adder
		bitsAdder: IF n = bits GENERATE
			bits: fullAdder PORT MAP(a(n),b(n),i(n),s(n), Cout);
		END GENERATE;
	END GENERATE;
END structure;
