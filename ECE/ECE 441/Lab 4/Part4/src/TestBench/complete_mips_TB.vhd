library ieee;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;

entity complete_mips_tb is
end complete_mips_tb;

architecture TB_ARCHITECTURE of complete_mips_tb is
	component complete_mips
	port(
		CLOCK_50 : in STD_LOGIC;
		RST : in STD_LOGIC;
		A_Out : out UNSIGNED(31 downto 0);
		D_Out : out UNSIGNED(31 downto 0); 
		WE_tb: out std_logic);
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLOCK_50 : STD_LOGIC :='0';
	signal RST : STD_LOGIC := '1';
	-- Observed signals - signals mapped to the output ports of tested entity
	signal A_Out : UNSIGNED(31 downto 0);
	signal D_Out : UNSIGNED(31 downto 0);
	signal WE_tb : std_logic;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : complete_mips
		port map (
			CLOCK_50 => CLOCK_50,
			RST => RST,
			A_Out => A_Out,
			D_Out => D_Out,
			WE_tb => WE_tb
		);

	-- Add your stimulus here ...
	RST <= '0' after 100ns;
	CLOCK_50 <= not CLOCK_50 after 20 ns;


end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_complete_mips of complete_mips_tb is
	for TB_ARCHITECTURE
		for UUT : complete_mips
			use entity work.complete_mips(model);
		end for;
	end for;
end TESTBENCH_FOR_complete_mips;

