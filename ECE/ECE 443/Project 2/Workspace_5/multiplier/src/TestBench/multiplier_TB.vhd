library ieee;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;

-- Add your library and packages declaration here ...

entity multiplier_tb is
end multiplier_tb;

architecture TB_ARCHITECTURE of multiplier_tb is
	-- Component declaration of the tested unit
	component multiplier
		port(
			a : in INTEGER;
			b : in INTEGER;
			s : out INTEGER;
			overflow : out STD_LOGIC );
	end component;
	
	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal a : INTEGER := 0;
	signal b : INTEGER := 0;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal s : INTEGER;
	signal overflow : STD_LOGIC;
	
	-- Add your code here ...
	
begin
	
	-- Unit Under Test port map
	UUT : multiplier
	port map (
		a => a,
		b => b,
		s => s,
		overflow => overflow
		);
	
	-- Add your stimulus here ...
	test: PROCESS
	BEGIN
		WAIT FOR 30NS;
		a <= 128;
		b <= 128;
		WAIT;
	END PROCESS;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_multiplier of multiplier_tb is
	for TB_ARCHITECTURE
		for UUT : multiplier
			use entity work.multiplier(behavior);
		end for;
	end for;
end TESTBENCH_FOR_multiplier;

