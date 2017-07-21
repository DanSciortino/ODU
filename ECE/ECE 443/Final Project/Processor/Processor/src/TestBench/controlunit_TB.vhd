library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;

	-- Add your library and packages declaration here ...

entity controlunit_tb is
end controlunit_tb;

architecture TB_ARCHITECTURE of controlunit_tb is
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
	component controlunit
	port(
		S : in STD_LOGIC_VECTOR(0 to 2);
		MemRead : out STD_LOGIC;
		MemToReg : out STD_LOGIC;
		MemWrite : out STD_LOGIC;
		ALUsource : out STD_LOGIC;
		RegWrite : out STD_LOGIC;
		ALUop : out STD_LOGIC_VECTOR(2 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal S : STD_LOGIC_VECTOR(0 to 2) := "000";
	-- Observed signals - signals mapped to the output ports of tested entity
	signal MemRead : STD_LOGIC;
	signal MemToReg : STD_LOGIC;
	signal MemWrite : STD_LOGIC;
	signal ALUsource : STD_LOGIC;
	signal RegWrite : STD_LOGIC;
	signal ALUop : STD_LOGIC_VECTOR(2 downto 0);

	-- Add your code here ...
	signal clk : std_logic;
begin
	-- clock generator:
	clk_gen(clk, 50.000E6); --50MHz clock
	
	-- Cycle through 8 possibilities for S in the instruction
	process(clk)
	begin	   
		if falling_edge(clk) then
			--increment through s posibilities
			S <= std_logic_vector(to_unsigned(to_integer(unsigned(S)) + 1,3));
		end if;
	end process;
	
	-- Unit Under Test port map
	UUT : controlunit
		port map (
			S => S,
			MemRead => MemRead,
			MemToReg => MemToReg,
			MemWrite => MemWrite,
			ALUsource => ALUsource,
			RegWrite => RegWrite,
			ALUop => ALUop
		);

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_controlunit of controlunit_tb is
	for TB_ARCHITECTURE
		for UUT : controlunit
			use entity work.controlunit(structural);
		end for;
	end for;
end TESTBENCH_FOR_controlunit;

