Library ieee;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

Library AES;
use AES.all;

entity key_expander is
	port(intext: in std_logic_Vector(0 to 127);									   
	cyphertext: out std_logic_vector(255 downto 0));
end entity key_expander;

architecture some_name of key_expander is
type byte_array is array (0 to 255) of std_logic_vector(7 downto 0);
type word_array is array (13 downto 0) of std_logic_vector(31 downto 0);
type word1_array is array (7 downto 0) of std_logic_vector(31 downto 0);
type word2_array is array (0 to 7) of std_logic_vector(7 downto 0);	
type word3_array is array (0 to 3) of std_logic_vector(63 downto 0);
type plaintext is array (0 to 3) of std_logic_vector(0 to 31);
type round_array is array (0 to 14) of std_logic_vector(255 downto 0);
type shiftarray is array (15 downto 0) of std_logic_vector(7 downto 0);
begin
process (intext)

variable data:std_logic_vector(7 downto 0);
 	constant look_up: byte_array:=
	(x"63", x"7C", x"77", x"7B", x"F2", x"6B", x"6F", x"C5", x"30", x"01", x"67", x"2B", x"FE", x"D7", x"AB", x"76",
    x"CA", x"82", x"C9", x"7D", x"FA", x"59", x"47", x"F0", x"AD", x"D4", x"A2", x"AF", x"9C", x"A4", x"72", x"C0",
    x"B7", x"FD", x"93", x"26", x"36", x"3F", x"F7", x"CC", x"34", x"A5", x"E5", x"F1", x"71", x"D8", x"31", x"15",
    x"04", x"C7", x"23", x"C3", x"18", x"96", x"05", x"9A", x"07", x"12", x"80", x"E2", x"EB", x"27", x"B2", x"75",
    x"09", x"83", x"2C", x"1A", x"1B", x"6E", x"5A", x"A0", x"52", x"3B", x"D6", x"B3", x"29", x"E3", x"2F", x"84",
    x"53", x"D1", x"00", x"ED", x"20", x"FC", x"B1", x"5B", x"6A", x"CB", x"BE", x"39", x"4A", x"4C", x"58", x"CF",
    x"D0", x"EF", x"AA", x"FB", x"43", x"4D", x"33", x"85", x"45", x"F9", x"02", x"7F", x"50", x"3C", x"9F", x"A8",
    x"51", x"A3", x"40", x"8F", x"92", x"9D", x"38", x"F5", x"BC", x"B6", x"DA", x"21", x"10", x"FF", x"F3", x"D2",
    x"CD", x"0C", x"13", x"EC", x"5F", x"97", x"44", x"17", x"C4", x"A7", x"7E", x"3D", x"64", x"5D", x"19", x"73",
    x"60", x"81", x"4F", x"DC", x"22", x"2A", x"90", x"88", x"46", x"EE", x"B8", x"14", x"DE", x"5E", x"0B", x"DB",
    x"E0", x"32", x"3A", x"0A", x"49", x"06", x"24", x"5C", x"C2", x"D3", x"AC", x"62", x"91", x"95", x"E4", x"79",
    x"E7", x"C8", x"37", x"6D", x"8D", x"D5", x"4E", x"A9", x"6C", x"56", x"F4", x"EA", x"65", x"7A", x"AE", x"08",
    x"BA", x"78", x"25", x"2E", x"1C", x"A6", x"B4", x"C6", x"E8", x"DD", x"74", x"1F", x"4B", x"BD", x"8B", x"8A",
    x"70", x"3E", x"B5", x"66", x"48", x"03", x"F6", x"0E", x"61", x"35", x"57", x"B9", x"86", x"C1", x"1D", x"9E",
    x"E1", x"F8", x"98", x"11", x"69", x"D9", x"8E", x"94", x"9B", x"1E", x"87", x"E9", x"CE", x"55", x"28", x"DF",
    x"8C", x"A1", x"89", x"0D", x"BF", x"E6", x"42", x"68", x"41", x"99", x"2D", x"0F", x"B0", x"54", x"BB", x"16");
	
	constant look_up2: byte_array:=
	(x"00",x"02",x"04",x"06",x"08",x"0a",x"0c",x"0e",x"10",x"12",x"14",x"16",x"18",x"1a",x"1c",x"1e",
	x"20",x"22",x"24",x"26",x"28",x"2a",x"2c",x"2e",x"30",x"32",x"34",x"36",x"38",x"3a",x"3c",x"3e",
	x"40",x"42",x"44",x"46",x"48",x"4a",x"4c",x"4e",x"50",x"52",x"54",x"56",x"58",x"5a",x"5c",x"5e",
	x"60",x"62",x"64",x"66",x"68",x"6a",x"6c",x"6e",x"70",x"72",x"74",x"76",x"78",x"7a",x"7c",x"7e",
	x"80",x"82",x"84",x"86",x"88",x"8a",x"8c",x"8e",x"90",x"92",x"94",x"96",x"98",x"9a",x"9c",x"9e",
	x"a0",x"a2",x"a4",x"a6",x"a8",x"aa",x"ac",x"ae",x"b0",x"b2",x"b4",x"b6",x"b8",x"ba",x"bc",x"be",
	x"c0",x"c2",x"c4",x"c6",x"c8",x"ca",x"cc",x"ce",x"d0",x"d2",x"d4",x"d6",x"d8",x"da",x"dc",x"de",
	x"e0",x"e2",x"e4",x"e6",x"e8",x"ea",x"ec",x"ee",x"f0",x"f2",x"f4",x"f6",x"f8",x"fa",x"fc",x"fe",
	x"1b",x"19",x"1f",x"1d",x"13",x"11",x"17",x"15",x"0b",x"09",x"0f",x"0d",x"03",x"01",x"07",x"05",
	x"3b",x"39",x"3f",x"3d",x"33",x"31",x"37",x"35",x"2b",x"29",x"2f",x"2d",x"23",x"21",x"27",x"25",
	x"5b",x"59",x"5f",x"5d",x"53",x"51",x"57",x"55",x"4b",x"49",x"4f",x"4d",x"43",x"41",x"47",x"45",
	x"7b",x"79",x"7f",x"7d",x"73",x"71",x"77",x"75",x"6b",x"69",x"6f",x"6d",x"63",x"61",x"67",x"65",
	x"9b",x"99",x"9f",x"9d",x"93",x"91",x"97",x"95",x"8b",x"89",x"8f",x"8d",x"83",x"81",x"87",x"85",
	x"bb",x"b9",x"bf",x"bd",x"b3",x"b1",x"b7",x"b5",x"ab",x"a9",x"af",x"ad",x"a3",x"a1",x"a7",x"a5",
	x"db",x"d9",x"df",x"dd",x"d3",x"d1",x"d7",x"d5",x"cb",x"c9",x"cf",x"cd",x"c3",x"c1",x"c7",x"c5",
	x"fb",x"f9",x"ff",x"fd",x"f3",x"f1",x"f7",x"f5",x"eb",x"e9",x"ef",x"ed",x"e3",x"e1",x"e7",x"e5");
	
	constant look_up3: byte_array:=
	(x"00",x"03",x"06",x"05",x"0c",x"0f",x"0a",x"09",x"18",x"1b",x"1e",x"1d",x"14",x"17",x"12",x"11",
	x"30",x"33",x"36",x"35",x"3c",x"3f",x"3a",x"39",x"28",x"2b",x"2e",x"2d",x"24",x"27",x"22",x"21",
	x"60",x"63",x"66",x"65",x"6c",x"6f",x"6a",x"69",x"78",x"7b",x"7e",x"7d",x"74",x"77",x"72",x"71",
	x"50",x"53",x"56",x"55",x"5c",x"5f",x"5a",x"59",x"48",x"4b",x"4e",x"4d",x"44",x"47",x"42",x"41",
	x"c0",x"c3",x"c6",x"c5",x"cc",x"cf",x"ca",x"c9",x"d8",x"db",x"de",x"dd",x"d4",x"d7",x"d2",x"d1",
	x"f0",x"f3",x"f6",x"f5",x"fc",x"ff",x"fa",x"f9",x"e8",x"eb",x"ee",x"ed",x"e4",x"e7",x"e2",x"e1",
	x"a0",x"a3",x"a6",x"a5",x"ac",x"af",x"aa",x"a9",x"b8",x"bb",x"be",x"bd",x"b4",x"b7",x"b2",x"b1",
	x"90",x"93",x"96",x"95",x"9c",x"9f",x"9a",x"99",x"88",x"8b",x"8e",x"8d",x"84",x"87",x"82",x"81",
	x"9b",x"98",x"9d",x"9e",x"97",x"94",x"91",x"92",x"83",x"80",x"85",x"86",x"8f",x"8c",x"89",x"8a",
	x"ab",x"a8",x"ad",x"ae",x"a7",x"a4",x"a1",x"a2",x"b3",x"b0",x"b5",x"b6",x"bf",x"bc",x"b9",x"ba",
	x"fb",x"f8",x"fd",x"fe",x"f7",x"f4",x"f1",x"f2",x"e3",x"e0",x"e5",x"e6",x"ef",x"ec",x"e9",x"ea",
	x"cb",x"c8",x"cd",x"ce",x"c7",x"c4",x"c1",x"c2",x"d3",x"d0",x"d5",x"d6",x"df",x"dc",x"d9",x"da",
	x"5b",x"58",x"5d",x"5e",x"57",x"54",x"51",x"52",x"43",x"40",x"45",x"46",x"4f",x"4c",x"49",x"4a",
	x"6b",x"68",x"6d",x"6e",x"67",x"64",x"61",x"62",x"73",x"70",x"75",x"76",x"7f",x"7c",x"79",x"7a",
	x"3b",x"38",x"3d",x"3e",x"37",x"34",x"31",x"32",x"23",x"20",x"25",x"26",x"2f",x"2c",x"29",x"2a",
	x"0b",x"08",x"0d",x"0e",x"07",x"04",x"01",x"02",x"13",x"10",x"15",x"16",x"1f",x"1c",x"19",x"1a");
	
