library ieee;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity processor_tb is
end processor_tb;

architecture TB_ARCHITECTURE of processor_tb is
	-- Procedure for clock generation
	procedure clk_gen(signal clk : out std_logic; constant FREQ : real) is
		constant PERIOD    : time := 1 sec / FREQ;        -- Full period
		constant HIGH_TIME : time := PERIOD / 2;          -- High time
		constant LOW_TIME  : time := PERIOD - HIGH_TIME;  -- Low time; always >= HIGH_TIME
	begin
	-- Check the arguments
	assert (HIGH_TIME /= 0 fs) report "clk_plain: High time is zero; time resolution to large for frequency" severity FAILURE;
	-- Generate a clock cycle
		loop
			clk <= '1';
			wait for HIGH_TIME;
			clk <= '0';
			wait for LOW_TIME;
		end loop;
	end procedure;

	-- Component declaration of the tested unit
	component processor
	port(
		clk : in STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity

	-- Add your code here ...

begin
	-- clock generator:
	clk_gen(clk, 10.000E3); --10KHz clock
	
	-- Unit Under Test port map
	UUT : processor
		port map (
			clk => clk
		);

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_processor of processor_tb is
	for TB_ARCHITECTURE
		for UUT : processor
			use entity work.processor(structure);
		end for;
	end for;
end TESTBENCH_FOR_processor;

