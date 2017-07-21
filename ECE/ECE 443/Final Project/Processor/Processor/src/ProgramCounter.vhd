library ieee ;
use ieee.std_logic_1164.all;

---------------------------------------------

entity PC is
port(	  
	clk		:	in std_logic;
	PC_next	:	in std_logic_vector(4 downto 0);
	PC		:	out std_logic_vector(4 downto 0)
);
end PC;

architecture Behavioral of PC is
begin
	Process(clk)
	begin
		if rising_edge(clk) then
			PC <= PC_next;
		end if;
	end Process;
end architecture; 