variable rcon: word_array;
variable key_array: word1_array;
variable sub_array: word_array;
variable rot_array: word_array;
variable r_array: round_array;
variable round1_array: word_array;
variable round2_array: word_array;
variable round3_array: word_array;
variable round4_array: word_array;
variable round5_array: word_array;
variable round6_array: word_array;
variable round7_array: word_array;
variable round8_array: word_array;
variable round9_array: word_array;
variable round10_array: word_array;
variable round11_array: word_array;
variable round12_array: word_array;
variable round13_array: word_array;
variable round14_array: word_array;
variable shift_array: round_array;
variable tempshift1: shiftarray;
variable tempshift2: shiftarray;
variable round_num: integer;
variable plaintext_array: plaintext;
variable temp_slook_up: round_array;
variable tot_rot_array: word_array;
variable mix_array: word3_array;
variable temprot: word3_array;
variable x: integer:=0;	
variable y: integer:=0;
variable z: integer:=0;
variable i: integer;
				
begin
plaintext_array(0) := intext(0 to 31);
plaintext_array(1) := intext(32 to 63);
plaintext_array(2) := intext(64 to 95);
plaintext_array(3) := intext(96 to 127);

key_array(0) := x"1c" & x"1d" & x"1e" & x"1f";
key_array(1) :=	x"18" & x"19" & x"1a" & x"1b";
key_array(2) :=	x"14" & x"15" & x"16" & x"17";
key_array(3) :=	x"10" & x"11" & x"12" & x"13";
key_array(4) :=	x"0c" & x"0d" & x"0e" & x"0f";
key_array(5) :=	x"08" & x"09" & x"0a" & x"0b";
key_array(6) :=	x"04" & x"05" & x"06" & x"07";
key_array(7) :=	x"00" & x"01" & x"02" & x"03";

