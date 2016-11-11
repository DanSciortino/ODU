library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MIPS_Testbench is
end MIPS_Testbench;

architecture test of MIPS_Testbench is
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
  
  constant N: integer := 1;
  constant W: integer := 37;
  type Iarr is array(1 to W) of unsigned(31 downto 0);	
  -- does nothing
  constant Instr_List: Iarr := (
x"21080100",
x"21290101",
x"214a0102",
x"216b0103",
x"218c0104",
x"21ad0200",
x"21ce0201",
x"21ef0202",
x"23180203",
x"23390204",
x"8d080000",
x"8d290000",
x"8d4a0000",
x"8d6b0000",
x"8d8c0000",
x"8dad0000",
x"8dce0000",
x"8def0000",
x"8f180000",
x"8f390000",
x"010D4018",
x"012E4818",
x"014F5018",
x"01785818",
x"01996018",
x"01094020",
x"010a4020",
x"010b4020",
x"010c4020",
x"01ae6820",
x"01af6820",
x"01b86820",
x"01b96820",
x"010D401A",
x"33390000",
x"233900ff",
x"af280000");
    -- The last instructions perform a series of sw operations that store 
    -- registers 3-10 to memory. During the memory write stage, the testbench 
    -- will compare the value of these registers (by looking at the bus value) 
    -- with the expected output. No explicit check/assertion for branch 
    -- instructions, however if a branch does not execute as expected, an error 
    -- will be detected because the assertion for the instruction after the 
    -- branch instruction will be incorrect.
  --type output_arr is array(1 to N) of integer;
  constant expected: integer := 6;
  signal CS, WE, CLK: std_logic := '0';
  signal Mem_in, Mem_out, Address, AddressTB, Address_Mux: unsigned(31 downto 0);
  signal RST, init, WE_Mux, CS_Mux, WE_TB, CS_TB: std_logic;
begin
  CPU: MIPS port map (CLK, RST, CS, WE, Address, Mem_in, Mem_out);
  MEM: Memory port map (CS_Mux, WE_Mux, CLK, Address_Mux, Mem_in, Mem_out);

  CLK <= not CLK after 10 ns;
  Address_Mux <= AddressTB when init = '1' else Address; 
  WE_Mux <= WE_TB when init = '1' else WE;
  CS_Mux <= CS_TB when init = '1' else CS;

  process
  begin	  
	--Reset
    rst <= '1';
    wait until CLK = '1' and CLK'event;
    rst <= '0';
	
	-- Check For correction
    for i in 1 to N loop
      wait until WE = '1' and WE'event;  -- When a store word is executed
      wait until CLK = '0' and CLK'event;
      assert(to_integer(Mem_in) = expected)
        report "Output mismatch:" severity error;
    end loop;

    report "Testing Finished:";
 end process;
end test;