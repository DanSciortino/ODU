library ieee;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity instructionmemory_tb is
end instructionmemory_tb;

architecture TB_ARCHITECTURE of instructionmemory_tb is
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
	component instructionmemory
	port(
		PC : in STD_LOGIC_VECTOR(4 downto 0);
		clk : in STD_LOGIC;
		Data : out STD_LOGIC_VECTOR(15 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal PC : STD_LOGIC_VECTOR(4 downto 0) := "00000";
	signal clk : STD_LOGIC := '0';
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Data : STD_LOGIC_VECTOR(15 downto 0);

	-- Add your code here ...

begin
	-- clock generator:
	clk_gen(clk, 50.000E6); --50MHz clock
	
	--driver
	process(clk)
	begin	   
		if falling_edge(clk) then
			--write a value to a location and then check that location on the next clock cycle
			pc <= std_logic_vector(to_unsigned(to_integer(unsigned(pc)) + 1,5));
		end if;
	end process;
	
	-- Unit Under Test port map
	UUT : instructionmemory
		port map (
			PC => PC,
			clk => clk,
			Data => Data
		);

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_instructionmemory of instructionmemory_tb is
	for TB_ARCHITECTURE
		for UUT : instructionmemory
			use entity work.instructionmemory(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_instructionmemory;