rcon(0) := x"01000000";
rcon(1) := x"02000000";
rcon(2) := x"04000000";
rcon(3) := x"08000000";
rcon(4) := x"10000000";
rcon(5) := x"20000000";
rcon(6) := x"40000000";

-- EXPAND KEY? 	
 X := 31;
 Y := 23;
 for z in 0 to 13 loop
case z is  
	when 0 => --Round 1 Fight
		   sub_array(z) := look_up(to_integer(unsigned(plaintext_array(z)(31 downto 24)))) & look_up(to_integer(unsigned(plaintext_array(z)(23 downto 16)))) 
 		 &look_up(to_integer(unsigned(plaintext_array(z)(15 downto 8)))) & look_up(to_integer(unsigned(plaintext_array(z)(7 downto 0))));
		  
		-- shift rows
			tempshift1(0) <= sub_array(z)(31 downto 24);
			tempshift1(1) <= sub_array(z)(23 downto 16);
			tempshift1(2) <= sub_array(z)(15 downto 8);
			tempshift1(3) <= sub_array(z)(7 downto 0);
			
			if shift_num = 4 then
				tempshift2(0) <= tempshift1(1);
				tempshift2(1) <= tempshift1(2);
				tempshift2(2) <= tempshift1(3);
				tempshift2(3) <= tempshift1(0);
			elsif shift_num = 3 then
				tempshift2(0) <= tempshift1(2);
				tempshift2(1) <= tempshift1(3);
				tempshift2(2) <= tempshift1(0);
				tempshift2(3) <= tempshift1(1);		
			elsif shift_num = 2 then
				tempshift2(0) <= tempshift1(3);
				tempshift2(1) <= tempshift1(0);
				tempshift2(2) <= tempshift1(1);
				tempshift2(3) <= tempshift1(2);	
			else
				tempshift2(0) <= tempshift1(0);
				tempshift2(1) <= tempshift1(1);
				tempshift2(2) <= tempshift1(2);
				tempshift2(3) <= tempshift1(3);
			end if;
			
			round1_array(i) <= tempshift2(0)&tempshift2(1)&tempshift2(2)&temp2(3);  
			--intergers for loop
		  X :=31;
		  Y :=23;	 
		  
		  --mix columns 
		 for i in 3 downto 0 loop  
			 temprot(i) := round1_array(0)(x downto y) & round1_array(1)(x downto y) & round1_array(2)(x downto y) & round1_array(3)(x downto y) 
				& round1_array(4)(x downto y) & round1_array(5)(x downto y) & round1_array(6)(x downto y) & round1_array(7)(x downto y);
			x :=x-7;
			y :=y-7;
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round1_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
			 
		end loop; 		
		
		-- rotating and subsitiuting for the key expander
		 rot_array (z) := key_array(z)(22 downto 0) & key_array(z)(31 downto 23); --Used fror the first round key 
 		 sub_array(z) := look_up(to_integer(unsigned(rot_array(z)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(z)(23 downto 16)))) 
 		 &look_up(to_integer(unsigned(rot_array(z)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(z)(7 downto 0)))); --For round 1	   
			  
		--adding round key to the cyper text
		 
		 for arraynum in 7 downto 0 loop  
			 if arraynum = 7 then
			 	round1_array(arraynum) :=	sub_array(0) xor key_array(arraynum) xor rcon(0); 
			 else
				 round1_array(arraynum) := round1_array(arraynum+1) xor key_array(arraynum);
			end if;
		 end loop;
		 			 
		 
	 when 1 =>
	 	rot_array (1) := round1_array(0)(22 downto 0) & round1_array(0)(31 downto 23);
	 	sub_array(1) := look_up(to_integer(unsigned(rot_array(1)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(1)(23 downto 16)))) 
 		&look_up(to_integer(unsigned(rot_array(1)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(1)(7 downto 0)))); 
		 
		 for arraynum in 7 downto 0 loop 
			 if arraynum =7 then
				 round2_array(arraynum) := sub_array(1)	xor round1_array(arraynum);
			 else
				 round2_array(arraynum) := round2_array(arraynum+1) xor round1_array(arraynum);
			 end if;
		 end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round2_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop;
 	
	when 2 =>
		rot_array (2) := round2_array(0)(22 downto 0) & round2_array(0)(31 downto 23); --Used fror the third round key
	 	sub_array(2) := look_up(to_integer(unsigned(rot_array(2)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(2)(23 downto 16)))) 
		&look_up(to_integer(unsigned(rot_array(2)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(2)(7 downto 0)))); --For round 3 
			
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then 
				round3_array(7) := sub_array(2) xor round2_array(7) xor rcon(1);
			else 
				round3_array(arraynum) := round3_array(arraynum+1) xor round2_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round3_array(0)(x downto y) & round3_array(1)(x downto y) & round3_array(2)(x downto y) & round3_array(3)(x downto y) 
				& round3_array(4)(x downto y) & round3_array(5)(x downto y) & round3_array(6)(x downto y) & round3_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round3_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop;
 	 
	when 3 => 
		rot_array (3) := round3_array(0)(22 downto 0) & round3_array(0)(31 downto 23); --Used fror the forth round key	
		sub_array(3) := look_up(to_integer(unsigned(rot_array(3)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(3)(23 downto 16)))) 
		&look_up(to_integer(unsigned(rot_array(3)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(3)(7 downto 0)))); --For round 4
				 
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				round4_array(arraynum) :=	sub_array(3) xor round3_array(arraynum);
			else 
				round4_array(arraynum) := round4_array(arraynum+1) xor round3_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round4_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop;
	
	when 4=>
	 rot_array (4) := round4_array(0)(22 downto 0) & round4_array(0)(31 downto 23); --Used fror the fifth round key	
	 sub_array(4) := look_up(to_integer(unsigned(rot_array(4)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(4)(23 downto 16)))) 
	 &look_up(to_integer(unsigned(rot_array(4)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(4)(7 downto 0)))); --For round 5
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				 round5_array(arraynum) := sub_array(4) xor round4_array(arraynum) xor rcon (2);
			else 
				 round5_array(arraynum) := round5_array(arraynum+1) xor round4_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round5_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop;
	when 5=>
	  rot_array (5) := round5_array(0)(22 downto 0) & round5_array(0)(31 downto 23);	 
	 sub_array(5) := look_up(to_integer(unsigned(rot_array(5)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(5)(23 downto 16)))) 
	 &look_up(to_integer(unsigned(rot_array(5)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(5)(7 downto 0)))); --For round 6
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				  round6_array(arraynum) := sub_array(5) xor round5_array(arraynum);
			else 
				 round6_array(arraynum) := round6_array(arraynum+1) xor round5_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round6_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop;	
	when 6=>
	   rot_array (6) := round6_array(0)(22 downto 0) & round6_array(0)(31 downto 23);
	 sub_array(6) := look_up(to_integer(unsigned(rot_array(6)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(6)(23 downto 16)))) 
	 &look_up(to_integer(unsigned(rot_array(6)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(6)(7 downto 0)))); --For round 7
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				 round7_array(arraynum) := sub_array(6) xor round6_array(arraynum) xor rcon(3);
			else 
				 round7_array(arraynum) := round7_array(arraynum+1) xor round6_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round7_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop;			 	 
	when 7=>
		 rot_array (7) := round7_array(0)(22 downto 0) & round7_array(0)(31 downto 23);	
		 sub_array(7) := look_up(to_integer(unsigned(rot_array(7)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(7)(23 downto 16)))) 
		 &look_up(to_integer(unsigned(rot_array(7)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(7)(7 downto 0)))); --For round 8
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				 round8_array(arraynum) := sub_array(7) xor round7_array(arraynum);
			else 
				 round8_array(arraynum) := round8_array(arraynum+1) xor round7_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round8_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop;
	when 8=>
		 rot_array (8) := round8_array(0)(22 downto 0) & round8_array(0)(31 downto 23); 
		 sub_array(8) := look_up(to_integer(unsigned(rot_array(8)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(8)(23 downto 16)))) 
		 &look_up(to_integer(unsigned(rot_array(8)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(8)(7 downto 0)))); --For round 9	
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				 round9_array(arraynum) :=	sub_array(8) xor round8_array(arraynum) xor rcon(4);
			else 
				 round9_array(arraynum) := round9_array(arraynum+1) xor round8_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round9_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop;
	when 9=>
		 rot_array (9) := round9_array(0)(22 downto 0) & round9_array(0)(31 downto 23); --Used fror the Second round key  
		 sub_array(9) := look_up(to_integer(unsigned(rot_array(9)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(9)(23 downto 16)))) 
		 &look_up(to_integer(unsigned(rot_array(9)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(9)(7 downto 0)))); --For round 10	
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				 round10_array(arraynum) := sub_array(9) xor round9_array(arraynum);
			else 
				 round10_array(arraynum) := round10_array(arraynum+1) xor round9_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round10_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop; 
	when 10=>
		 rot_array (10) := round10_array(0)(22 downto 0) & round10_array(0)(31 downto 23); --Used fror the third round key	
		 sub_array(10) := look_up(to_integer(unsigned(rot_array(10)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(10)(23 downto 16)))) 
		 &look_up(to_integer(unsigned(rot_array(10)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(10)(7 downto 0)))); --For round 11	
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				 round11_array(arraynum) := sub_array(10) xor round10_array(arraynum) xor rcon(5);
			else 
				 round11_array(arraynum) := round11_array(arraynum+1) xor round10_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round11_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop; 
	when 11=>
		 rot_array (11) := round11_array(0)(22 downto 0) & round11_array(0)(31 downto 23); --Used fror the forth round key 
		 sub_array(11) := look_up(to_integer(unsigned(rot_array(11)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(11)(23 downto 16)))) 
		 &look_up(to_integer(unsigned(rot_array(11)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(11)(7 downto 0)))); --For round 12	
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				 round12_array(arraynum) := sub_array(11) xor round11_array(arraynum);
			else 
				 round12_array(arraynum) := round12_array(arraynum+1) xor round11_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round12_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop; 
	when 12=>
		 rot_array (12) := round12_array(0)(22 downto 0) & round12_array(0)(31 downto 23); --Used fror the fifth round key	
		 sub_array(12) := look_up(to_integer(unsigned(rot_array(12)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(12)(23 downto 16)))) 
		 &look_up(to_integer(unsigned(rot_array(12)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(12)(7 downto 0)))); --For round 13	
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				 round13_array(arraynum) := sub_array(12) xor round12_array(arraynum) xor rcon(6);
			else 
				 round13_array(arraynum) := round13_array(arraynum+1) xor round12_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round13_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop; 	
	when 13=>
		 rot_array (13) := round13_array(0)(22 downto 0) & round13_array(0)(31 downto 23);
		 sub_array(13) := look_up(to_integer(unsigned(rot_array(13)(31 downto 24)))) & look_up(to_integer(unsigned(rot_array(13)(23 downto 16)))) 
		 &look_up(to_integer(unsigned(rot_array(13)(15 downto 8)))) & look_up(to_integer(unsigned(rot_array(13)(7 downto 0)))); --For round 14 
		for arraynum in 7 downto 0 loop 
			if arraynum = 7 then
				 round14_array(arraynum) := sub_array(13) xor round13_array(arraynum);
			else 
				 round14_array(arraynum) := round14_array(arraynum+1) xor round13_array(arraynum);
			end if;
		end loop;

		  X :=31;
		  Y :=23;
		
		 for i in 3 downto 0 loop  
			 temprot(i) := round2_array(0)(x downto y) & round2_array(1)(x downto y) & round2_array(2)(x downto y) & round2_array(3)(x downto y) 
				& round2_array(4)(x downto y) & round2_array(5)(x downto y) & round2_array(6)(x downto y) & round2_array(7)(x downto y);
			x :=x-7;
			y :=y-7; 
		 end loop;
		 
		 x:=63; y:=56; 
		 for i in 0 to 7 loop
			 mix_array(0) := look_up2(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(1) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up3(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));		  
			 mix_array(2) := look_up(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up2(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up3(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			 mix_array(3) := look_up3(to_integer(unsigned(temprot(0)(x-(i*8) downto y-(i*8))))) xor look_up(to_integer(unsigned(temprot(1)(x-(i*8) downto y-(i*8))))) 
	 		 xor look_up(to_integer(unsigned(temprot(2)(x-(i*8) downto y-(i*8))))) xor look_up2(to_integer(unsigned(temprot(3)(x-(i*8) downto y-(i*8)))));
			  
			 round14_array(i) := mix_array(0) & mix_array(1) & mix_array (2) & mix_array(3);
		end loop;

	when others=> exit;
	
		
	end case;
	end loop; 

 ---TODO the rest
for round_num in 0 to 15 loop
 case round_num is 
	 when 0 =>
	 --inital xor with the cipher key
	 r_array(round_num) := key_array (7)&key_array (6)&key_array (5)&key_array 
	 (4)&key_array (3)&key_array (2)&key_array (1)&key_array (0) xor 
	 plaintext_array(0) & plaintext_array(1) & plaintext_array(2) & plaintext_array(3);
	 
	 
	 when 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 =>
	 -- hopes this does what we want it to do
	  temp_slook_up(round_num) := look_up(to_integer(unsigned(r_array(round_num-1)(255 downto 248)))) & look_up(to_integer(unsigned(r_array(round_num-1)(247 downto 240)))) 
					  &look_up(to_integer(unsigned(r_array(round_num-1)(239 downto 232)))) & look_up(to_integer(unsigned(r_array(round_num-1)(231 downto 224)))) 
					  &look_up(to_integer(unsigned(r_array(round_num-1)(223 downto 216)))) & look_up(to_integer(unsigned(r_array(round_num-1)(215 downto 208)))) 
					  &look_up(to_integer(unsigned(r_array(round_num-1)(207 downto 200)))) & look_up(to_integer(unsigned(r_array(round_num-1)(199 downto 192))))
					  &look_up(to_integer(unsigned(r_array(round_num-1)(191 downto 184)))) & look_up(to_integer(unsigned(r_array(round_num-1)(183 downto 176)))) 
					  &look_up(to_integer(unsigned(r_array(round_num-1)(175 downto 168)))) & look_up(to_integer(unsigned(r_array(round_num-1)(167 downto 160))))
					  &look_up(to_integer(unsigned(r_array(round_num-1)(159 downto 152)))) & look_up(to_integer(unsigned(r_array(round_num-1)(151 downto 144)))) 
					  &look_up(to_integer(unsigned(r_array(round_num-1)(143 downto 136)))) & look_up(to_integer(unsigned(r_array(round_num-1)(135 downto 128))))
					  &look_up(to_integer(unsigned(r_array(round_num-1)(127 downto 120)))) & look_up(to_integer(unsigned(r_array(round_num-1)(119 downto 112)))) 
					  &look_up(to_integer(unsigned(r_array(round_num-1)(111 downto 104)))) & look_up(to_integer(unsigned(r_array(round_num-1)(103 downto 96))))
					  &look_up(to_integer(unsigned(r_array(round_num-1)(95 downto 88)))) & look_up(to_integer(unsigned(r_array(round_num-1)(87 downto 80)))) 
					  &look_up(to_integer(unsigned(r_array(round_num-1)(79 downto 72)))) & look_up(to_integer(unsigned(r_array(round_num-1)(71 downto 64))))
					  &look_up(to_integer(unsigned(r_array(round_num-1)(63 downto 56)))) & look_up(to_integer(unsigned(r_array(round_num-1)(55 downto 48)))) 
				 	  &look_up(to_integer(unsigned(r_array(round_num-1)(47 downto 40)))) & look_up(to_integer(unsigned(r_array(round_num-1)(39 downto 32))))
					  &look_up(to_integer(unsigned(r_array(round_num-1)(31 downto 24)))) & look_up(to_integer(unsigned(r_array(round_num-1)(23 downto 16)))) 
				 		&look_up(to_integer(unsigned(r_array(round_num-1)(15 downto 8)))) & look_up(to_integer(unsigned(r_array(round_num-1)(7 downto 0))));
					  
	  shift_array(round_num) := temp_slook_up(round_num)(7 downto 0) & temp_slook_up(round_num)(47 downto 40) & temp_slook_up(round_num)(87 downto 80) &
					  temp_slook_up(round_num)(127 downto 120) & temp_slook_up(round_num)(39 downto 32) & temp_slook_up(round_num)(79 downto 72) &
					  temp_slook_up(round_num)(119 downto 112) & temp_slook_up(round_num)(31 downto 25) & temp_slook_up(round_num)(71 downto 64) &
					  temp_slook_up(round_num)(111 downto 104) & temp_slook_up(round_num)(24 downto 16) & temp_slook_up(round_num)(63 downto 56) &
					  temp_slook_up(round_num)(103 downto 96) & temp_slook_up(round_num)(15 downto 8) & temp_slook_up(round_num)(55 downto 48) &
					  temp_slook_up(round_num)(95 downto 88);
	  				  
		if round_num = 1 then
			r_array(round_num) := round1_array (7)&round1_array (6)&round1_array (5)&round1_array (4)
			&round1_array (3)&round1_array (2)&round1_array (1)&round1_array (0) xor
			shift_array(round_num);
	  	
		elsif round_num = 2 then
			 r_array(round_num) := round2_array (7)&round2_array (6)&round2_array (5)&round2_array (4)
			&round2_array (3)&round2_array (2)&round2_array (1)&round2_array (0) xor
			shift_array(round_num);
		
		elsif round_num = 3 then
			 r_array(round_num) := round3_array (7)&round3_array (6)&round3_array (5)&round3_array (4)
			&round3_array (3)&round3_array (2)&round3_array (1)&round3_array (0) xor
			shift_array(round_num);
			
		elsif round_num = 4 then
			 r_array(round_num) := round4_array (7)&round4_array (6)&round4_array (5)&round4_array (4)
			&round4_array (3)&round4_array (2)&round4_array (1)&round4_array (0) xor
			shift_array(round_num);
			
		elsif round_num = 5 then
			 r_array(round_num) := round5_array (7)&round5_array (6)&round5_array (5)&round5_array (4)
			&round5_array (3)&round5_array (2)&round5_array (1)&round5_array (0) xor
			shift_array(round_num);
			
		elsif round_num = 6 then
			 r_array(round_num) := round6_array (7)&round6_array (6)&round6_array (5)&round6_array (4)
			&round6_array (3)&round6_array (2)&round6_array (1)&round6_array (0) xor
			shift_array(round_num);
			
		elsif round_num = 7 then
			 r_array(round_num) := round7_array (7)&round7_array (6)&round7_array (5)&round7_array (4)
			&round7_array (3)&round7_array (2)&round7_array (1)&round7_array (0) xor
			shift_array(round_num);
			
		elsif round_num = 8 then
			 r_array(round_num) := round8_array (7)&round8_array (6)&round8_array (5)&round8_array (4)
			&round8_array (3)&round8_array (2)&round8_array (1)&round8_array (0) xor
			shift_array(round_num);
			
		elsif round_num = 9 then
			 r_array(round_num) := round9_array (7)&round9_array (6)&round9_array (5)&round9_array (4)
			&round9_array (3)&round9_array (2)&round9_array (1)&round9_array (0) xor
			shift_array(round_num);
		
		elsif round_num = 10 then
			 r_array(round_num) := round10_array (7)&round10_array (6)&round10_array (5)&round10_array (4)
			&round10_array (3)&round10_array (2)&round10_array (1)&round10_array (0) xor
			shift_array(round_num);
			
		elsif round_num = 11 then
			 r_array(round_num) := round11_array (7)&round11_array (6)&round11_array (5)&round11_array (4)
			&round11_array (3)&round11_array (2)&round11_array (1)&round11_array (0) xor
			shift_array(round_num);
			
		elsif round_num = 12 then
			 r_array(round_num) := round12_array (7)&round12_array (6)&round12_array (5)&round12_array (4)
			&round12_array (3)&round12_array (2)&round12_array (1)&round12_array (0) xor
			shift_array(round_num);
			
		elsif round_num = 13 then
			 r_array(round_num) := round13_array (7)&round13_array (6)&round13_array (5)&round13_array (4)
			&round13_array (3)&round13_array (2)&round13_array (1)&round13_array (0) xor
			shift_array(round_num);	
			  
		end if;
	 
	 
	 when 14 =>	  
	  temp_slook_up(round_num) := look_up(to_integer(unsigned(r_array(round_num-1)(255 downto 248)))) & look_up(to_integer(unsigned(r_array(round_num-1)(247 downto 240)))) 
				  &look_up(to_integer(unsigned(r_array(round_num-1)(239 downto 232)))) & look_up(to_integer(unsigned(r_array(round_num-1)(231 downto 224)))) 
				  &look_up(to_integer(unsigned(r_array(round_num-1)(223 downto 216)))) & look_up(to_integer(unsigned(r_array(round_num-1)(215 downto 208)))) 
				  &look_up(to_integer(unsigned(r_array(round_num-1)(207 downto 200)))) & look_up(to_integer(unsigned(r_array(round_num-1)(199 downto 192))))
				  &look_up(to_integer(unsigned(r_array(round_num-1)(191 downto 184)))) & look_up(to_integer(unsigned(r_array(round_num-1)(183 downto 176)))) 
				  &look_up(to_integer(unsigned(r_array(round_num-1)(175 downto 168)))) & look_up(to_integer(unsigned(r_array(round_num-1)(167 downto 160))))
				  &look_up(to_integer(unsigned(r_array(round_num-1)(159 downto 152)))) & look_up(to_integer(unsigned(r_array(round_num-1)(151 downto 144)))) 
				  &look_up(to_integer(unsigned(r_array(round_num-1)(143 downto 136)))) & look_up(to_integer(unsigned(r_array(round_num-1)(135 downto 128))))
				  &look_up(to_integer(unsigned(r_array(round_num-1)(127 downto 120)))) & look_up(to_integer(unsigned(r_array(round_num-1)(119 downto 112)))) 
				  &look_up(to_integer(unsigned(r_array(round_num-1)(111 downto 104)))) & look_up(to_integer(unsigned(r_array(round_num-1)(103 downto 96))))
				  &look_up(to_integer(unsigned(r_array(round_num-1)(95 downto 88)))) & look_up(to_integer(unsigned(r_array(round_num-1)(87 downto 80)))) 
				  &look_up(to_integer(unsigned(r_array(round_num-1)(79 downto 72)))) & look_up(to_integer(unsigned(r_array(round_num-1)(71 downto 64))))
				  &look_up(to_integer(unsigned(r_array(round_num-1)(63 downto 56)))) & look_up(to_integer(unsigned(r_array(round_num-1)(55 downto 48)))) 
			 	  &look_up(to_integer(unsigned(r_array(round_num-1)(47 downto 40)))) & look_up(to_integer(unsigned(r_array(round_num-1)(39 downto 32))))
				  &look_up(to_integer(unsigned(r_array(round_num-1)(31 downto 24)))) & look_up(to_integer(unsigned(r_array(round_num-1)(23 downto 16)))) 
			 	  &look_up(to_integer(unsigned(r_array(round_num-1)(15 downto 8)))) & look_up(to_integer(unsigned(r_array(round_num-1)(7 downto 0))));
				  
	  shift_array(round_num) := temp_slook_up(round_num)(7 downto 0) & temp_slook_up(round_num)(47 downto 40) & temp_slook_up(round_num)(87 downto 80) &
					  temp_slook_up(round_num)(127 downto 120) & temp_slook_up(round_num)(39 downto 32) & temp_slook_up(round_num)(79 downto 72) &
					  temp_slook_up(round_num)(119 downto 112) & temp_slook_up(round_num)(31 downto 25) & temp_slook_up(round_num)(71 downto 64) &
					  temp_slook_up(round_num)(111 downto 104) & temp_slook_up(round_num)(24 downto 16) & temp_slook_up(round_num)(63 downto 56) &
					  temp_slook_up(round_num)(103 downto 96) & temp_slook_up(round_num)(15 downto 8) & temp_slook_up(round_num)(55 downto 48) &
					  temp_slook_up(round_num)(95 downto 88);
					  
		if round_num = 14 then
			r_array(round_num) := round14_array (7)&round14_array (6)&round14_array (5)&round14_array (4)
			&round14_array (3)&round14_array (2)&round14_array (1)&round14_array (0) xor
			shift_array(round_num);
	  	end if;	
	 
	 when others => exit;
 end case;
 end loop;
    cyphertext <= r_array(14);
 
 end process;
end some_name;

