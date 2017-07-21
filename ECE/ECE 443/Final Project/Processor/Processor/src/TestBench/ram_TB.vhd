library ieee;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity ram_tb is
end ram_tb;

architecture TB_ARCHITECTURE of ram_tb is
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
	component ram
	port(
		clk : in STD_LOGIC;
		WE : in STD_LOGIC;
		address : in STD_LOGIC_VECTOR(15 downto 0);
		DataIn : in STD_LOGIC_VECTOR(15 downto 0);
		DataOut : out STD_LOGIC_VECTOR(15 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : STD_LOGIC := '0';
	signal WE : STD_LOGIC := '0';
	signal address : STD_LOGIC_VECTOR(15 downto 0) := x"0000";
	signal DataIn : STD_LOGIC_VECTOR(15 downto 0) := x"8000";
	-- Observed signals - signals mapped to the output ports of tested entity
	signal DataOut : STD_LOGIC_VECTOR(15 downto 0) := x"0000";

	-- Add your code here ...

begin
	-- clock generator:
	clk_gen(clk, 50.000E6); --50MHz clock
	clk_gen(WE, 10.000E6); --Make the WE change less frequently
	
	--driver
	process(clk)
	begin	   
		if falling_edge(clk) then
			--write a value to a location and then check that location on the next clock cycle
			address <= std_logic_vector(to_unsigned(to_integer(unsigned(address)) + 1,16));
			DataIn <= std_logic_vector(to_unsigned(to_integer(unsigned(DataIn)) + 1,16));
		end if;
	end process;
	
	-- Unit Under Test port map
	UUT : ram
		port map (
			clk => clk,
			WE => WE,
			address => address,
			DataIn => DataIn,
			DataOut => DataOut
		);

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_ram of ram_tb is
	for TB_ARCHITECTURE
		for UUT : ram
			use entity work.ram(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_ram;

