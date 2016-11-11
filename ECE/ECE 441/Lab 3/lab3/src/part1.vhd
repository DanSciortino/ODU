library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity part1 is
	PORT(
		clk_50: in std_logic;
	    KEY: in std_logic_vector(2 downto 0);	
		SW: in std_logic_vector(17 downto 0);
		LEDR: out std_logic_vector(17 downto 0)
	);
end part1;

architecture behavioral of part1 is	

	component pll1 IS
		PORT
		(
			inclk0		: IN STD_LOGIC  := '0';
			c0		: OUT STD_LOGIC 
		);
	end component;
	
	signal clk_100: std_logic;
	signal sample_1, sample_2: std_logic;
	signal count: unsigned(3 downto 0) := "0000";
	
begin			   
	
	mypll: pll1 port map(clk_50, clk_100);
	
	process(clk_100)
	begin
	
		if(clk_100'event and clk_100 = '1') then
			sample_1 <= KEY(0);
			sample_2 <= sample_1;
		end if;
		
	end process;
	
	process(KEY, sample_2)
	
	begin
		
		if (KEY(1) = '0') then
			
			count <= "0000";
		  	
		elsif(sample_2'event and sample_2 = '0') then
			if KEY(2) = '0' then	
				 count <= unsigned(SW(5 downto 2));				
			elsif(SW(1) = '1') then
				if(SW(0) = '0') then
					if count = "1100" then
						count <= "0000";
					else
						count <= count + "0001";
					end if;
				else
					if count = "0000" then
						count <= "1100";
					else
						count <= count - "0001";
					end if;
				end if;
			end if;
		end if;
		
	end process;

	process(count, SW)
	begin
	
		if count = "1100" and SW(0) = '0' then
			LEDR(4) <= '1';
		elsif(count = "0000" and SW(0) = '1') then
			LEDR(4) <= '1';
		else
			LEDR(4) <= '0';
		end if;		
	
	end process;
	
	LEDR(3 downto 0) <= std_logic_vector(count);
	
end behavioral;