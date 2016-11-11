library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MIPS_Testbench is
end MIPS_Testbench;

architecture test of MIPS_Testbench is
  component MIPS
    port(CLK, RST: in std_logic; 
         CS, WE: out std_logic;
         ADDR: out unsigned (31 downto 0);
         Mem_Bus: inout unsigned(31 downto 0));
  end component;
  component Memory
    port(CS, WE, CLK: in std_logic;
         ADDR: in unsigned(31 downto 0);
         Mem_Bus: inout unsigned(31 downto 0));
  end component;
  
  constant N: integer := 1;
  constant W: integer := 43;
  type Iarr is array(1 to W) of unsigned(31 downto 0);
  constant Instr_List: Iarr := (
x"21080100", -- addi $t0, $t0, 256
x"21290101", -- addi $t1, $t1, 257
x"214a0102", --	addi $t2, $t2, 258
x"216b0103", --	addi $t3, $t3, 259
x"218c0104", --	addi $t4, $t4, 260
x"21ad0200", --	addi $t5, $t5, 512
x"21ce0201", --	addi $t6, $t6, 513
x"21ef0202", --	addi $t7, $t7, 514
x"23180203", --	addi $t8, $t8, 515
x"23390204", --	addi $t9, $t9, 516
x"8d080000", --	lw $t0, 0($t0)
x"8d290000", --	lw $t1, 0($t1)
x"8d4a0000", --	lw $t2, 0($t2)
x"8d6b0000", --	lw $t3, 0($t3)
x"8d8c0000", --	lw $t4, 0($t4)
x"8dad0000", --	lw $t5, 0($t5)
x"8dce0000", --	lw $t6, 0($t6)
x"8def0000", --	lw $t7, 0($t7)
x"8f180000", --	lw $t8, 0($t8)
x"8f390000", --	lw $t9, 0($t9)
x"010D0018", -- mult $t0, $t5
x"00004012", --	mflo $t0
x"012E0018", --	mult $t1, $t6
x"00004812", --	mflo $t1
x"014F0018", --	mult $t2, $t7
x"00005012", --	mflo $t2
x"01780018", --	mult $t3, $t8
x"00005812", --	mflo $t3
x"01990018", --	mult $t4, $t9
x"00006012", --	mflo $t4
x"01094020", --	add $t0, $t0, $t1
x"010a4020", --	add $t0, $t0, $t2
x"010b4020", --	add $t0, $t0, $t3
x"010c4020", --	add $t0, $t0, $t4
x"01ae6820", --	add $t5, $t5, $t6
x"01af6820", --	add $t5, $t5, $t7
x"01b86820", --	add $t5, $t5, $t8
x"01b96820", --	add $t5, $t5, $t9
x"010D001A", --	div $t0, $t5
x"00004012", --	mflo $t0
x"33390000", --	andi $t9, $t9, 0
x"233900ff", --	addi $t9, $t9, 255
x"af280000"  --	sw $t0, 0($t9)
);
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
  signal Mem_Bus, Address, AddressTB, Address_Mux: unsigned(31 downto 0);
  signal RST, init, WE_Mux, CS_Mux, WE_TB, CS_TB: std_logic;
begin
  CPU: MIPS port map (CLK, RST, CS, WE, Address, Mem_Bus);
  MEM: Memory port map (CS_Mux, WE_Mux, CLK, Address_Mux, Mem_Bus);

  CLK <= not CLK after 10 ns;
  Address_Mux <= AddressTB when init = '1' else Address; 
  WE_Mux <= WE_TB when init = '1' else WE;
  CS_Mux <= CS_TB when init = '1' else CS;

  process
  begin
    rst <= '1';
    wait until CLK = '1' and CLK'event;

    --Initialize the instructions from the testbench
    init <= '1';
    CS_TB <= '1'; WE_TB <= '1';
    for i in 1 to W loop
      wait until CLK = '1' and CLK'event;
      AddressTB <= to_unsigned(i-1,32);
      Mem_Bus <= Instr_List(i);
    end loop; 
    wait until CLK = '1' and CLK'event;
    Mem_Bus <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
    CS_TB <= '0'; WE_TB <= '0';
    init <= '0';
    wait until CLK = '1' and CLK'event;
    rst <= '0';
    --
    for i in 1 to N loop
      wait until WE = '1' and WE'event;  -- When a store word is executed
      wait until CLK = '0' and CLK'event;
      assert(to_integer(Mem_Bus) = expected)
        report "Output mismatch:" severity error;
    end loop;

    report "Testing Finished:";
 end process;
end test;