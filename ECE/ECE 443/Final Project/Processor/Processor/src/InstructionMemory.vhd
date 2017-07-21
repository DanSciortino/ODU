-- Instruction memory
-- May be implemented behaiorally using arrays

library ieee ;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

---------------------------------------------

entity InstructionMemory is
port(	  
	PC		:	in std_logic_vector(4 downto 0);
	clk		:	in std_logic; 
	Data	:	out std_logic_vector(15 downto 0)
);
end InstructionMemory;

architecture Behavioral of InstructionMemory is
begin
	Process(clk)
		type t_MemArray is array (0 to 14)
		of std_logic_vector(15 downto 0);
		constant Mem : t_MemArray :=
		-- instructions are as follows:	
		-- hex  -- instruction
		(x"500A", -- ldi $r0, 10
		 x"5105", -- ldi $r1, 5
		 x"5200", -- ldi $r2, 0
		 x"5300", -- ldi $r3, 0
		 x"5400", -- ldi $r4, 0
		 x"5500", -- ldi $r5, 0
		 x"5600", -- ldi $r6, 0
		 x"5700", -- ldi $r7, 0
		 x"0201", -- add $r2, $r0, $r1
		 x"1301", -- mult $r3, $r0, $r1
		 x"4401", -- sub $r4, $r0, $r1
		 x"630B", -- sh $r3, 0x0B
		 x"640A", -- sh $r4, 0x0A 
		 x"760A", -- lh $r6, 0x0A
		 x"770B"); -- lh $r7, 0x0B
	Begin
		Data <= Mem(to_integer(unsigned(PC)));
	End Process;
end architecture; 
