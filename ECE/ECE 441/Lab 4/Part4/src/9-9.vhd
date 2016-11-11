library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Complete_MIPS is
	port(CLOCK_50, RST: in std_logic;
		A_Out, D_Out: out unsigned(31 downto 0);
		WE_tb: out std_logic);
end Complete_MIPS;

architecture model of Complete_MIPS is 
	component MIPS is
		port(CLK, RST: in std_logic;
			CS, WE: out std_logic;
			ADDR: out unsigned(31 downto 0);
			Mem_in: out unsigned(31 downto 0);
			Mem_out: in unsigned(31 downto 0));
	end component;
	component Memory is
		port(CS, WE, Clk: in std_logic;
			ADDR: in unsigned(31 downto 0);
			Mem_in: in unsigned(31 downto 0);
			Mem_out: out unsigned(31 downto 0));
	end component;	
	
	signal CS, WE: std_logic;
	signal ADDR, Mem_in, Mem_out: unsigned(31 downto 0);
	signal clk_1  : std_logic := '0';
begin
	CPU: MIPS port map (CLOCK_50, RST, CS, WE, ADDR, Mem_in, Mem_out);
	MEM: Memory port map (CS, WE, CLOCK_50, ADDR, Mem_in, Mem_out);
	WE_tb <= WE;
	A_Out <= Addr;
	D_Out <= Mem_out;
end model;