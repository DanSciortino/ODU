-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "01/28/2016 21:27:49"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab2_3 IS
    PORT (
	SW : IN std_logic_vector(15 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6)
	);
END lab2_3;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 3.0-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab2_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \BlankOut~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~196_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[98]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[97]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~109_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~112_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~232_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~197_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~114_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~115_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~118_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~119_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~198_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~120_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[153]~199_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[153]~121_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~122_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~200_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~123_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~201_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~124_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[149]~125_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~126_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~127_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~128_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~129_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[144]~130_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[170]~131_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[170]~202_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[169]~203_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[169]~132_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[168]~204_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[168]~133_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[167]~205_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[167]~134_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[166]~135_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[165]~136_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[164]~137_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[163]~138_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[162]~139_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[161]~140_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[160]~141_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[187]~142_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[187]~206_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[186]~143_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[186]~207_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[185]~208_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[185]~144_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[184]~209_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[184]~145_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[183]~210_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[183]~146_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[182]~147_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[181]~148_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[180]~149_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[179]~150_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[178]~151_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[177]~152_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[176]~153_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[204]~154_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[204]~211_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[203]~155_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[203]~212_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[202]~156_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[202]~213_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[201]~157_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[201]~214_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[200]~158_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[200]~215_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[199]~159_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[199]~216_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[198]~160_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[197]~161_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[196]~162_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[195]~163_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[194]~164_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[193]~165_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[192]~166_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[221]~217_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[221]~167_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[220]~168_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[220]~218_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[219]~169_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[219]~219_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[218]~170_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[218]~220_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[217]~221_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[217]~171_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[216]~222_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[216]~172_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[215]~223_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[215]~173_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[214]~174_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[213]~175_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[212]~176_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[211]~177_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[210]~178_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[209]~179_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[208]~180_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \Mux42~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \result~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[238]~181_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[238]~224_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[237]~225_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[237]~182_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[236]~226_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[236]~183_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[235]~184_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[235]~227_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[234]~185_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[234]~228_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[233]~186_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[233]~229_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[232]~230_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[232]~187_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[231]~188_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[231]~231_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[230]~189_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[229]~190_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[228]~191_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[227]~192_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[226]~193_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[225]~194_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[224]~195_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[10]~21_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[11]~23_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[12]~25_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[13]~27_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[14]~29_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[15]~31_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[16]~32_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \BlankOut~2_combout\ : std_logic;
SIGNAL \BlankOut~1_combout\ : std_logic;
SIGNAL \BlankOut~3_combout\ : std_logic;
SIGNAL \Mux71~1_combout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \Mux70~1_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mux69~1_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux66~1_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux65~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \result~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mux39~combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \result~4_combout\ : std_logic;
SIGNAL \Mux37~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \result~5_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(271 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux50~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux71~1_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\SW[15]~input_o\ & \SW[14]~input_o\ & \SW[13]~input_o\ & \SW[12]~input_o\ & \SW[11]~input_o\ & \SW[10]~input_o\ & \SW[9]~input_o\ & \SW[8]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\SW[7]~input_o\ & \SW[6]~input_o\ & \SW[5]~input_o\ & \SW[4]~input_o\ & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux50~1_combout\ <= NOT \Mux50~1_combout\;
\ALT_INV_Mux57~1_combout\ <= NOT \Mux57~1_combout\;
\ALT_INV_Mux64~1_combout\ <= NOT \Mux64~1_combout\;
\ALT_INV_Mux71~1_combout\ <= NOT \Mux71~1_combout\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux71~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux70~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux69~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux68~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux67~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux66~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux65~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux64~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux57~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux50~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux27~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X109_Y12_N30
\result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~1_combout\ = (\SW[2]~input_o\) # (\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[10]~input_o\,
	combout => \result~1_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X105_Y12_N8
\Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\KEY[2]~input_o\) # ((\KEY[0]~input_o\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Mux41~2_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X100_Y12_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\SW[0]~input_o\ & (\SW[8]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & (\SW[8]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\SW[0]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[8]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X100_Y12_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\SW[1]~input_o\ & ((\SW[9]~input_o\ & (\Add0~1\ & VCC)) # (!\SW[9]~input_o\ & (!\Add0~1\)))) # (!\SW[1]~input_o\ & ((\SW[9]~input_o\ & (!\Add0~1\)) # (!\SW[9]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\SW[1]~input_o\ & (!\SW[9]~input_o\ & !\Add0~1\)) # (!\SW[1]~input_o\ & ((!\Add0~1\) # (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[9]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X100_Y12_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\SW[10]~input_o\ $ (\SW[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\SW[10]~input_o\ & ((\SW[2]~input_o\) # (!\Add0~3\))) # (!\SW[10]~input_o\ & (\SW[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X108_Y12_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\SW[8]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[8]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\SW[8]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X108_Y12_N6
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\SW[9]~input_o\ & ((\SW[1]~input_o\ & (!\Add1~1\)) # (!\SW[1]~input_o\ & (\Add1~1\ & VCC)))) # (!\SW[9]~input_o\ & ((\SW[1]~input_o\ & ((\Add1~1\) # (GND))) # (!\SW[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\SW[9]~input_o\ & (\SW[1]~input_o\ & !\Add1~1\)) # (!\SW[9]~input_o\ & ((\SW[1]~input_o\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X108_Y12_N8
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\SW[2]~input_o\ $ (\SW[10]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\SW[2]~input_o\ & (\SW[10]~input_o\ & !\Add1~3\)) # (!\SW[2]~input_o\ & ((\SW[10]~input_o\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[10]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X108_Y12_N26
\Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\KEY[1]~input_o\ & (((\KEY[0]~input_o\)))) # (!\KEY[1]~input_o\ & ((\SW[2]~input_o\ & (\SW[10]~input_o\ $ (\KEY[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[10]~input_o\ & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X108_Y12_N30
\Mux41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = (\Mux41~3_combout\ & ((\Add0~4_combout\) # ((!\KEY[1]~input_o\)))) # (!\Mux41~3_combout\ & (((\Add1~4_combout\ & \KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add1~4_combout\,
	datac => \Mux41~3_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Mux41~4_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X97_Y8_N0
\BlankOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlankOut~0_combout\ = (!\SW[7]~input_o\ & (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \BlankOut~0_combout\);

-- Location: LCCOMB_X103_Y13_N20
\Div0|auto_generated|divider|divider|op_7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_cout\ = CARRY(!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_7~1_cout\);

-- Location: LCCOMB_X103_Y13_N22
\Div0|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~2_combout\ = (\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|op_7~1_cout\) # (GND))) # (!\SW[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_7~1_cout\))
-- \Div0|auto_generated|divider|divider|op_7~3\ = CARRY((\SW[1]~input_o\) # (!\Div0|auto_generated|divider|divider|op_7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X103_Y13_N24
\Div0|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~4_combout\ = (\SW[2]~input_o\ & (!\Div0|auto_generated|divider|divider|op_7~3\ & VCC)) # (!\SW[2]~input_o\ & (\Div0|auto_generated|divider|divider|op_7~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|op_7~5\ = CARRY((!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~3\,
	combout => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X103_Y13_N26
\Div0|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_combout\ = !\Div0|auto_generated|divider|divider|op_7~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~5\,
	combout => \Div0|auto_generated|divider|divider|op_7~6_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X103_Y13_N18
\Div0|auto_generated|divider|divider|StageOut[34]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~80_combout\ = (!\Div0|auto_generated|divider|divider|op_7~6_combout\ & (\Div0|auto_generated|divider|divider|op_7~4_combout\ & (!\SW[3]~input_o\ & \BlankOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	datac => \SW[3]~input_o\,
	datad => \BlankOut~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~80_combout\);

-- Location: LCCOMB_X103_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[33]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~81_combout\ = (!\SW[3]~input_o\ & (\Div0|auto_generated|divider|divider|op_7~2_combout\ & (!\Div0|auto_generated|divider|divider|op_7~6_combout\ & \BlankOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datad => \BlankOut~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~81_combout\);

-- Location: LCCOMB_X103_Y13_N14
\Div0|auto_generated|divider|divider|StageOut[32]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ = (!\Div0|auto_generated|divider|divider|op_7~6_combout\ & (\SW[0]~input_o\ & (!\SW[3]~input_o\ & \BlankOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \BlankOut~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~82_combout\);

-- Location: LCCOMB_X103_Y13_N0
\Div0|auto_generated|divider|divider|op_8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~1_cout\ = CARRY(!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_8~1_cout\);

-- Location: LCCOMB_X103_Y13_N2
\Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~2_combout\ = (\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ & (!\Div0|auto_generated|divider|divider|op_8~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ & ((\Div0|auto_generated|divider|divider|op_8~1_cout\) # (GND))))) # (!\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ & (!\Div0|auto_generated|divider|divider|op_8~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_8~3\ = CARRY((\SW[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_8~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[32]~82_combout\))) # (!\SW[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[32]~82_combout\ & !\Div0|auto_generated|divider|divider|op_8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~82_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X103_Y13_N4
\Div0|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[33]~81_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|op_8~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_8~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[33]~81_combout\ & ((!\Div0|auto_generated|divider|divider|op_8~3\) # (!\SW[2]~input_o\))) # (!\Div0|auto_generated|divider|divider|StageOut[33]~81_combout\ 
-- & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~81_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~3\,
	combout => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X103_Y13_N6
\Div0|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~6_combout\ = (\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[34]~80_combout\ & (!\Div0|auto_generated|divider|divider|op_8~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[34]~80_combout\ 
-- & ((\Div0|auto_generated|divider|divider|op_8~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[34]~80_combout\ & (\Div0|auto_generated|divider|divider|op_8~5\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[34]~80_combout\ & (!\Div0|auto_generated|divider|divider|op_8~5\))))
-- \Div0|auto_generated|divider|divider|op_8~7\ = CARRY((\SW[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_8~5\) # (!\Div0|auto_generated|divider|divider|StageOut[34]~80_combout\))) # (!\SW[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[34]~80_combout\ & !\Div0|auto_generated|divider|divider|op_8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~80_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~5\,
	combout => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X103_Y13_N8
\Div0|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~8_combout\ = \Div0|auto_generated|divider|divider|op_8~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~7\,
	combout => \Div0|auto_generated|divider|divider|op_8~8_combout\);

-- Location: LCCOMB_X103_Y13_N16
\Div0|auto_generated|divider|divider|StageOut[51]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~83_combout\ = (\BlankOut~0_combout\ & ((\Div0|auto_generated|divider|divider|op_8~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~80_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\Div0|auto_generated|divider|divider|op_8~6_combout\))))) # (!\BlankOut~0_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~80_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~83_combout\);

-- Location: LCCOMB_X103_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[50]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ = (\BlankOut~0_combout\ & ((\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~81_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & (\Div0|auto_generated|divider|divider|op_8~4_combout\)))) # (!\BlankOut~0_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[33]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~0_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[33]~81_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~84_combout\);

-- Location: LCCOMB_X103_Y13_N12
\Div0|auto_generated|divider|divider|StageOut[49]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~85_combout\ = (\BlankOut~0_combout\ & ((\Div0|auto_generated|divider|divider|op_8~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[32]~82_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & ((\Div0|auto_generated|divider|divider|op_8~2_combout\))))) # (!\BlankOut~0_combout\ & (\Div0|auto_generated|divider|divider|StageOut[32]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~82_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X103_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[48]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~86_combout\ = (\BlankOut~0_combout\ & (!\Div0|auto_generated|divider|divider|op_8~8_combout\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \SW[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~86_combout\);

-- Location: LCCOMB_X103_Y12_N10
\Div0|auto_generated|divider|divider|op_9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~1_cout\ = CARRY(!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_9~1_cout\);

-- Location: LCCOMB_X103_Y12_N12
\Div0|auto_generated|divider|divider|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[48]~86_combout\ & ((\SW[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_9~1_cout\)) # (!\SW[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_9~1_cout\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[48]~86_combout\ & ((\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|op_9~1_cout\) # (GND))) # (!\SW[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_9~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_9~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[48]~86_combout\ & (\SW[1]~input_o\ & !\Div0|auto_generated|divider|divider|op_9~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[48]~86_combout\ 
-- & ((\SW[1]~input_o\) # (!\Div0|auto_generated|divider|divider|op_9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[48]~86_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X103_Y12_N14
\Div0|auto_generated|divider|divider|op_9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[49]~85_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|op_9~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~85_combout\ & ((!\Div0|auto_generated|divider|divider|op_9~3\) # (!\SW[2]~input_o\))) # (!\Div0|auto_generated|divider|divider|StageOut[49]~85_combout\ 
-- & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~3\,
	combout => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X103_Y12_N16
\Div0|auto_generated|divider|divider|op_9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ & ((\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|op_9~5\)) # (!\SW[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_9~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ & ((\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|op_9~5\) # (GND))) # (!\SW[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_9~5\))))
-- \Div0|auto_generated|divider|divider|op_9~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ & (\SW[3]~input_o\ & !\Div0|auto_generated|divider|divider|op_9~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ & 
-- ((\SW[3]~input_o\) # (!\Div0|auto_generated|divider|divider|op_9~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~84_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~5\,
	combout => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X103_Y12_N18
\Div0|auto_generated|divider|divider|op_9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[51]~83_combout\ $ (\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|op_9~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~83_combout\ & ((!\Div0|auto_generated|divider|divider|op_9~7\) # (!\SW[4]~input_o\))) # (!\Div0|auto_generated|divider|divider|StageOut[51]~83_combout\ 
-- & (!\SW[4]~input_o\ & !\Div0|auto_generated|divider|divider|op_9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~83_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~7\,
	combout => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X103_Y12_N20
\Div0|auto_generated|divider|divider|op_9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~10_combout\ = !\Div0|auto_generated|divider|divider|op_9~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~9\,
	combout => \Div0|auto_generated|divider|divider|op_9~10_combout\);

-- Location: LCCOMB_X102_Y12_N0
\Div0|auto_generated|divider|divider|selnose[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(68) = (\Div0|auto_generated|divider|divider|op_9~10_combout\) # ((\SW[6]~input_o\) # ((\SW[5]~input_o\) # (\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Div0|auto_generated|divider|divider|selnose\(68));

-- Location: LCCOMB_X103_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[68]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ = (\Div0|auto_generated|divider|divider|selnose\(68) & ((\Div0|auto_generated|divider|divider|StageOut[51]~83_combout\))) # (!\Div0|auto_generated|divider|divider|selnose\(68) & 
-- (\Div0|auto_generated|divider|divider|op_9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(68),
	datab => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[51]~83_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~87_combout\);

-- Location: LCCOMB_X103_Y12_N2
\Div0|auto_generated|divider|divider|StageOut[67]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~88_combout\ = (\Div0|auto_generated|divider|divider|selnose\(68) & ((\Div0|auto_generated|divider|divider|StageOut[50]~84_combout\))) # (!\Div0|auto_generated|divider|divider|selnose\(68) & 
-- (\Div0|auto_generated|divider|divider|op_9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(68),
	datab => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[50]~84_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~88_combout\);

-- Location: LCCOMB_X103_Y12_N28
\Div0|auto_generated|divider|divider|StageOut[66]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ = (\Div0|auto_generated|divider|divider|selnose\(68) & ((\Div0|auto_generated|divider|divider|StageOut[49]~85_combout\))) # (!\Div0|auto_generated|divider|divider|selnose\(68) & 
-- (\Div0|auto_generated|divider|divider|op_9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(68),
	datac => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~89_combout\);

-- Location: LCCOMB_X103_Y12_N6
\Div0|auto_generated|divider|divider|StageOut[65]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~90_combout\ = (\Div0|auto_generated|divider|divider|selnose\(68) & (\Div0|auto_generated|divider|divider|StageOut[48]~86_combout\)) # (!\Div0|auto_generated|divider|divider|selnose\(68) & 
-- ((\Div0|auto_generated|divider|divider|op_9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(68),
	datac => \Div0|auto_generated|divider|divider|StageOut[48]~86_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~90_combout\);

-- Location: LCCOMB_X102_Y12_N26
\Div0|auto_generated|divider|divider|StageOut[64]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~91_combout\ = (!\Div0|auto_generated|divider|divider|selnose\(68) & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|selnose\(68),
	datad => \SW[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~91_combout\);

-- Location: LCCOMB_X102_Y12_N8
\Div0|auto_generated|divider|divider|op_10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~1_cout\ = CARRY(!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_10~1_cout\);

-- Location: LCCOMB_X102_Y12_N10
\Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[64]~91_combout\ & ((\SW[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_10~1_cout\)) # (!\SW[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_10~1_cout\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[64]~91_combout\ & ((\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|op_10~1_cout\) # (GND))) # (!\SW[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_10~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_10~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[64]~91_combout\ & (\SW[1]~input_o\ & !\Div0|auto_generated|divider|divider|op_10~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[64]~91_combout\ & ((\SW[1]~input_o\) # (!\Div0|auto_generated|divider|divider|op_10~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[64]~91_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X102_Y12_N12
\Div0|auto_generated|divider|divider|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[65]~90_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|op_10~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_10~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[65]~90_combout\ & ((!\Div0|auto_generated|divider|divider|op_10~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[65]~90_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[65]~90_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~3\,
	combout => \Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X102_Y12_N14
\Div0|auto_generated|divider|divider|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~6_combout\ = (\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ & (!\Div0|auto_generated|divider|divider|op_10~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ & ((\Div0|auto_generated|divider|divider|op_10~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_10~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ & (!\Div0|auto_generated|divider|divider|op_10~5\))))
-- \Div0|auto_generated|divider|divider|op_10~7\ = CARRY((\SW[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_10~5\) # (!\Div0|auto_generated|divider|divider|StageOut[66]~89_combout\))) # (!\SW[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[66]~89_combout\ & !\Div0|auto_generated|divider|divider|op_10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[66]~89_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~5\,
	combout => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X102_Y12_N16
\Div0|auto_generated|divider|divider|op_10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[67]~88_combout\ $ (\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|op_10~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_10~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[67]~88_combout\ & ((!\Div0|auto_generated|divider|divider|op_10~7\) # (!\SW[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[67]~88_combout\ & (!\SW[4]~input_o\ & !\Div0|auto_generated|divider|divider|op_10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[67]~88_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~7\,
	combout => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X102_Y12_N18
\Div0|auto_generated|divider|divider|op_10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ & ((\SW[5]~input_o\ & (!\Div0|auto_generated|divider|divider|op_10~9\)) # (!\SW[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_10~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ & ((\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|op_10~9\) # (GND))) # (!\SW[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_10~9\))))
-- \Div0|auto_generated|divider|divider|op_10~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ & (\SW[5]~input_o\ & !\Div0|auto_generated|divider|divider|op_10~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[68]~87_combout\ & 
-- ((\SW[5]~input_o\) # (!\Div0|auto_generated|divider|divider|op_10~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[68]~87_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~9\,
	combout => \Div0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X102_Y12_N20
\Div0|auto_generated|divider|divider|op_10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~12_combout\ = \Div0|auto_generated|divider|divider|op_10~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_10~11\,
	combout => \Div0|auto_generated|divider|divider|op_10~12_combout\);

-- Location: LCCOMB_X101_Y12_N8
\Div0|auto_generated|divider|divider|selnose[85]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(85) = (\Div0|auto_generated|divider|divider|op_10~12_combout\) # ((\SW[7]~input_o\) # (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \Div0|auto_generated|divider|divider|selnose\(85));

-- Location: LCCOMB_X102_Y12_N4
\Div0|auto_generated|divider|divider|StageOut[85]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~92_combout\ = (\Div0|auto_generated|divider|divider|selnose\(85) & ((\Div0|auto_generated|divider|divider|StageOut[68]~87_combout\))) # (!\Div0|auto_generated|divider|divider|selnose\(85) & 
-- (\Div0|auto_generated|divider|divider|op_10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(85),
	datab => \Div0|auto_generated|divider|divider|op_10~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[68]~87_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~92_combout\);

-- Location: LCCOMB_X102_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[84]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~93_combout\ = (\Div0|auto_generated|divider|divider|selnose\(85) & ((\Div0|auto_generated|divider|divider|StageOut[67]~88_combout\))) # (!\Div0|auto_generated|divider|divider|selnose\(85) & 
-- (\Div0|auto_generated|divider|divider|op_10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(85),
	datab => \Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[67]~88_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~93_combout\);

-- Location: LCCOMB_X102_Y12_N6
\Div0|auto_generated|divider|divider|StageOut[83]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~94_combout\ = (\Div0|auto_generated|divider|divider|selnose\(85) & ((\Div0|auto_generated|divider|divider|StageOut[66]~89_combout\))) # (!\Div0|auto_generated|divider|divider|selnose\(85) & 
-- (\Div0|auto_generated|divider|divider|op_10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(85),
	datac => \Div0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[66]~89_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~94_combout\);

-- Location: LCCOMB_X102_Y12_N24
\Div0|auto_generated|divider|divider|StageOut[82]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~95_combout\ = (\Div0|auto_generated|divider|divider|selnose\(85) & ((\Div0|auto_generated|divider|divider|StageOut[65]~90_combout\))) # (!\Div0|auto_generated|divider|divider|selnose\(85) & 
-- (\Div0|auto_generated|divider|divider|op_10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(85),
	datac => \Div0|auto_generated|divider|divider|op_10~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[65]~90_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~95_combout\);

-- Location: LCCOMB_X102_Y12_N22
\Div0|auto_generated|divider|divider|StageOut[81]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~196_combout\ = (\Div0|auto_generated|divider|divider|selnose\(85) & (!\Div0|auto_generated|divider|divider|selnose\(68) & ((\SW[0]~input_o\)))) # (!\Div0|auto_generated|divider|divider|selnose\(85) & 
-- (((\Div0|auto_generated|divider|divider|op_10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(85),
	datab => \Div0|auto_generated|divider|divider|selnose\(68),
	datac => \Div0|auto_generated|divider|divider|op_10~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~196_combout\);

-- Location: LCCOMB_X101_Y12_N2
\Div0|auto_generated|divider|divider|StageOut[80]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~96_combout\ = (!\Div0|auto_generated|divider|divider|op_10~12_combout\ & (\SW[0]~input_o\ & (!\SW[7]~input_o\ & !\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_10~12_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~96_combout\);

-- Location: LCCOMB_X101_Y12_N10
\Div0|auto_generated|divider|divider|op_11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~1_cout\ = CARRY(!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_11~1_cout\);

-- Location: LCCOMB_X101_Y12_N12
\Div0|auto_generated|divider|divider|op_11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~2_combout\ = (\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[80]~96_combout\ & (!\Div0|auto_generated|divider|divider|op_11~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[80]~96_combout\ & ((\Div0|auto_generated|divider|divider|op_11~1_cout\) # (GND))))) # (!\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[80]~96_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_11~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[80]~96_combout\ & (!\Div0|auto_generated|divider|divider|op_11~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_11~3\ = CARRY((\SW[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_11~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[80]~96_combout\))) # (!\SW[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[80]~96_combout\ & !\Div0|auto_generated|divider|divider|op_11~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[80]~96_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~3\);

-- Location: LCCOMB_X101_Y12_N14
\Div0|auto_generated|divider|divider|op_11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[81]~196_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|op_11~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_11~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[81]~196_combout\ & ((!\Div0|auto_generated|divider|divider|op_11~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[81]~196_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[81]~196_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~3\,
	combout => \Div0|auto_generated|divider|divider|op_11~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~5\);

-- Location: LCCOMB_X101_Y12_N16
\Div0|auto_generated|divider|divider|op_11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[82]~95_combout\ & ((\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|op_11~5\)) # (!\SW[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_11~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[82]~95_combout\ & ((\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|op_11~5\) # (GND))) # (!\SW[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_11~5\))))
-- \Div0|auto_generated|divider|divider|op_11~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[82]~95_combout\ & (\SW[3]~input_o\ & !\Div0|auto_generated|divider|divider|op_11~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[82]~95_combout\ & 
-- ((\SW[3]~input_o\) # (!\Div0|auto_generated|divider|divider|op_11~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[82]~95_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~5\,
	combout => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~7\);

-- Location: LCCOMB_X101_Y12_N18
\Div0|auto_generated|divider|divider|op_11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[83]~94_combout\ $ (\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|op_11~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_11~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[83]~94_combout\ & ((!\Div0|auto_generated|divider|divider|op_11~7\) # (!\SW[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[83]~94_combout\ & (!\SW[4]~input_o\ & !\Div0|auto_generated|divider|divider|op_11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[83]~94_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~7\,
	combout => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~9\);

-- Location: LCCOMB_X101_Y12_N20
\Div0|auto_generated|divider|divider|op_11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[84]~93_combout\ & ((\SW[5]~input_o\ & (!\Div0|auto_generated|divider|divider|op_11~9\)) # (!\SW[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_11~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[84]~93_combout\ & ((\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|op_11~9\) # (GND))) # (!\SW[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_11~9\))))
-- \Div0|auto_generated|divider|divider|op_11~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[84]~93_combout\ & (\SW[5]~input_o\ & !\Div0|auto_generated|divider|divider|op_11~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[84]~93_combout\ & 
-- ((\SW[5]~input_o\) # (!\Div0|auto_generated|divider|divider|op_11~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[84]~93_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~9\,
	combout => \Div0|auto_generated|divider|divider|op_11~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~11\);

-- Location: LCCOMB_X101_Y12_N22
\Div0|auto_generated|divider|divider|op_11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~12_combout\ = ((\SW[6]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[85]~92_combout\ $ (\Div0|auto_generated|divider|divider|op_11~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_11~13\ = CARRY((\SW[6]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[85]~92_combout\ & !\Div0|auto_generated|divider|divider|op_11~11\)) # (!\SW[6]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[85]~92_combout\) # (!\Div0|auto_generated|divider|divider|op_11~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[85]~92_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~11\,
	combout => \Div0|auto_generated|divider|divider|op_11~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~13\);

-- Location: LCCOMB_X101_Y12_N24
\Div0|auto_generated|divider|divider|op_11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~14_combout\ = !\Div0|auto_generated|divider|divider|op_11~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_11~13\,
	combout => \Div0|auto_generated|divider|divider|op_11~14_combout\);

-- Location: LCCOMB_X101_Y12_N28
\Div0|auto_generated|divider|divider|StageOut[102]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~97_combout\ = (\Div0|auto_generated|divider|divider|op_11~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[85]~92_combout\)))) # (!\Div0|auto_generated|divider|divider|op_11~14_combout\ & 
-- ((\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[85]~92_combout\))) # (!\SW[7]~input_o\ & (\Div0|auto_generated|divider|divider|op_11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~12_combout\,
	datab => \Div0|auto_generated|divider|divider|op_11~14_combout\,
	datac => \SW[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|StageOut[85]~92_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~97_combout\);

-- Location: LCCOMB_X101_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[101]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~98_combout\ = (\SW[7]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[84]~93_combout\)) # (!\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_11~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[84]~93_combout\)) # (!\Div0|auto_generated|divider|divider|op_11~14_combout\ & ((\Div0|auto_generated|divider|divider|op_11~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[84]~93_combout\,
	datab => \Div0|auto_generated|divider|divider|op_11~10_combout\,
	datac => \SW[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_11~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~98_combout\);

-- Location: LCCOMB_X101_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[100]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~99_combout\ = (\SW[7]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[83]~94_combout\)) # (!\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_11~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[83]~94_combout\)) # (!\Div0|auto_generated|divider|divider|op_11~14_combout\ & ((\Div0|auto_generated|divider|divider|op_11~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[83]~94_combout\,
	datab => \Div0|auto_generated|divider|divider|op_11~8_combout\,
	datac => \SW[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_11~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~99_combout\);

-- Location: LCCOMB_X101_Y12_N26
\Div0|auto_generated|divider|divider|StageOut[99]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~100_combout\ = (\Div0|auto_generated|divider|divider|op_11~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[82]~95_combout\)))) # (!\Div0|auto_generated|divider|divider|op_11~14_combout\ & 
-- ((\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[82]~95_combout\))) # (!\SW[7]~input_o\ & (\Div0|auto_generated|divider|divider|op_11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_11~14_combout\,
	datac => \SW[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|StageOut[82]~95_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~100_combout\);

-- Location: LCCOMB_X101_Y12_N4
\Div0|auto_generated|divider|divider|StageOut[98]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[98]~101_combout\ = (\Div0|auto_generated|divider|divider|op_11~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[81]~196_combout\)))) # (!\Div0|auto_generated|divider|divider|op_11~14_combout\ & 
-- ((\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[81]~196_combout\))) # (!\SW[7]~input_o\ & (\Div0|auto_generated|divider|divider|op_11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~4_combout\,
	datab => \Div0|auto_generated|divider|divider|op_11~14_combout\,
	datac => \SW[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|StageOut[81]~196_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[98]~101_combout\);

-- Location: LCCOMB_X101_Y12_N6
\Div0|auto_generated|divider|divider|StageOut[97]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[97]~102_combout\ = (\SW[7]~input_o\ & (((\Div0|auto_generated|divider|divider|StageOut[80]~96_combout\)))) # (!\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_11~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[80]~96_combout\))) # (!\Div0|auto_generated|divider|divider|op_11~14_combout\ & (\Div0|auto_generated|divider|divider|op_11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[80]~96_combout\,
	datac => \SW[7]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_11~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[97]~102_combout\);

-- Location: LCCOMB_X101_Y13_N8
\Div0|auto_generated|divider|divider|StageOut[96]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~103_combout\ = (!\Div0|auto_generated|divider|divider|op_11~14_combout\ & (\SW[0]~input_o\ & !\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_11~14_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~103_combout\);

-- Location: LCCOMB_X101_Y13_N14
\Div0|auto_generated|divider|divider|op_12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~1_cout\ = CARRY(!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_12~1_cout\);

-- Location: LCCOMB_X101_Y13_N16
\Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~2_combout\ = (\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[96]~103_combout\ & (!\Div0|auto_generated|divider|divider|op_12~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[96]~103_combout\ & ((\Div0|auto_generated|divider|divider|op_12~1_cout\) # (GND))))) # (!\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[96]~103_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_12~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[96]~103_combout\ & (!\Div0|auto_generated|divider|divider|op_12~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_12~3\ = CARRY((\SW[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_12~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[96]~103_combout\))) # (!\SW[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[96]~103_combout\ & !\Div0|auto_generated|divider|divider|op_12~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[96]~103_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X101_Y13_N18
\Div0|auto_generated|divider|divider|op_12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[97]~102_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|op_12~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_12~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[97]~102_combout\ & ((!\Div0|auto_generated|divider|divider|op_12~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[97]~102_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|op_12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[97]~102_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~3\,
	combout => \Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X101_Y13_N20
\Div0|auto_generated|divider|divider|op_12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~6_combout\ = (\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[98]~101_combout\ & (!\Div0|auto_generated|divider|divider|op_12~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[98]~101_combout\ & ((\Div0|auto_generated|divider|divider|op_12~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[98]~101_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_12~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[98]~101_combout\ & (!\Div0|auto_generated|divider|divider|op_12~5\))))
-- \Div0|auto_generated|divider|divider|op_12~7\ = CARRY((\SW[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_12~5\) # (!\Div0|auto_generated|divider|divider|StageOut[98]~101_combout\))) # (!\SW[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[98]~101_combout\ & !\Div0|auto_generated|divider|divider|op_12~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[98]~101_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~5\,
	combout => \Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X101_Y13_N22
\Div0|auto_generated|divider|divider|op_12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[99]~100_combout\ $ (\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|op_12~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_12~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[99]~100_combout\ & ((!\Div0|auto_generated|divider|divider|op_12~7\) # (!\SW[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[99]~100_combout\ & (!\SW[4]~input_o\ & !\Div0|auto_generated|divider|divider|op_12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[99]~100_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~7\,
	combout => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X101_Y13_N24
\Div0|auto_generated|divider|divider|op_12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~10_combout\ = (\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[100]~99_combout\ & (!\Div0|auto_generated|divider|divider|op_12~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[100]~99_combout\ & ((\Div0|auto_generated|divider|divider|op_12~9\) # (GND))))) # (!\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[100]~99_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_12~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[100]~99_combout\ & (!\Div0|auto_generated|divider|divider|op_12~9\))))
-- \Div0|auto_generated|divider|divider|op_12~11\ = CARRY((\SW[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|op_12~9\) # (!\Div0|auto_generated|divider|divider|StageOut[100]~99_combout\))) # (!\SW[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[100]~99_combout\ & !\Div0|auto_generated|divider|divider|op_12~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[100]~99_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~9\,
	combout => \Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X101_Y13_N26
\Div0|auto_generated|divider|divider|op_12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~12_combout\ = ((\SW[6]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[101]~98_combout\ $ (\Div0|auto_generated|divider|divider|op_12~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_12~13\ = CARRY((\SW[6]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[101]~98_combout\ & !\Div0|auto_generated|divider|divider|op_12~11\)) # (!\SW[6]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[101]~98_combout\) # (!\Div0|auto_generated|divider|divider|op_12~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~98_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~11\,
	combout => \Div0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X101_Y13_N28
\Div0|auto_generated|divider|divider|op_12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[102]~97_combout\ & ((\SW[7]~input_o\ & (!\Div0|auto_generated|divider|divider|op_12~13\)) # (!\SW[7]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|op_12~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[102]~97_combout\ & ((\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|op_12~13\) # (GND))) # (!\SW[7]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_12~13\))))
-- \Div0|auto_generated|divider|divider|op_12~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[102]~97_combout\ & (\SW[7]~input_o\ & !\Div0|auto_generated|divider|divider|op_12~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[102]~97_combout\ & ((\SW[7]~input_o\) # (!\Div0|auto_generated|divider|divider|op_12~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[102]~97_combout\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_12~13\,
	combout => \Div0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X101_Y13_N30
\Div0|auto_generated|divider|divider|op_12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_12~16_combout\ = \Div0|auto_generated|divider|divider|op_12~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_12~15\,
	combout => \Div0|auto_generated|divider|divider|op_12~16_combout\);

-- Location: LCCOMB_X107_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[119]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~105_combout\ = (\Div0|auto_generated|divider|divider|op_12~14_combout\ & !\Div0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_12~14_combout\,
	datac => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~105_combout\);

-- Location: LCCOMB_X107_Y13_N16
\Div0|auto_generated|divider|divider|StageOut[119]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~104_combout\ = (\Div0|auto_generated|divider|divider|op_12~16_combout\ & \Div0|auto_generated|divider|divider|StageOut[102]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[102]~97_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~104_combout\);

-- Location: LCCOMB_X107_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[118]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~106_combout\ = (\Div0|auto_generated|divider|divider|op_12~16_combout\ & (\Div0|auto_generated|divider|divider|StageOut[101]~98_combout\)) # (!\Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_12~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~98_combout\,
	datac => \Div0|auto_generated|divider|divider|op_12~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~106_combout\);

-- Location: LCCOMB_X101_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[117]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~107_combout\ = (\Div0|auto_generated|divider|divider|op_12~16_combout\ & (\Div0|auto_generated|divider|divider|StageOut[100]~99_combout\)) # (!\Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[100]~99_combout\,
	datac => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~107_combout\);

-- Location: LCCOMB_X101_Y13_N12
\Div0|auto_generated|divider|divider|StageOut[116]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~108_combout\ = (\Div0|auto_generated|divider|divider|op_12~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[99]~100_combout\))) # (!\Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_12~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[99]~100_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~108_combout\);

-- Location: LCCOMB_X101_Y13_N6
\Div0|auto_generated|divider|divider|StageOut[115]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~109_combout\ = (\Div0|auto_generated|divider|divider|op_12~16_combout\ & (\Div0|auto_generated|divider|divider|StageOut[98]~101_combout\)) # (!\Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[98]~101_combout\,
	datac => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~109_combout\);

-- Location: LCCOMB_X101_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[114]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~110_combout\ = (\Div0|auto_generated|divider|divider|op_12~16_combout\ & (\Div0|auto_generated|divider|divider|StageOut[97]~102_combout\)) # (!\Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[97]~102_combout\,
	datac => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_12~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~110_combout\);

-- Location: LCCOMB_X101_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[113]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~111_combout\ = (\Div0|auto_generated|divider|divider|op_12~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[96]~103_combout\))) # (!\Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_12~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[96]~103_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~111_combout\);

-- Location: LCCOMB_X107_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[112]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~112_combout\ = (\SW[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~112_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X106_Y13_N2
\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[15]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[15]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ = CARRY((\SW[15]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[15]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\);

-- Location: LCCOMB_X106_Y13_N4
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[112]~112_combout\ & ((\SW[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)) # (!\SW[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[112]~112_combout\ & ((\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\) # (GND))) # 
-- (!\SW[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[112]~112_combout\ & (\SW[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[112]~112_combout\ & ((\SW[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[112]~112_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\);

-- Location: LCCOMB_X106_Y13_N6
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[113]~111_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[113]~111_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[113]~111_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[113]~111_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\);

-- Location: LCCOMB_X106_Y13_N8
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[114]~110_combout\ & ((\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)) # (!\SW[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[114]~110_combout\ & ((\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\) # (GND))) # 
-- (!\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[114]~110_combout\ & (\SW[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[114]~110_combout\ & ((\SW[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~110_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\);

-- Location: LCCOMB_X106_Y13_N10
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\ = ((\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[115]~109_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ = CARRY((\SW[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[115]~109_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)) # (!\SW[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[115]~109_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~109_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\);

-- Location: LCCOMB_X106_Y13_N12
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[116]~108_combout\ & ((\SW[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\)) # (!\SW[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[116]~108_combout\ & ((\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\) # (GND))) # 
-- (!\SW[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[116]~108_combout\ & (\SW[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[116]~108_combout\ & ((\SW[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[116]~108_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\);

-- Location: LCCOMB_X106_Y13_N14
\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\ = ((\SW[6]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[117]~107_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ = CARRY((\SW[6]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[117]~107_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\)) # (!\SW[6]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[117]~107_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~107_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\);

-- Location: LCCOMB_X106_Y13_N16
\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ = (\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~106_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[118]~106_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\) # (GND))))) # (!\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~106_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[118]~106_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~15\ = CARRY((\SW[7]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\) # (!\Div0|auto_generated|divider|divider|StageOut[118]~106_combout\))) # (!\SW[7]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[118]~106_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[118]~106_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~15\);

-- Location: LCCOMB_X106_Y13_N18
\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~15\ & ((((\Div0|auto_generated|divider|divider|StageOut[119]~105_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[119]~104_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~15\ & ((\Div0|auto_generated|divider|divider|StageOut[119]~105_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[119]~104_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[119]~105_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[119]~104_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[119]~105_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[119]~104_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~17\);

-- Location: LCCOMB_X106_Y13_N20
\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ = !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\);

-- Location: LCCOMB_X107_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[136]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~113_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~113_combout\);

-- Location: LCCOMB_X107_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[136]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~232_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[102]~97_combout\))) # (!\Div0|auto_generated|divider|divider|op_12~16_combout\ & (\Div0|auto_generated|divider|divider|op_12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_12~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[102]~97_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~232_combout\);

-- Location: LCCOMB_X107_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[135]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~197_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[101]~98_combout\)) # (!\Div0|auto_generated|divider|divider|op_12~16_combout\ & ((\Div0|auto_generated|divider|divider|op_12~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~98_combout\,
	datac => \Div0|auto_generated|divider|divider|op_12~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~197_combout\);

-- Location: LCCOMB_X107_Y13_N26
\Div0|auto_generated|divider|divider|StageOut[135]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~114_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~114_combout\);

-- Location: LCCOMB_X106_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[134]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~115_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[117]~107_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~107_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~115_combout\);

-- Location: LCCOMB_X107_Y13_N20
\Div0|auto_generated|divider|divider|StageOut[133]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~116_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~108_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[116]~108_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~116_combout\);

-- Location: LCCOMB_X107_Y13_N6
\Div0|auto_generated|divider|divider|StageOut[132]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~117_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~109_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[115]~109_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~117_combout\);

-- Location: LCCOMB_X107_Y13_N24
\Div0|auto_generated|divider|divider|StageOut[131]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~118_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[114]~110_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~110_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~118_combout\);

-- Location: LCCOMB_X106_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[130]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~119_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[113]~111_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[113]~111_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~119_combout\);

-- Location: LCCOMB_X107_Y13_N12
\Div0|auto_generated|divider|divider|StageOut[129]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~198_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (!\Div0|auto_generated|divider|divider|op_12~16_combout\ & ((\SW[0]~input_o\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_12~16_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	datac => \SW[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~198_combout\);

-- Location: LCCOMB_X106_Y13_N24
\Div0|auto_generated|divider|divider|StageOut[128]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~120_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\SW[15]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	datad => \SW[15]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~120_combout\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X108_Y13_N6
\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = (\SW[14]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[14]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ = CARRY((\SW[14]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\);

-- Location: LCCOMB_X108_Y13_N8
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[128]~120_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[128]~120_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[128]~120_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[128]~120_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[128]~120_combout\))) # (!\SW[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[128]~120_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~120_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

-- Location: LCCOMB_X108_Y13_N10
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[129]~198_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[129]~198_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[129]~198_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~198_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

-- Location: LCCOMB_X108_Y13_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[130]~119_combout\ & ((\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)) # (!\SW[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[130]~119_combout\ & ((\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # (GND))) # 
-- (!\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[130]~119_combout\ & (\SW[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[130]~119_combout\ & ((\SW[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~119_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

-- Location: LCCOMB_X108_Y13_N14
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ = ((\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[131]~118_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ = CARRY((\SW[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[131]~118_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)) # (!\SW[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[131]~118_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[131]~118_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\);

-- Location: LCCOMB_X108_Y13_N16
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ = (\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[132]~117_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[132]~117_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\) # (GND))))) # (!\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[132]~117_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[132]~117_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ = CARRY((\SW[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[132]~117_combout\))) # (!\SW[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[132]~117_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[132]~117_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\);

-- Location: LCCOMB_X108_Y13_N18
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\ = ((\SW[6]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[133]~116_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ = CARRY((\SW[6]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[133]~116_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\)) # (!\SW[6]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[133]~116_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[133]~116_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\);

-- Location: LCCOMB_X108_Y13_N20
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ = (\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[134]~115_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[134]~115_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\) # (GND))))) # (!\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[134]~115_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[134]~115_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ = CARRY((\SW[7]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\) # (!\Div0|auto_generated|divider|divider|StageOut[134]~115_combout\))) # (!\SW[7]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[134]~115_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[134]~115_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~15\);

-- Location: LCCOMB_X108_Y13_N22
\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ & ((((\Div0|auto_generated|divider|divider|StageOut[135]~197_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[135]~114_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ & ((\Div0|auto_generated|divider|divider|StageOut[135]~197_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[135]~114_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[135]~197_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[135]~114_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[135]~197_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[135]~114_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~17\);

-- Location: LCCOMB_X108_Y13_N24
\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ & (((\Div0|auto_generated|divider|divider|StageOut[136]~113_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~232_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ & (!\Div0|auto_generated|divider|divider|StageOut[136]~113_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[136]~232_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~19\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[136]~113_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[136]~232_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~113_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[136]~232_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~19\);

-- Location: LCCOMB_X108_Y13_N26
\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\);

-- Location: LCCOMB_X107_Y13_N14
\Div0|auto_generated|divider|divider|StageOut[153]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[153]~199_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[136]~232_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[136]~232_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[153]~199_combout\);

-- Location: LCCOMB_X111_Y13_N24
\Div0|auto_generated|divider|divider|StageOut[153]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[153]~121_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[153]~121_combout\);

-- Location: LCCOMB_X109_Y13_N16
\Div0|auto_generated|divider|divider|StageOut[152]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~122_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~122_combout\);

-- Location: LCCOMB_X107_Y13_N8
\Div0|auto_generated|divider|divider|StageOut[152]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~200_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[135]~197_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[135]~197_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~200_combout\);

-- Location: LCCOMB_X111_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[151]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~123_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~123_combout\);

-- Location: LCCOMB_X107_Y13_N18
\Div0|auto_generated|divider|divider|StageOut[151]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~201_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[117]~107_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[117]~107_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~201_combout\);

-- Location: LCCOMB_X108_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[150]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~124_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[133]~116_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[133]~116_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~124_combout\);

-- Location: LCCOMB_X108_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[149]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[149]~125_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[132]~117_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[132]~117_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[149]~125_combout\);

-- Location: LCCOMB_X109_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[148]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~126_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[131]~118_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[131]~118_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~126_combout\);

-- Location: LCCOMB_X109_Y13_N12
\Div0|auto_generated|divider|divider|StageOut[147]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~127_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[130]~119_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~119_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~127_combout\);

-- Location: LCCOMB_X108_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[146]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~128_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[129]~198_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~198_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~128_combout\);

-- Location: LCCOMB_X109_Y13_N14
\Div0|auto_generated|divider|divider|StageOut[145]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~129_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[128]~120_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~120_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~129_combout\);

-- Location: LCCOMB_X109_Y12_N8
\Div0|auto_generated|divider|divider|StageOut[144]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[144]~130_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\SW[14]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datab => \SW[14]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[144]~130_combout\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X110_Y13_N4
\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[13]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[13]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ = CARRY((\SW[13]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[13]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\);

-- Location: LCCOMB_X110_Y13_N6
\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[144]~130_combout\ & ((\SW[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # (!\SW[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[144]~130_combout\ & ((\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # (GND))) # 
-- (!\SW[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[144]~130_combout\ & (\SW[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[144]~130_combout\ & ((\SW[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[144]~130_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\);

-- Location: LCCOMB_X110_Y13_N8
\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[145]~129_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[145]~129_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[145]~129_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[145]~129_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\);

-- Location: LCCOMB_X110_Y13_N10
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[146]~128_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[146]~128_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[146]~128_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[146]~128_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[146]~128_combout\))) # (!\SW[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[146]~128_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[146]~128_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\);

-- Location: LCCOMB_X110_Y13_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[147]~127_combout\ $ (\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[147]~127_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\) # (!\SW[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[147]~127_combout\ & (!\SW[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[147]~127_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\);

-- Location: LCCOMB_X110_Y13_N14
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[148]~126_combout\ & ((\SW[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\)) # (!\SW[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[148]~126_combout\ & ((\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\) # (GND))) # 
-- (!\SW[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[148]~126_combout\ & (\SW[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[148]~126_combout\ & ((\SW[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[148]~126_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\);

-- Location: LCCOMB_X110_Y13_N16
\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\ = ((\SW[6]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[149]~125_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ = CARRY((\SW[6]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[149]~125_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\)) # (!\SW[6]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[149]~125_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[149]~125_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\);

-- Location: LCCOMB_X110_Y13_N18
\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[150]~124_combout\ & ((\SW[7]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\)) # (!\SW[7]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[150]~124_combout\ & ((\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\) # (GND))) # 
-- (!\SW[7]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[150]~124_combout\ & (\SW[7]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[150]~124_combout\ & ((\SW[7]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[150]~124_combout\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~15\);

-- Location: LCCOMB_X110_Y13_N20
\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ & ((((\Div0|auto_generated|divider|divider|StageOut[151]~123_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[151]~201_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ & ((\Div0|auto_generated|divider|divider|StageOut[151]~123_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[151]~201_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[151]~123_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[151]~201_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[151]~123_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[151]~201_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~17\);

-- Location: LCCOMB_X110_Y13_N22
\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ & (((\Div0|auto_generated|divider|divider|StageOut[152]~122_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[152]~200_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ & (!\Div0|auto_generated|divider|divider|StageOut[152]~122_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[152]~200_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[152]~122_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[152]~200_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[152]~122_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[152]~200_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~19\);

-- Location: LCCOMB_X110_Y13_N24
\Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ & ((((\Div0|auto_generated|divider|divider|StageOut[153]~199_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[153]~121_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ & ((\Div0|auto_generated|divider|divider|StageOut[153]~199_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[153]~121_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~21\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[153]~199_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[153]~121_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[153]~199_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[153]~121_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~21\);

-- Location: LCCOMB_X110_Y13_N26
\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ = !\Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~21\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\);

-- Location: LCCOMB_X111_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[170]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[170]~131_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[170]~131_combout\);

-- Location: LCCOMB_X111_Y13_N18
\Div0|auto_generated|divider|divider|StageOut[170]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[170]~202_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[153]~199_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[153]~199_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[170]~202_combout\);

-- Location: LCCOMB_X109_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[169]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[169]~203_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[152]~200_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[152]~200_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[169]~203_combout\);

-- Location: LCCOMB_X110_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[169]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[169]~132_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[169]~132_combout\);

-- Location: LCCOMB_X111_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[168]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[168]~204_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[151]~201_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[151]~201_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[168]~204_combout\);

-- Location: LCCOMB_X111_Y13_N22
\Div0|auto_generated|divider|divider|StageOut[168]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[168]~133_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[168]~133_combout\);

-- Location: LCCOMB_X108_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[167]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[167]~205_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[133]~116_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[133]~116_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[167]~205_combout\);

-- Location: LCCOMB_X111_Y12_N8
\Div0|auto_generated|divider|divider|StageOut[167]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[167]~134_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[167]~134_combout\);

-- Location: LCCOMB_X111_Y12_N2
\Div0|auto_generated|divider|divider|StageOut[166]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[166]~135_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[149]~125_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[149]~125_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[166]~135_combout\);

-- Location: LCCOMB_X109_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[165]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[165]~136_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\Div0|auto_generated|divider|divider|StageOut[148]~126_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[148]~126_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[165]~136_combout\);

-- Location: LCCOMB_X110_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[164]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[164]~137_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\Div0|auto_generated|divider|divider|StageOut[147]~127_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[147]~127_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[164]~137_combout\);

-- Location: LCCOMB_X111_Y13_N16
\Div0|auto_generated|divider|divider|StageOut[163]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[163]~138_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\Div0|auto_generated|divider|divider|StageOut[146]~128_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[146]~128_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[163]~138_combout\);

-- Location: LCCOMB_X109_Y13_N18
\Div0|auto_generated|divider|divider|StageOut[162]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[162]~139_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\Div0|auto_generated|divider|divider|StageOut[145]~129_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[145]~129_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[162]~139_combout\);

-- Location: LCCOMB_X110_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[161]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[161]~140_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\Div0|auto_generated|divider|divider|StageOut[144]~130_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[144]~130_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[161]~140_combout\);

-- Location: LCCOMB_X110_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[160]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[160]~141_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\SW[13]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	datac => \SW[13]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[160]~141_combout\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X110_Y12_N2
\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ = (\SW[12]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[12]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ = CARRY((\SW[12]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\);

-- Location: LCCOMB_X110_Y12_N4
\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[160]~141_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[160]~141_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[160]~141_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[160]~141_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[160]~141_combout\))) # (!\SW[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[160]~141_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[160]~141_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\);

-- Location: LCCOMB_X110_Y12_N6
\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[161]~140_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[161]~140_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[161]~140_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[161]~140_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\);

-- Location: LCCOMB_X110_Y12_N8
\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[162]~139_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[162]~139_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[162]~139_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[162]~139_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[162]~139_combout\))) # (!\SW[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[162]~139_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[162]~139_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\);

-- Location: LCCOMB_X110_Y12_N10
\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[163]~138_combout\ $ (\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[163]~138_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\) # (!\SW[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[163]~138_combout\ & (!\SW[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[163]~138_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\);

-- Location: LCCOMB_X110_Y12_N12
\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ = (\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[164]~137_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[164]~137_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\) # (GND))))) # (!\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[164]~137_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[164]~137_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ = CARRY((\SW[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[164]~137_combout\))) # (!\SW[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[164]~137_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[164]~137_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\);

-- Location: LCCOMB_X110_Y12_N14
\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\ = ((\SW[6]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[165]~136_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ = CARRY((\SW[6]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[165]~136_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\)) # (!\SW[6]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[165]~136_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[165]~136_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\);

-- Location: LCCOMB_X110_Y12_N16
\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[166]~135_combout\ & ((\SW[7]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\)) # (!\SW[7]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[166]~135_combout\ & ((\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\) # (GND))) # 
-- (!\SW[7]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[166]~135_combout\ & (\SW[7]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[166]~135_combout\ & ((\SW[7]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[166]~135_combout\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~15\);

-- Location: LCCOMB_X110_Y12_N18
\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ & ((((\Div0|auto_generated|divider|divider|StageOut[167]~205_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[167]~134_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ & ((\Div0|auto_generated|divider|divider|StageOut[167]~205_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[167]~134_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[167]~205_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[167]~134_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[167]~205_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[167]~134_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~17\);

-- Location: LCCOMB_X110_Y12_N20
\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ & (((\Div0|auto_generated|divider|divider|StageOut[168]~204_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[168]~133_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ & (!\Div0|auto_generated|divider|divider|StageOut[168]~204_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[168]~133_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[168]~204_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[168]~133_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[168]~204_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[168]~133_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~19\);

-- Location: LCCOMB_X110_Y12_N22
\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ & ((((\Div0|auto_generated|divider|divider|StageOut[169]~203_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[169]~132_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ & ((\Div0|auto_generated|divider|divider|StageOut[169]~203_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[169]~132_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[169]~203_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[169]~132_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[169]~203_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[169]~132_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~21\);

-- Location: LCCOMB_X110_Y12_N24
\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ & (((\Div0|auto_generated|divider|divider|StageOut[170]~131_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[170]~202_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ & (!\Div0|auto_generated|divider|divider|StageOut[170]~131_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[170]~202_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~23\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[170]~131_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[170]~202_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[170]~131_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[170]~202_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~21\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~23\);

-- Location: LCCOMB_X110_Y12_N26
\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ = \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~23\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\);

-- Location: LCCOMB_X111_Y13_N26
\Div0|auto_generated|divider|divider|StageOut[187]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[187]~142_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[187]~142_combout\);

-- Location: LCCOMB_X111_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[187]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[187]~206_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[170]~202_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[170]~202_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[187]~206_combout\);

-- Location: LCCOMB_X113_Y14_N24
\Div0|auto_generated|divider|divider|StageOut[186]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[186]~143_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[186]~143_combout\);

-- Location: LCCOMB_X109_Y13_N22
\Div0|auto_generated|divider|divider|StageOut[186]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[186]~207_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[169]~203_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[169]~203_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[186]~207_combout\);

-- Location: LCCOMB_X111_Y13_N8
\Div0|auto_generated|divider|divider|StageOut[185]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[185]~208_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[168]~204_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[168]~204_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[185]~208_combout\);

-- Location: LCCOMB_X111_Y13_N20
\Div0|auto_generated|divider|divider|StageOut[185]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[185]~144_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[185]~144_combout\);

-- Location: LCCOMB_X111_Y12_N16
\Div0|auto_generated|divider|divider|StageOut[184]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[184]~209_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[167]~205_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[167]~205_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[184]~209_combout\);

-- Location: LCCOMB_X111_Y12_N20
\Div0|auto_generated|divider|divider|StageOut[184]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[184]~145_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[184]~145_combout\);

-- Location: LCCOMB_X111_Y12_N18
\Div0|auto_generated|divider|divider|StageOut[183]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[183]~210_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[149]~125_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[149]~125_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[183]~210_combout\);

-- Location: LCCOMB_X111_Y12_N22
\Div0|auto_generated|divider|divider|StageOut[183]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[183]~146_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[183]~146_combout\);

-- Location: LCCOMB_X113_Y14_N10
\Div0|auto_generated|divider|divider|StageOut[182]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[182]~147_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[165]~136_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[165]~136_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[182]~147_combout\);

-- Location: LCCOMB_X110_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[181]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[181]~148_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[164]~137_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[164]~137_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[181]~148_combout\);

-- Location: LCCOMB_X111_Y13_N6
\Div0|auto_generated|divider|divider|StageOut[180]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[180]~149_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[163]~138_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[163]~138_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[180]~149_combout\);

-- Location: LCCOMB_X110_Y12_N28
\Div0|auto_generated|divider|divider|StageOut[179]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[179]~150_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[162]~139_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[162]~139_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[179]~150_combout\);

-- Location: LCCOMB_X111_Y14_N8
\Div0|auto_generated|divider|divider|StageOut[178]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[178]~151_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[161]~140_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[161]~140_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[178]~151_combout\);

-- Location: LCCOMB_X110_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[177]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[177]~152_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[160]~141_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[160]~141_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[177]~152_combout\);

-- Location: LCCOMB_X111_Y12_N24
\Div0|auto_generated|divider|divider|StageOut[176]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[176]~153_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((\SW[12]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	datab => \SW[12]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[176]~153_combout\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X112_Y13_N4
\Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~0_combout\ = (\SW[11]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[11]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\ = CARRY((\SW[11]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\);

-- Location: LCCOMB_X112_Y13_N6
\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[176]~153_combout\ & ((\SW[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\)) # (!\SW[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[176]~153_combout\ & ((\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\) # (GND))) # 
-- (!\SW[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[176]~153_combout\ & (\SW[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[176]~153_combout\ & ((\SW[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[176]~153_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~3\);

-- Location: LCCOMB_X112_Y13_N8
\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[177]~152_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[177]~152_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[177]~152_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[177]~152_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\);

-- Location: LCCOMB_X112_Y13_N10
\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[178]~151_combout\ & ((\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\)) # (!\SW[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[178]~151_combout\ & ((\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\) # (GND))) # 
-- (!\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[178]~151_combout\ & (\SW[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[178]~151_combout\ & ((\SW[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[178]~151_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~7\);

-- Location: LCCOMB_X112_Y13_N12
\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~8_combout\ = ((\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[179]~150_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\ = CARRY((\SW[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[179]~150_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~7\)) # (!\SW[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[179]~150_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[179]~150_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\);

-- Location: LCCOMB_X112_Y13_N14
\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[180]~149_combout\ & ((\SW[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\)) # (!\SW[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[180]~149_combout\ & ((\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\) # (GND))) # 
-- (!\SW[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[180]~149_combout\ & (\SW[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[180]~149_combout\ & ((\SW[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[180]~149_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~11\);

-- Location: LCCOMB_X112_Y13_N16
\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~12_combout\ = ((\SW[6]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[181]~148_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\ = CARRY((\SW[6]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[181]~148_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~11\)) # (!\SW[6]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[181]~148_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[181]~148_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\);

-- Location: LCCOMB_X112_Y13_N18
\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[182]~147_combout\ & ((\SW[7]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\)) # (!\SW[7]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[182]~147_combout\ & ((\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\) # (GND))) # 
-- (!\SW[7]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[182]~147_combout\ & (\SW[7]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[182]~147_combout\ & ((\SW[7]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[182]~147_combout\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~15\);

-- Location: LCCOMB_X112_Y13_N20
\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~15\ & ((((\Div0|auto_generated|divider|divider|StageOut[183]~210_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[183]~146_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~15\ & ((\Div0|auto_generated|divider|divider|StageOut[183]~210_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[183]~146_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[183]~210_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[183]~146_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[183]~210_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[183]~146_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~17\);

-- Location: LCCOMB_X112_Y13_N22
\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~17\ & (((\Div0|auto_generated|divider|divider|StageOut[184]~209_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[184]~145_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~17\ & (!\Div0|auto_generated|divider|divider|StageOut[184]~209_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[184]~145_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~19\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[184]~209_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[184]~145_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[184]~209_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[184]~145_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~19\);

-- Location: LCCOMB_X112_Y13_N24
\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~19\ & ((((\Div0|auto_generated|divider|divider|StageOut[185]~208_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[185]~144_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~19\ & ((\Div0|auto_generated|divider|divider|StageOut[185]~208_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[185]~144_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~21\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[185]~208_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[185]~144_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[185]~208_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[185]~144_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~21\);

-- Location: LCCOMB_X112_Y13_N26
\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~22_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~21\ & (((\Div0|auto_generated|divider|divider|StageOut[186]~143_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[186]~207_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~21\ & (!\Div0|auto_generated|divider|divider|StageOut[186]~143_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[186]~207_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~23\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[186]~143_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[186]~207_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[186]~143_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[186]~207_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~21\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~22_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~23\);

-- Location: LCCOMB_X112_Y13_N28
\Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~23\ & ((((\Div0|auto_generated|divider|divider|StageOut[187]~142_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[187]~206_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~23\ & ((\Div0|auto_generated|divider|divider|StageOut[187]~142_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[187]~206_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~25\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[187]~142_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[187]~206_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[187]~142_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[187]~206_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~23\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~24_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~25\);

-- Location: LCCOMB_X112_Y13_N30
\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ = !\Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~25\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\);

-- Location: LCCOMB_X111_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[204]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[204]~154_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[204]~154_combout\);

-- Location: LCCOMB_X111_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[204]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[204]~211_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[187]~206_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[187]~206_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[204]~211_combout\);

-- Location: LCCOMB_X113_Y14_N20
\Div0|auto_generated|divider|divider|StageOut[203]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[203]~155_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[203]~155_combout\);

-- Location: LCCOMB_X113_Y14_N8
\Div0|auto_generated|divider|divider|StageOut[203]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[203]~212_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[186]~207_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[186]~207_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[203]~212_combout\);

-- Location: LCCOMB_X111_Y14_N10
\Div0|auto_generated|divider|divider|StageOut[202]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[202]~156_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~20_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[202]~156_combout\);

-- Location: LCCOMB_X111_Y13_N12
\Div0|auto_generated|divider|divider|StageOut[202]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[202]~213_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[185]~208_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[185]~208_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[202]~213_combout\);

-- Location: LCCOMB_X111_Y12_N10
\Div0|auto_generated|divider|divider|StageOut[201]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[201]~157_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[201]~157_combout\);

-- Location: LCCOMB_X111_Y12_N28
\Div0|auto_generated|divider|divider|StageOut[201]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[201]~214_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[184]~209_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[184]~209_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[201]~214_combout\);

-- Location: LCCOMB_X111_Y12_N12
\Div0|auto_generated|divider|divider|StageOut[200]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[200]~158_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[200]~158_combout\);

-- Location: LCCOMB_X111_Y12_N6
\Div0|auto_generated|divider|divider|StageOut[200]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[200]~215_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[183]~210_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[183]~210_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[200]~215_combout\);

-- Location: LCCOMB_X113_Y14_N6
\Div0|auto_generated|divider|divider|StageOut[199]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[199]~159_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[199]~159_combout\);

-- Location: LCCOMB_X113_Y14_N18
\Div0|auto_generated|divider|divider|StageOut[199]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[199]~216_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[165]~136_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[165]~136_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[199]~216_combout\);

-- Location: LCCOMB_X113_Y14_N16
\Div0|auto_generated|divider|divider|StageOut[198]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[198]~160_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[181]~148_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[181]~148_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[198]~160_combout\);

-- Location: LCCOMB_X111_Y14_N12
\Div0|auto_generated|divider|divider|StageOut[197]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[197]~161_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & (\Div0|auto_generated|divider|divider|StageOut[180]~149_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[180]~149_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[197]~161_combout\);

-- Location: LCCOMB_X111_Y14_N6
\Div0|auto_generated|divider|divider|StageOut[196]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[196]~162_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[179]~150_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[179]~150_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[196]~162_combout\);

-- Location: LCCOMB_X111_Y14_N24
\Div0|auto_generated|divider|divider|StageOut[195]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[195]~163_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[178]~151_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[178]~151_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[195]~163_combout\);

-- Location: LCCOMB_X112_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[194]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[194]~164_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & (\Div0|auto_generated|divider|divider|StageOut[177]~152_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[177]~152_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[194]~164_combout\);

-- Location: LCCOMB_X112_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[193]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[193]~165_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & (\Div0|auto_generated|divider|divider|StageOut[176]~153_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[176]~153_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[193]~165_combout\);

-- Location: LCCOMB_X109_Y12_N10
\Div0|auto_generated|divider|divider|StageOut[192]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[192]~166_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & ((\SW[11]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[0]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \SW[11]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[192]~166_combout\);

-- Location: LCCOMB_X112_Y14_N2
\Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[10]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[10]~input_o\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\ = CARRY((\SW[10]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[10]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\);

-- Location: LCCOMB_X112_Y14_N4
\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[192]~166_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[192]~166_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[192]~166_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[192]~166_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[192]~166_combout\))) # (!\SW[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[192]~166_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[192]~166_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~3\);

-- Location: LCCOMB_X112_Y14_N6
\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[193]~165_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[193]~165_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[193]~165_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[193]~165_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\);

-- Location: LCCOMB_X112_Y14_N8
\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[194]~164_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[194]~164_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[194]~164_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[194]~164_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[194]~164_combout\))) # (!\SW[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[194]~164_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[194]~164_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~7\);

-- Location: LCCOMB_X112_Y14_N10
\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~8_combout\ = ((\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[195]~163_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\ = CARRY((\SW[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[195]~163_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~7\)) # (!\SW[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[195]~163_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[195]~163_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\);

-- Location: LCCOMB_X112_Y14_N12
\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~10_combout\ = (\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[196]~162_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[196]~162_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\) # (GND))))) # (!\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[196]~162_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[196]~162_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~11\ = CARRY((\SW[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[196]~162_combout\))) # (!\SW[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[196]~162_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[196]~162_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~11\);

-- Location: LCCOMB_X112_Y14_N14
\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[197]~161_combout\ $ (\SW[6]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[197]~161_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~11\) # (!\SW[6]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[197]~161_combout\ & (!\SW[6]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[197]~161_combout\,
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\);

-- Location: LCCOMB_X112_Y14_N16
\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~14_combout\ = (\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[198]~160_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[198]~160_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\) # (GND))))) # (!\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[198]~160_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[198]~160_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~15\ = CARRY((\SW[7]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\) # (!\Div0|auto_generated|divider|divider|StageOut[198]~160_combout\))) # (!\SW[7]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[198]~160_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[198]~160_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~15\);

-- Location: LCCOMB_X112_Y14_N18
\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~15\ & ((((\Div0|auto_generated|divider|divider|StageOut[199]~159_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[199]~216_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~15\ & ((\Div0|auto_generated|divider|divider|StageOut[199]~159_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[199]~216_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[199]~159_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[199]~216_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[199]~159_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[199]~216_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~17\);

-- Location: LCCOMB_X112_Y14_N20
\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~17\ & (((\Div0|auto_generated|divider|divider|StageOut[200]~158_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[200]~215_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~17\ & (!\Div0|auto_generated|divider|divider|StageOut[200]~158_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[200]~215_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~19\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[200]~158_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[200]~215_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[200]~158_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[200]~215_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~19\);

-- Location: LCCOMB_X112_Y14_N22
\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~19\ & ((((\Div0|auto_generated|divider|divider|StageOut[201]~157_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[201]~214_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~19\ & ((\Div0|auto_generated|divider|divider|StageOut[201]~157_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[201]~214_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~21\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[201]~157_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[201]~214_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[201]~157_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[201]~214_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~21\);

-- Location: LCCOMB_X112_Y14_N24
\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~22_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~21\ & (((\Div0|auto_generated|divider|divider|StageOut[202]~156_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[202]~213_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~21\ & (!\Div0|auto_generated|divider|divider|StageOut[202]~156_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[202]~213_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~23\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[202]~156_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[202]~213_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[202]~156_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[202]~213_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~21\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~22_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~23\);

-- Location: LCCOMB_X112_Y14_N26
\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~23\ & ((((\Div0|auto_generated|divider|divider|StageOut[203]~155_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[203]~212_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~23\ & ((\Div0|auto_generated|divider|divider|StageOut[203]~155_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[203]~212_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~25\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[203]~155_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[203]~212_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[203]~155_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[203]~212_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~23\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~24_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~25\);

-- Location: LCCOMB_X112_Y14_N28
\Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~25\ & (((\Div0|auto_generated|divider|divider|StageOut[204]~154_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[204]~211_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~25\ & (!\Div0|auto_generated|divider|divider|StageOut[204]~154_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[204]~211_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~27\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[204]~154_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[204]~211_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[204]~154_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[204]~211_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~25\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~26_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~27\);

-- Location: LCCOMB_X112_Y14_N30
\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ = \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~27\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\);

-- Location: LCCOMB_X109_Y12_N18
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\KEY[2]~input_o\) # ((!\KEY[1]~input_o\ & \KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X109_Y12_N16
\Mux41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~5_combout\ = (\Mux41~2_combout\ & ((\Mux41~4_combout\) # ((!\Mux41~1_combout\)))) # (!\Mux41~2_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & \Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~2_combout\,
	datab => \Mux41~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Mux41~1_combout\,
	combout => \Mux41~5_combout\);

-- Location: DSPMULT_X93_Y13_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y13_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X109_Y12_N20
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (!\KEY[2]~input_o\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X109_Y12_N2
Mux41 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~combout\ = (\Mux41~5_combout\ & ((\result~1_combout\) # ((!\Mux41~0_combout\)))) # (!\Mux41~5_combout\ & (((\Mult0|auto_generated|mac_out2~DATAOUT2\ & \Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~1_combout\,
	datab => \Mux41~5_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \Mux41~0_combout\,
	combout => \Mux41~combout\);

-- Location: LCCOMB_X109_Y12_N14
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\KEY[1]~input_o\ & (((\KEY[0]~input_o\)))) # (!\KEY[1]~input_o\ & ((\SW[9]~input_o\ & (\SW[1]~input_o\ $ (\KEY[0]~input_o\))) # (!\SW[9]~input_o\ & (\SW[1]~input_o\ & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X109_Y12_N24
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Mux42~0_combout\ & ((\Add0~2_combout\) # ((!\KEY[1]~input_o\)))) # (!\Mux42~0_combout\ & (((\Add1~2_combout\ & \KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Mux42~0_combout\,
	datac => \Add1~2_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X111_Y13_N14
\Div0|auto_generated|divider|divider|StageOut[221]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[221]~217_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[204]~211_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[204]~211_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[221]~217_combout\);

-- Location: LCCOMB_X111_Y14_N18
\Div0|auto_generated|divider|divider|StageOut[221]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[221]~167_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[221]~167_combout\);

-- Location: LCCOMB_X113_Y14_N26
\Div0|auto_generated|divider|divider|StageOut[220]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[220]~168_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~24_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[220]~168_combout\);

-- Location: LCCOMB_X113_Y14_N28
\Div0|auto_generated|divider|divider|StageOut[220]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[220]~218_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[203]~212_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~22_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[203]~212_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[220]~218_combout\);

-- Location: LCCOMB_X111_Y14_N20
\Div0|auto_generated|divider|divider|StageOut[219]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[219]~169_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[219]~169_combout\);

-- Location: LCCOMB_X111_Y14_N16
\Div0|auto_generated|divider|divider|StageOut[219]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[219]~219_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[202]~213_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~20_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[202]~213_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[219]~219_combout\);

-- Location: LCCOMB_X111_Y12_N14
\Div0|auto_generated|divider|divider|StageOut[218]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[218]~170_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[218]~170_combout\);

-- Location: LCCOMB_X111_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[218]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[218]~220_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[201]~214_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[201]~214_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[218]~220_combout\);

-- Location: LCCOMB_X111_Y12_N26
\Div0|auto_generated|divider|divider|StageOut[217]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[217]~221_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[200]~215_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[200]~215_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[217]~221_combout\);

-- Location: LCCOMB_X111_Y14_N22
\Div0|auto_generated|divider|divider|StageOut[217]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[217]~171_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[217]~171_combout\);

-- Location: LCCOMB_X113_Y14_N22
\Div0|auto_generated|divider|divider|StageOut[216]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[216]~222_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[199]~216_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[199]~216_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[216]~222_combout\);

-- Location: LCCOMB_X113_Y14_N12
\Div0|auto_generated|divider|divider|StageOut[216]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[216]~172_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[216]~172_combout\);

-- Location: LCCOMB_X113_Y14_N0
\Div0|auto_generated|divider|divider|StageOut[215]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[215]~223_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[181]~148_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[181]~148_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[215]~223_combout\);

-- Location: LCCOMB_X113_Y14_N30
\Div0|auto_generated|divider|divider|StageOut[215]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[215]~173_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[215]~173_combout\);

-- Location: LCCOMB_X111_Y14_N0
\Div0|auto_generated|divider|divider|StageOut[214]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[214]~174_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[197]~161_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[197]~161_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[214]~174_combout\);

-- Location: LCCOMB_X111_Y14_N26
\Div0|auto_generated|divider|divider|StageOut[213]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[213]~175_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[196]~162_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[196]~162_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[213]~175_combout\);

-- Location: LCCOMB_X111_Y14_N4
\Div0|auto_generated|divider|divider|StageOut[212]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[212]~176_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[195]~163_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[195]~163_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[212]~176_combout\);

-- Location: LCCOMB_X111_Y14_N14
\Div0|auto_generated|divider|divider|StageOut[211]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[211]~177_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[194]~164_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[194]~164_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[211]~177_combout\);

-- Location: LCCOMB_X112_Y14_N0
\Div0|auto_generated|divider|divider|StageOut[210]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[210]~178_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\Div0|auto_generated|divider|divider|StageOut[193]~165_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[193]~165_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[210]~178_combout\);

-- Location: LCCOMB_X109_Y15_N8
\Div0|auto_generated|divider|divider|StageOut[209]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[209]~179_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\Div0|auto_generated|divider|divider|StageOut[192]~166_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[192]~166_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[209]~179_combout\);

-- Location: LCCOMB_X109_Y15_N2
\Div0|auto_generated|divider|divider|StageOut[208]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[208]~180_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\SW[10]~input_o\))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[0]~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[208]~180_combout\);

-- Location: LCCOMB_X110_Y14_N0
\Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~0_combout\ = (\SW[9]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[9]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\ = CARRY((\SW[9]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\);

-- Location: LCCOMB_X110_Y14_N2
\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[208]~180_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[208]~180_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[208]~180_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[208]~180_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[208]~180_combout\))) # (!\SW[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[208]~180_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[208]~180_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~3\);

-- Location: LCCOMB_X110_Y14_N4
\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[209]~179_combout\ $ (\SW[2]~input_o\ $ (\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[209]~179_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[209]~179_combout\ & (!\SW[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[209]~179_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\);

-- Location: LCCOMB_X110_Y14_N6
\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[210]~178_combout\ & ((\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\)) # (!\SW[3]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[210]~178_combout\ & ((\SW[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\) # (GND))) # 
-- (!\SW[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[210]~178_combout\ & (\SW[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[210]~178_combout\ & ((\SW[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[210]~178_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~7\);

-- Location: LCCOMB_X110_Y14_N8
\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~8_combout\ = ((\SW[4]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[211]~177_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\ = CARRY((\SW[4]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[211]~177_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~7\)) # (!\SW[4]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[211]~177_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[211]~177_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\);

-- Location: LCCOMB_X110_Y14_N10
\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~10_combout\ = (\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[212]~176_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[212]~176_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\) # (GND))))) # (!\SW[5]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[212]~176_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[212]~176_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~11\ = CARRY((\SW[5]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[212]~176_combout\))) # (!\SW[5]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[212]~176_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[212]~176_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~11\);

-- Location: LCCOMB_X110_Y14_N12
\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~12_combout\ = ((\SW[6]~input_o\ $ (\Div0|auto_generated|divider|divider|StageOut[213]~175_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\ = CARRY((\SW[6]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[213]~175_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~11\)) # (!\SW[6]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[213]~175_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[213]~175_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\);

-- Location: LCCOMB_X110_Y14_N14
\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~14_combout\ = (\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[214]~174_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[214]~174_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\) # (GND))))) # (!\SW[7]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[214]~174_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[214]~174_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~15\ = CARRY((\SW[7]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\) # (!\Div0|auto_generated|divider|divider|StageOut[214]~174_combout\))) # (!\SW[7]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[214]~174_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[214]~174_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~15\);

-- Location: LCCOMB_X110_Y14_N16
\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~15\ & ((((\Div0|auto_generated|divider|divider|StageOut[215]~223_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[215]~173_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~15\ & ((\Div0|auto_generated|divider|divider|StageOut[215]~223_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[215]~173_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[215]~223_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[215]~173_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[215]~223_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[215]~173_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~17\);

-- Location: LCCOMB_X110_Y14_N18
\Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~17\ & (((\Div0|auto_generated|divider|divider|StageOut[216]~222_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[216]~172_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~17\ & (!\Div0|auto_generated|divider|divider|StageOut[216]~222_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[216]~172_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~19\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[216]~222_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[216]~172_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[216]~222_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[216]~172_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~19\);

-- Location: LCCOMB_X110_Y14_N20
\Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~19\ & ((((\Div0|auto_generated|divider|divider|StageOut[217]~221_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[217]~171_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~19\ & ((\Div0|auto_generated|divider|divider|StageOut[217]~221_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[217]~171_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~21\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[217]~221_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[217]~171_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[217]~221_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[217]~171_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~21\);

-- Location: LCCOMB_X110_Y14_N22
\Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~22_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~21\ & (((\Div0|auto_generated|divider|divider|StageOut[218]~170_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[218]~220_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~21\ & (!\Div0|auto_generated|divider|divider|StageOut[218]~170_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[218]~220_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~23\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[218]~170_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[218]~220_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[218]~170_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[218]~220_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~21\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~22_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~23\);

-- Location: LCCOMB_X110_Y14_N24
\Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~23\ & ((((\Div0|auto_generated|divider|divider|StageOut[219]~169_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[219]~219_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~23\ & ((\Div0|auto_generated|divider|divider|StageOut[219]~169_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[219]~219_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~25\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[219]~169_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[219]~219_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[219]~169_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[219]~219_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~23\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~24_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~25\);

-- Location: LCCOMB_X110_Y14_N26
\Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~25\ & (((\Div0|auto_generated|divider|divider|StageOut[220]~168_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[220]~218_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~25\ & (!\Div0|auto_generated|divider|divider|StageOut[220]~168_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[220]~218_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~27\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[220]~168_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[220]~218_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[220]~168_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[220]~218_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~25\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~26_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~27\);

-- Location: LCCOMB_X110_Y14_N28
\Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~28_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~27\ & ((((\Div0|auto_generated|divider|divider|StageOut[221]~217_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[221]~167_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~27\ & ((\Div0|auto_generated|divider|divider|StageOut[221]~217_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[221]~167_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~29\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[221]~217_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[221]~167_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[221]~217_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[221]~167_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~27\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~28_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~29\);

-- Location: LCCOMB_X110_Y14_N30
\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ = !\Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~29\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\);

-- Location: LCCOMB_X109_Y12_N12
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux41~2_combout\ & ((\Mux42~1_combout\) # ((!\Mux41~1_combout\)))) # (!\Mux41~2_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & \Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~2_combout\,
	datab => \Mux42~1_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datad => \Mux41~1_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X109_Y15_N4
\result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~0_combout\ = (\SW[9]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[9]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \result~0_combout\);

-- Location: LCCOMB_X108_Y16_N8
Mux42 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~combout\ = (\Mux41~0_combout\ & ((\Mux42~2_combout\ & ((\result~0_combout\))) # (!\Mux42~2_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT1\)))) # (!\Mux41~0_combout\ & (((\Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \Mux41~0_combout\,
	datac => \Mux42~2_combout\,
	datad => \result~0_combout\,
	combout => \Mux42~combout\);

-- Location: LCCOMB_X109_Y12_N28
\result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~2_combout\ = (\SW[3]~input_o\) # (\SW[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \result~2_combout\);

-- Location: LCCOMB_X108_Y12_N10
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\SW[3]~input_o\ & ((\SW[11]~input_o\ & (!\Add1~5\)) # (!\SW[11]~input_o\ & ((\Add1~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\SW[11]~input_o\ & (\Add1~5\ & VCC)) # (!\SW[11]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\SW[3]~input_o\ & ((!\Add1~5\) # (!\SW[11]~input_o\))) # (!\SW[3]~input_o\ & (!\SW[11]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[11]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X108_Y12_N24
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\KEY[1]~input_o\ & (((\KEY[0]~input_o\)))) # (!\KEY[1]~input_o\ & ((\SW[11]~input_o\ & (\SW[3]~input_o\ $ (\KEY[0]~input_o\))) # (!\SW[11]~input_o\ & (\SW[3]~input_o\ & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X100_Y12_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\SW[3]~input_o\ & ((\SW[11]~input_o\ & (\Add0~5\ & VCC)) # (!\SW[11]~input_o\ & (!\Add0~5\)))) # (!\SW[3]~input_o\ & ((\SW[11]~input_o\ & (!\Add0~5\)) # (!\SW[11]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\SW[3]~input_o\ & (!\SW[11]~input_o\ & !\Add0~5\)) # (!\SW[3]~input_o\ & ((!\Add0~5\) # (!\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[11]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X108_Y12_N2
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\Mux40~0_combout\ & (((\Add0~6_combout\) # (!\KEY[1]~input_o\)))) # (!\Mux40~0_combout\ & (\Add1~6_combout\ & ((\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Mux40~0_combout\,
	datac => \Add0~6_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X109_Y12_N22
\Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux41~2_combout\ & (((\Mux40~1_combout\)) # (!\Mux41~1_combout\))) # (!\Mux41~2_combout\ & (\Mux41~1_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~2_combout\,
	datab => \Mux41~1_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~26_combout\,
	datad => \Mux40~1_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X109_Y12_N0
Mux40 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~combout\ = (\Mux40~2_combout\ & (((\result~2_combout\) # (!\Mux41~0_combout\)))) # (!\Mux40~2_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \result~2_combout\,
	datac => \Mux40~2_combout\,
	datad => \Mux41~0_combout\,
	combout => \Mux40~combout\);

-- Location: LCCOMB_X105_Y13_N10
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\KEY[0]~input_o\ & ((\SW[8]~input_o\) # ((\SW[0]~input_o\)))) # (!\KEY[0]~input_o\ & (((\Mult0|auto_generated|mac_out2~dataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \KEY[0]~input_o\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X109_Y15_N12
\Div0|auto_generated|divider|divider|StageOut[238]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[238]~181_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[238]~181_combout\);

-- Location: LCCOMB_X111_Y14_N2
\Div0|auto_generated|divider|divider|StageOut[238]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[238]~224_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[221]~217_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[221]~217_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[238]~224_combout\);

-- Location: LCCOMB_X113_Y14_N2
\Div0|auto_generated|divider|divider|StageOut[237]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[237]~225_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[220]~218_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[220]~218_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[237]~225_combout\);

-- Location: LCCOMB_X109_Y14_N18
\Div0|auto_generated|divider|divider|StageOut[237]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[237]~182_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[13]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[237]~182_combout\);

-- Location: LCCOMB_X111_Y14_N28
\Div0|auto_generated|divider|divider|StageOut[236]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[236]~226_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[219]~219_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[219]~219_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[236]~226_combout\);

-- Location: LCCOMB_X109_Y14_N28
\Div0|auto_generated|divider|divider|StageOut[236]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[236]~183_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[12]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[236]~183_combout\);

-- Location: LCCOMB_X109_Y14_N22
\Div0|auto_generated|divider|divider|StageOut[235]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[235]~184_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[11]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[235]~184_combout\);

-- Location: LCCOMB_X111_Y12_N4
\Div0|auto_generated|divider|divider|StageOut[235]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[235]~227_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[218]~220_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~20_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[218]~220_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[235]~227_combout\);

-- Location: LCCOMB_X109_Y14_N24
\Div0|auto_generated|divider|divider|StageOut[234]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[234]~185_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~20_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[10]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[234]~185_combout\);

-- Location: LCCOMB_X111_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[234]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[234]~228_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[217]~221_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[217]~221_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[234]~228_combout\);

-- Location: LCCOMB_X109_Y14_N26
\Div0|auto_generated|divider|divider|StageOut[233]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[233]~186_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[233]~186_combout\);

-- Location: LCCOMB_X113_Y14_N4
\Div0|auto_generated|divider|divider|StageOut[233]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[233]~229_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[216]~222_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[216]~222_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[233]~229_combout\);

-- Location: LCCOMB_X113_Y14_N14
\Div0|auto_generated|divider|divider|StageOut[232]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[232]~230_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[215]~223_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[215]~223_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[232]~230_combout\);

-- Location: LCCOMB_X109_Y14_N20
\Div0|auto_generated|divider|divider|StageOut[232]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[232]~187_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[232]~187_combout\);

-- Location: LCCOMB_X109_Y14_N30
\Div0|auto_generated|divider|divider|StageOut[231]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[231]~188_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[231]~188_combout\);

-- Location: LCCOMB_X111_Y14_N30
\Div0|auto_generated|divider|divider|StageOut[231]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[231]~231_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[197]~161_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[197]~161_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[231]~231_combout\);

-- Location: LCCOMB_X110_Y15_N0
\Div0|auto_generated|divider|divider|StageOut[230]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[230]~189_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & (\Div0|auto_generated|divider|divider|StageOut[213]~175_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[213]~175_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[230]~189_combout\);

-- Location: LCCOMB_X110_Y15_N18
\Div0|auto_generated|divider|divider|StageOut[229]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[229]~190_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[212]~176_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & (\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[212]~176_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[229]~190_combout\);

-- Location: LCCOMB_X110_Y15_N20
\Div0|auto_generated|divider|divider|StageOut[228]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[228]~191_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[211]~177_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & (\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[211]~177_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[228]~191_combout\);

-- Location: LCCOMB_X110_Y15_N6
\Div0|auto_generated|divider|divider|StageOut[227]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[227]~192_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[210]~178_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & (\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[210]~178_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[227]~192_combout\);

-- Location: LCCOMB_X109_Y15_N6
\Div0|auto_generated|divider|divider|StageOut[226]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[226]~193_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[209]~179_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & (\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[209]~179_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[226]~193_combout\);

-- Location: LCCOMB_X109_Y15_N0
\Div0|auto_generated|divider|divider|StageOut[225]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[225]~194_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[208]~180_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & (\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[208]~180_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[225]~194_combout\);

-- Location: LCCOMB_X109_Y15_N10
\Div0|auto_generated|divider|divider|StageOut[224]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[224]~195_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & (\SW[9]~input_o\)) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[15]~30_combout\,
	datac => \SW[9]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[0]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[224]~195_combout\);

-- Location: LCCOMB_X109_Y15_N16
\Div0|auto_generated|divider|divider|add_sub_15_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[0]~1_cout\ = CARRY((\SW[8]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[0]~1_cout\);

-- Location: LCCOMB_X109_Y15_N18
\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~3_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[224]~195_combout\ & (\SW[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[0]~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[224]~195_combout\ & ((\SW[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[224]~195_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~3_cout\);

-- Location: LCCOMB_X109_Y15_N20
\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~5_cout\ = CARRY((\SW[2]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[225]~194_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~3_cout\)) # 
-- (!\SW[2]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[225]~194_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[225]~194_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~5_cout\);

-- Location: LCCOMB_X109_Y15_N22
\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~7_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[226]~193_combout\ & (\SW[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~5_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[226]~193_combout\ & ((\SW[3]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[226]~193_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~7_cout\);

-- Location: LCCOMB_X109_Y15_N24
\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[227]~192_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~7_cout\) # (!\SW[4]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[227]~192_combout\ & (!\SW[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[227]~192_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~9_cout\);

-- Location: LCCOMB_X109_Y15_N26
\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~11_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[228]~191_combout\ & (\SW[5]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~9_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[228]~191_combout\ & ((\SW[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[228]~191_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~11_cout\);

-- Location: LCCOMB_X109_Y15_N28
\Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~13_cout\ = CARRY((\SW[6]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[229]~190_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~11_cout\)) # 
-- (!\SW[6]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[229]~190_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[229]~190_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~11_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~13_cout\);

-- Location: LCCOMB_X109_Y15_N30
\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~15_cout\ = CARRY((\SW[7]~input_o\ & ((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~13_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[230]~189_combout\))) # 
-- (!\SW[7]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[230]~189_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[230]~189_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~13_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~15_cout\);

-- Location: LCCOMB_X109_Y14_N0
\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[231]~188_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[231]~231_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[231]~188_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[231]~231_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~15_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~17_cout\);

-- Location: LCCOMB_X109_Y14_N2
\Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[232]~230_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[232]~187_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[232]~230_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[232]~187_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~17_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~19_cout\);

-- Location: LCCOMB_X109_Y14_N4
\Div0|auto_generated|divider|divider|add_sub_15_result_int[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[10]~21_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[233]~186_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[233]~229_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[233]~186_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[233]~229_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~19_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[10]~21_cout\);

-- Location: LCCOMB_X109_Y14_N6
\Div0|auto_generated|divider|divider|add_sub_15_result_int[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[11]~23_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[234]~185_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[234]~228_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[10]~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[234]~185_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[234]~228_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[10]~21_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[11]~23_cout\);

-- Location: LCCOMB_X109_Y14_N8
\Div0|auto_generated|divider|divider|add_sub_15_result_int[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[12]~25_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[235]~184_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[235]~227_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[11]~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[235]~184_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[235]~227_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[11]~23_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[12]~25_cout\);

-- Location: LCCOMB_X109_Y14_N10
\Div0|auto_generated|divider|divider|add_sub_15_result_int[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[13]~27_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[236]~226_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[236]~183_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[12]~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[236]~226_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[236]~183_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[12]~25_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[13]~27_cout\);

-- Location: LCCOMB_X109_Y14_N12
\Div0|auto_generated|divider|divider|add_sub_15_result_int[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[14]~29_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[237]~225_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[237]~182_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[13]~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[237]~225_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[237]~182_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[13]~27_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[14]~29_cout\);

-- Location: LCCOMB_X109_Y14_N14
\Div0|auto_generated|divider|divider|add_sub_15_result_int[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[15]~31_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[238]~181_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[238]~224_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[14]~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[238]~181_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[238]~224_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[14]~29_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[15]~31_cout\);

-- Location: LCCOMB_X109_Y14_N16
\Div0|auto_generated|divider|divider|add_sub_15_result_int[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[16]~32_combout\ = \Div0|auto_generated|divider|divider|add_sub_15_result_int[15]~31_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[15]~31_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[16]~32_combout\);

-- Location: LCCOMB_X105_Y13_N2
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\KEY[1]~input_o\ & (\Mux43~2_combout\)) # (!\KEY[1]~input_o\ & (((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[16]~32_combout\ & \KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[16]~32_combout\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X108_Y12_N0
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\KEY[1]~input_o\ & (\Add1~0_combout\)) # (!\KEY[1]~input_o\ & (((\SW[8]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Add1~0_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X105_Y13_N24
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\KEY[2]~input_o\ & ((\KEY[0]~input_o\ & (\Add0~0_combout\)) # (!\KEY[0]~input_o\ & ((\Mux43~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux43~0_combout\,
	datac => \KEY[2]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X105_Y13_N28
\Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\Mux43~1_combout\) # ((\Mux43~3_combout\ & !\KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux43~3_combout\,
	datac => \KEY[2]~input_o\,
	datad => \Mux43~1_combout\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X108_Y16_N10
\Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (\Mux43~4_combout\ & ((\Mux40~combout\) # (\Mux41~combout\ $ (\Mux42~combout\)))) # (!\Mux43~4_combout\ & ((\Mux42~combout\) # (\Mux41~combout\ $ (\Mux40~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \Mux42~combout\,
	datac => \Mux40~combout\,
	datad => \Mux43~4_combout\,
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X103_Y12_N24
\BlankOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlankOut~2_combout\ = (!\SW[1]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \BlankOut~2_combout\);

-- Location: LCCOMB_X105_Y12_N2
\BlankOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlankOut~1_combout\ = (!\SW[0]~input_o\ & (!\KEY[2]~input_o\ & (\KEY[0]~input_o\ & !\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \BlankOut~1_combout\);

-- Location: LCCOMB_X105_Y12_N4
\BlankOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BlankOut~3_combout\ = (\BlankOut~0_combout\ & (\BlankOut~2_combout\ & (!\SW[3]~input_o\ & \BlankOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~0_combout\,
	datab => \BlankOut~2_combout\,
	datac => \SW[3]~input_o\,
	datad => \BlankOut~1_combout\,
	combout => \BlankOut~3_combout\);

-- Location: LCCOMB_X114_Y17_N8
\Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~1_combout\ = (\Mux71~0_combout\ & !\BlankOut~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux71~0_combout\,
	datad => \BlankOut~3_combout\,
	combout => \Mux71~1_combout\);

-- Location: LCCOMB_X108_Y16_N28
\Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (\Mux41~combout\ & (\Mux43~4_combout\ & (\Mux42~combout\ $ (\Mux40~combout\)))) # (!\Mux41~combout\ & (!\Mux40~combout\ & ((\Mux42~combout\) # (\Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \Mux42~combout\,
	datac => \Mux40~combout\,
	datad => \Mux43~4_combout\,
	combout => \Mux70~0_combout\);

-- Location: LCCOMB_X108_Y16_N22
\Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~1_combout\ = (\BlankOut~3_combout\) # (\Mux70~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux70~0_combout\,
	combout => \Mux70~1_combout\);

-- Location: LCCOMB_X108_Y16_N24
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\Mux42~combout\ & (((!\Mux40~combout\ & \Mux43~4_combout\)))) # (!\Mux42~combout\ & ((\Mux41~combout\ & (!\Mux40~combout\)) # (!\Mux41~combout\ & ((\Mux43~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \Mux42~combout\,
	datac => \Mux40~combout\,
	datad => \Mux43~4_combout\,
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X108_Y16_N26
\Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = (\BlankOut~3_combout\) # (\Mux69~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux69~0_combout\,
	combout => \Mux69~1_combout\);

-- Location: LCCOMB_X108_Y16_N20
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\Mux42~combout\ & ((\Mux41~combout\ & ((\Mux43~4_combout\))) # (!\Mux41~combout\ & (\Mux40~combout\ & !\Mux43~4_combout\)))) # (!\Mux42~combout\ & (!\Mux40~combout\ & (\Mux41~combout\ $ (\Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \Mux42~combout\,
	datac => \Mux40~combout\,
	datad => \Mux43~4_combout\,
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X108_Y16_N6
\Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = (\BlankOut~3_combout\) # (\Mux68~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux68~0_combout\,
	combout => \Mux68~1_combout\);

-- Location: LCCOMB_X108_Y16_N0
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (\Mux41~combout\ & (\Mux40~combout\ & ((\Mux42~combout\) # (!\Mux43~4_combout\)))) # (!\Mux41~combout\ & (\Mux42~combout\ & (!\Mux40~combout\ & !\Mux43~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \Mux42~combout\,
	datac => \Mux40~combout\,
	datad => \Mux43~4_combout\,
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X108_Y16_N2
\Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = (\BlankOut~3_combout\) # (\Mux67~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux67~0_combout\,
	combout => \Mux67~1_combout\);

-- Location: LCCOMB_X108_Y16_N4
\Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\Mux42~combout\ & ((\Mux43~4_combout\ & ((\Mux40~combout\))) # (!\Mux43~4_combout\ & (\Mux41~combout\)))) # (!\Mux42~combout\ & (\Mux41~combout\ & (\Mux40~combout\ $ (\Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \Mux42~combout\,
	datac => \Mux40~combout\,
	datad => \Mux43~4_combout\,
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X108_Y16_N30
\Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~1_combout\ = (\Mux66~0_combout\) # (\BlankOut~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux66~0_combout\,
	datac => \BlankOut~3_combout\,
	combout => \Mux66~1_combout\);

-- Location: LCCOMB_X108_Y16_N16
\Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\Mux41~combout\ & (!\Mux42~combout\ & (\Mux40~combout\ $ (!\Mux43~4_combout\)))) # (!\Mux41~combout\ & (\Mux43~4_combout\ & (\Mux42~combout\ $ (!\Mux40~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~combout\,
	datab => \Mux42~combout\,
	datac => \Mux40~combout\,
	datad => \Mux43~4_combout\,
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X108_Y16_N18
\Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~1_combout\ = (\BlankOut~3_combout\) # (\Mux65~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux65~0_combout\,
	combout => \Mux65~1_combout\);

-- Location: LCCOMB_X100_Y12_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\SW[4]~input_o\ $ (\SW[12]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\SW[4]~input_o\ & ((\SW[12]~input_o\) # (!\Add0~7\))) # (!\SW[4]~input_o\ & (\SW[12]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[12]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X108_Y12_N28
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\SW[12]~input_o\ & (\KEY[0]~input_o\ $ (((\SW[4]~input_o\ & !\KEY[1]~input_o\))))) # (!\SW[12]~input_o\ & (\KEY[0]~input_o\ & ((\SW[4]~input_o\) # (\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X108_Y12_N12
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\SW[12]~input_o\ $ (\SW[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\SW[12]~input_o\ & ((!\Add1~7\) # (!\SW[4]~input_o\))) # (!\SW[12]~input_o\ & (!\SW[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X108_Y12_N22
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\Mux39~0_combout\ & ((\Add0~8_combout\) # ((!\KEY[1]~input_o\)))) # (!\Mux39~0_combout\ & (((\Add1~8_combout\ & \KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Mux39~0_combout\,
	datac => \Add1~8_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X109_Y12_N26
\Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux41~2_combout\ & ((\Mux39~1_combout\) # ((!\Mux41~1_combout\)))) # (!\Mux41~2_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & \Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~2_combout\,
	datab => \Mux39~1_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datad => \Mux41~1_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X108_Y15_N0
\result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~3_combout\ = (\SW[12]~input_o\) # (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \result~3_combout\);

-- Location: LCCOMB_X108_Y16_N12
Mux39 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~combout\ = (\Mux39~2_combout\ & ((\result~3_combout\) # ((!\Mux41~0_combout\)))) # (!\Mux39~2_combout\ & (((\Mult0|auto_generated|mac_out2~DATAOUT4\ & \Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~2_combout\,
	datab => \result~3_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \Mux41~0_combout\,
	combout => \Mux39~combout\);

-- Location: LCCOMB_X105_Y12_N10
\Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = (\SW[5]~input_o\ & (\KEY[0]~input_o\ $ (((\SW[13]~input_o\ & \KEY[2]~input_o\))))) # (!\SW[5]~input_o\ & (\SW[13]~input_o\ & (\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \Mux38~4_combout\);

-- Location: LCCOMB_X105_Y12_N24
\Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (\SW[5]~input_o\ & (\KEY[2]~input_o\ & (\SW[13]~input_o\ $ (\KEY[0]~input_o\)))) # (!\SW[5]~input_o\ & (\KEY[0]~input_o\ & (\SW[13]~input_o\ $ (!\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X100_Y12_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\SW[13]~input_o\ & ((\SW[5]~input_o\ & (\Add0~9\ & VCC)) # (!\SW[5]~input_o\ & (!\Add0~9\)))) # (!\SW[13]~input_o\ & ((\SW[5]~input_o\ & (!\Add0~9\)) # (!\SW[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\SW[13]~input_o\ & (!\SW[5]~input_o\ & !\Add0~9\)) # (!\SW[13]~input_o\ & ((!\Add0~9\) # (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X108_Y12_N14
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\SW[5]~input_o\ & ((\SW[13]~input_o\ & (!\Add1~9\)) # (!\SW[13]~input_o\ & ((\Add1~9\) # (GND))))) # (!\SW[5]~input_o\ & ((\SW[13]~input_o\ & (\Add1~9\ & VCC)) # (!\SW[13]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\SW[5]~input_o\ & ((!\Add1~9\) # (!\SW[13]~input_o\))) # (!\SW[5]~input_o\ & (!\SW[13]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[13]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X105_Y12_N6
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\KEY[0]~input_o\ & (\Add0~10_combout\)) # (!\KEY[0]~input_o\ & ((\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Add1~10_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X105_Y13_N20
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\KEY[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT5\)) # (!\KEY[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \KEY[1]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X105_Y13_N30
\Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\KEY[2]~input_o\ & (\Mux38~1_combout\)) # (!\KEY[2]~input_o\ & ((\Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~1_combout\,
	datac => \KEY[2]~input_o\,
	datad => \Mux38~0_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X105_Y12_N20
\Mux38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~5_combout\ = (\Mux38~3_combout\ & ((\Mux38~2_combout\ & (\Mux38~4_combout\)) # (!\Mux38~2_combout\ & ((!\KEY[1]~input_o\))))) # (!\Mux38~3_combout\ & ((\Mux38~2_combout\ & ((\KEY[1]~input_o\))) # (!\Mux38~2_combout\ & (\Mux38~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~4_combout\,
	datab => \Mux38~3_combout\,
	datac => \Mux38~2_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Mux38~5_combout\);

-- Location: LCCOMB_X105_Y12_N30
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\SW[14]~input_o\ & (\KEY[0]~input_o\ $ (((\SW[6]~input_o\ & !\KEY[1]~input_o\))))) # (!\SW[14]~input_o\ & (\KEY[0]~input_o\ & ((\SW[6]~input_o\) # (\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X108_Y12_N16
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\SW[6]~input_o\ $ (\SW[14]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\SW[6]~input_o\ & (\SW[14]~input_o\ & !\Add1~11\)) # (!\SW[6]~input_o\ & ((\SW[14]~input_o\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[14]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X100_Y12_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\SW[14]~input_o\ $ (\SW[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\SW[14]~input_o\ & ((\SW[6]~input_o\) # (!\Add0~11\))) # (!\SW[14]~input_o\ & (\SW[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X105_Y12_N16
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Mux37~0_combout\ & (((\Add0~12_combout\) # (!\KEY[1]~input_o\)))) # (!\Mux37~0_combout\ & (\Add1~12_combout\ & ((\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~0_combout\,
	datab => \Add1~12_combout\,
	datac => \Add0~12_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X109_Y12_N4
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux41~2_combout\ & ((\Mux37~1_combout\) # ((!\Mux41~1_combout\)))) # (!\Mux41~2_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & \Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datac => \Mux41~2_combout\,
	datad => \Mux41~1_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X106_Y13_N26
\result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~4_combout\ = (\SW[6]~input_o\) # (\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \result~4_combout\);

-- Location: LCCOMB_X106_Y13_N28
Mux37 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~combout\ = (\Mux37~2_combout\ & (((\result~4_combout\) # (!\Mux41~0_combout\)))) # (!\Mux37~2_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \Mux37~2_combout\,
	datac => \result~4_combout\,
	datad => \Mux41~0_combout\,
	combout => \Mux37~combout\);

-- Location: LCCOMB_X105_Y12_N26
\result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~5_combout\ = (\SW[15]~input_o\) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[7]~input_o\,
	combout => \result~5_combout\);

-- Location: LCCOMB_X108_Y12_N18
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\SW[15]~input_o\ & ((\SW[7]~input_o\ & (!\Add1~13\)) # (!\SW[7]~input_o\ & (\Add1~13\ & VCC)))) # (!\SW[15]~input_o\ & ((\SW[7]~input_o\ & ((\Add1~13\) # (GND))) # (!\SW[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\SW[15]~input_o\ & (\SW[7]~input_o\ & !\Add1~13\)) # (!\SW[15]~input_o\ & ((\SW[7]~input_o\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X105_Y12_N28
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\KEY[0]~input_o\ & ((\KEY[1]~input_o\) # (\SW[15]~input_o\ $ (\SW[7]~input_o\)))) # (!\KEY[0]~input_o\ & (\SW[15]~input_o\ & (\SW[7]~input_o\ & !\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X100_Y12_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\SW[15]~input_o\ & ((\SW[7]~input_o\ & (\Add0~13\ & VCC)) # (!\SW[7]~input_o\ & (!\Add0~13\)))) # (!\SW[15]~input_o\ & ((\SW[7]~input_o\ & (!\Add0~13\)) # (!\SW[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\SW[15]~input_o\ & (!\SW[7]~input_o\ & !\Add0~13\)) # (!\SW[15]~input_o\ & ((!\Add0~13\) # (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X105_Y12_N22
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux36~0_combout\ & (((\Add0~14_combout\) # (!\KEY[1]~input_o\)))) # (!\Mux36~0_combout\ & (\Add1~14_combout\ & ((\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Mux36~0_combout\,
	datac => \Add0~14_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X109_Y12_N6
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux41~2_combout\ & ((\Mux36~1_combout\) # ((!\Mux41~1_combout\)))) # (!\Mux41~2_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & \Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~2_combout\,
	datab => \Mux36~1_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datad => \Mux41~1_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X108_Y16_N14
Mux36 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~combout\ = (\Mux41~0_combout\ & ((\Mux36~2_combout\ & ((\result~5_combout\))) # (!\Mux36~2_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT7\)))) # (!\Mux41~0_combout\ & (((\Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \Mux41~0_combout\,
	datac => \result~5_combout\,
	datad => \Mux36~2_combout\,
	combout => \Mux36~combout\);

-- Location: LCCOMB_X109_Y16_N24
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\Mux39~combout\ & ((\Mux36~combout\) # (\Mux38~5_combout\ $ (\Mux37~combout\)))) # (!\Mux39~combout\ & ((\Mux38~5_combout\) # (\Mux37~combout\ $ (\Mux36~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \Mux38~5_combout\,
	datac => \Mux37~combout\,
	datad => \Mux36~combout\,
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X109_Y16_N10
\Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = (!\BlankOut~3_combout\ & \Mux64~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux64~0_combout\,
	combout => \Mux64~1_combout\);

-- Location: LCCOMB_X109_Y16_N20
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\Mux39~combout\ & (\Mux36~combout\ $ (((\Mux38~5_combout\) # (!\Mux37~combout\))))) # (!\Mux39~combout\ & (\Mux38~5_combout\ & (!\Mux37~combout\ & !\Mux36~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \Mux38~5_combout\,
	datac => \Mux37~combout\,
	datad => \Mux36~combout\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X109_Y16_N6
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\BlankOut~3_combout\) # (\Mux63~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux63~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X109_Y16_N0
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\Mux38~5_combout\ & (\Mux39~combout\ & ((!\Mux36~combout\)))) # (!\Mux38~5_combout\ & ((\Mux37~combout\ & ((!\Mux36~combout\))) # (!\Mux37~combout\ & (\Mux39~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \Mux38~5_combout\,
	datac => \Mux37~combout\,
	datad => \Mux36~combout\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X109_Y16_N26
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\BlankOut~3_combout\) # (\Mux62~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X109_Y16_N28
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\Mux38~5_combout\ & ((\Mux39~combout\ & (\Mux37~combout\)) # (!\Mux39~combout\ & (!\Mux37~combout\ & \Mux36~combout\)))) # (!\Mux38~5_combout\ & (!\Mux36~combout\ & (\Mux39~combout\ $ (\Mux37~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \Mux38~5_combout\,
	datac => \Mux37~combout\,
	datad => \Mux36~combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X109_Y16_N22
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\BlankOut~3_combout\) # (\Mux61~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux61~0_combout\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X109_Y16_N16
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\Mux37~combout\ & (\Mux36~combout\ & ((\Mux38~5_combout\) # (!\Mux39~combout\)))) # (!\Mux37~combout\ & (!\Mux39~combout\ & (\Mux38~5_combout\ & !\Mux36~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \Mux38~5_combout\,
	datac => \Mux37~combout\,
	datad => \Mux36~combout\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X109_Y16_N18
\Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\BlankOut~3_combout\) # (\Mux60~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux60~0_combout\,
	combout => \Mux60~1_combout\);

-- Location: LCCOMB_X109_Y16_N4
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Mux38~5_combout\ & ((\Mux39~combout\ & ((\Mux36~combout\))) # (!\Mux39~combout\ & (\Mux37~combout\)))) # (!\Mux38~5_combout\ & (\Mux37~combout\ & (\Mux39~combout\ $ (\Mux36~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \Mux38~5_combout\,
	datac => \Mux37~combout\,
	datad => \Mux36~combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X114_Y17_N10
\Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\Mux59~0_combout\) # (\BlankOut~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux59~0_combout\,
	datad => \BlankOut~3_combout\,
	combout => \Mux59~1_combout\);

-- Location: LCCOMB_X109_Y16_N30
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\Mux37~combout\ & (!\Mux38~5_combout\ & (\Mux39~combout\ $ (!\Mux36~combout\)))) # (!\Mux37~combout\ & (\Mux39~combout\ & (\Mux38~5_combout\ $ (!\Mux36~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~combout\,
	datab => \Mux38~5_combout\,
	datac => \Mux37~combout\,
	datad => \Mux36~combout\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X109_Y16_N8
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\Mux58~0_combout\) # (\BlankOut~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datac => \BlankOut~3_combout\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X108_Y12_N20
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X105_Y12_N0
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\KEY[0]~input_o\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X105_Y13_N4
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mux32~0_combout\ & ((\KEY[2]~input_o\ & ((\Add1~16_combout\))) # (!\KEY[2]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \Add1~16_combout\,
	datac => \KEY[2]~input_o\,
	datad => \Mux32~0_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X105_Y13_N16
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\ & ((\KEY[2]~input_o\ & ((\Add1~16_combout\))) # (!\KEY[2]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \Add1~16_combout\,
	datac => \KEY[2]~input_o\,
	datad => \Mux32~0_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X100_Y12_N28
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X105_Y13_N0
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\KEY[2]~input_o\ & (((\Add1~16_combout\) # (\KEY[0]~input_o\)))) # (!\KEY[2]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT8\ & ((!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \Add1~16_combout\,
	datac => \KEY[2]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X105_Y13_N26
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux35~0_combout\ & (\KEY[1]~input_o\ & ((\Add0~16_combout\) # (!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Mux35~0_combout\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X105_Y13_N22
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux32~0_combout\ & ((\KEY[2]~input_o\ & ((\Add1~16_combout\))) # (!\KEY[2]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \Add1~16_combout\,
	datac => \KEY[2]~input_o\,
	datad => \Mux32~0_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X114_Y17_N12
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\Mux35~1_combout\ & ((\Mux32~1_combout\) # (\Mux34~0_combout\ $ (\Mux33~0_combout\)))) # (!\Mux35~1_combout\ & ((\Mux34~0_combout\) # (\Mux32~1_combout\ $ (\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux32~1_combout\,
	datac => \Mux35~1_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (!\BlankOut~3_combout\ & \Mux57~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~3_combout\,
	datad => \Mux57~0_combout\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X114_Y17_N0
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\Mux34~0_combout\ & (!\Mux32~1_combout\ & ((\Mux35~1_combout\) # (!\Mux33~0_combout\)))) # (!\Mux34~0_combout\ & (\Mux35~1_combout\ & (\Mux32~1_combout\ $ (!\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux32~1_combout\,
	datac => \Mux35~1_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X114_Y17_N2
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\BlankOut~3_combout\) # (\Mux56~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~3_combout\,
	datad => \Mux56~0_combout\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X114_Y17_N4
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux34~0_combout\ & (!\Mux32~1_combout\ & (\Mux35~1_combout\))) # (!\Mux34~0_combout\ & ((\Mux33~0_combout\ & (!\Mux32~1_combout\)) # (!\Mux33~0_combout\ & ((\Mux35~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux32~1_combout\,
	datac => \Mux35~1_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\Mux55~0_combout\) # (\BlankOut~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux55~0_combout\,
	datad => \BlankOut~3_combout\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X114_Y17_N24
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\Mux34~0_combout\ & ((\Mux35~1_combout\ & ((\Mux33~0_combout\))) # (!\Mux35~1_combout\ & (\Mux32~1_combout\ & !\Mux33~0_combout\)))) # (!\Mux34~0_combout\ & (!\Mux32~1_combout\ & (\Mux35~1_combout\ $ (\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux32~1_combout\,
	datac => \Mux35~1_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X114_Y17_N18
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\BlankOut~3_combout\) # (\Mux54~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~3_combout\,
	datad => \Mux54~0_combout\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X114_Y17_N20
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\Mux32~1_combout\ & (\Mux33~0_combout\ & ((\Mux34~0_combout\) # (!\Mux35~1_combout\)))) # (!\Mux32~1_combout\ & (\Mux34~0_combout\ & (!\Mux35~1_combout\ & !\Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux32~1_combout\,
	datac => \Mux35~1_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X114_Y17_N6
\Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\BlankOut~3_combout\) # (\Mux53~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~3_combout\,
	datad => \Mux53~0_combout\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X114_Y17_N16
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\Mux34~0_combout\ & ((\Mux35~1_combout\ & (\Mux32~1_combout\)) # (!\Mux35~1_combout\ & ((\Mux33~0_combout\))))) # (!\Mux34~0_combout\ & (\Mux33~0_combout\ & (\Mux32~1_combout\ $ (\Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux32~1_combout\,
	datac => \Mux35~1_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X114_Y17_N26
\Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\BlankOut~3_combout\) # (\Mux52~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~3_combout\,
	datad => \Mux52~0_combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X114_Y17_N28
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Mux32~1_combout\ & (\Mux35~1_combout\ & (\Mux34~0_combout\ $ (\Mux33~0_combout\)))) # (!\Mux32~1_combout\ & (!\Mux34~0_combout\ & (\Mux35~1_combout\ $ (\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux32~1_combout\,
	datac => \Mux35~1_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X114_Y17_N14
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\BlankOut~3_combout\) # (\Mux51~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BlankOut~3_combout\,
	datad => \Mux51~0_combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X105_Y13_N14
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux32~0_combout\ & ((\KEY[2]~input_o\ & ((\Add1~16_combout\))) # (!\KEY[2]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \Add1~16_combout\,
	datac => \KEY[2]~input_o\,
	datad => \Mux32~0_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X105_Y13_N12
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux32~0_combout\ & ((\KEY[2]~input_o\ & ((\Add1~16_combout\))) # (!\KEY[2]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \Add1~16_combout\,
	datac => \KEY[2]~input_o\,
	datad => \Mux32~0_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X105_Y13_N8
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux32~0_combout\ & ((\KEY[2]~input_o\ & ((\Add1~16_combout\))) # (!\KEY[2]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \Add1~16_combout\,
	datac => \KEY[2]~input_o\,
	datad => \Mux32~0_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X105_Y13_N18
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux32~0_combout\ & ((\KEY[2]~input_o\ & ((\Add1~16_combout\))) # (!\KEY[2]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \Add1~16_combout\,
	datac => \KEY[2]~input_o\,
	datad => \Mux32~0_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X106_Y12_N8
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux31~0_combout\ & ((\Mux28~0_combout\) # (\Mux29~0_combout\ $ (\Mux30~0_combout\)))) # (!\Mux31~0_combout\ & ((\Mux30~0_combout\) # (\Mux29~0_combout\ $ (\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux30~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X106_Y12_N10
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux50~0_combout\ & !\BlankOut~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux50~0_combout\,
	datac => \BlankOut~3_combout\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X106_Y12_N20
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\Mux29~0_combout\ & (\Mux31~0_combout\ & (\Mux30~0_combout\ $ (\Mux28~0_combout\)))) # (!\Mux29~0_combout\ & (!\Mux28~0_combout\ & ((\Mux30~0_combout\) # (\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux30~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X106_Y12_N30
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\BlankOut~3_combout\) # (\Mux49~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux49~0_combout\,
	combout => \Mux49~1_combout\);

-- Location: LCCOMB_X106_Y12_N0
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\Mux30~0_combout\ & (((!\Mux28~0_combout\ & \Mux31~0_combout\)))) # (!\Mux30~0_combout\ & ((\Mux29~0_combout\ & (!\Mux28~0_combout\)) # (!\Mux29~0_combout\ & ((\Mux31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux30~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X106_Y12_N18
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\BlankOut~3_combout\) # (\Mux48~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux48~0_combout\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X106_Y12_N12
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\Mux30~0_combout\ & ((\Mux29~0_combout\ & ((\Mux31~0_combout\))) # (!\Mux29~0_combout\ & (\Mux28~0_combout\ & !\Mux31~0_combout\)))) # (!\Mux30~0_combout\ & (!\Mux28~0_combout\ & (\Mux29~0_combout\ $ (\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux30~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X106_Y12_N6
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\BlankOut~3_combout\) # (\Mux47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux47~0_combout\,
	combout => \Mux47~1_combout\);

-- Location: LCCOMB_X106_Y12_N16
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Mux29~0_combout\ & (\Mux28~0_combout\ & ((\Mux30~0_combout\) # (!\Mux31~0_combout\)))) # (!\Mux29~0_combout\ & (\Mux30~0_combout\ & (!\Mux28~0_combout\ & !\Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux30~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X106_Y12_N2
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\BlankOut~3_combout\) # (\Mux46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux46~0_combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X106_Y12_N28
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\Mux30~0_combout\ & ((\Mux31~0_combout\ & ((\Mux28~0_combout\))) # (!\Mux31~0_combout\ & (\Mux29~0_combout\)))) # (!\Mux30~0_combout\ & (\Mux29~0_combout\ & (\Mux28~0_combout\ $ (\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux30~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X106_Y12_N22
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\BlankOut~3_combout\) # (\Mux45~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux45~0_combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X106_Y12_N24
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\Mux29~0_combout\ & (!\Mux30~0_combout\ & (\Mux28~0_combout\ $ (!\Mux31~0_combout\)))) # (!\Mux29~0_combout\ & (\Mux31~0_combout\ & (\Mux30~0_combout\ $ (!\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux30~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X106_Y12_N26
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\BlankOut~3_combout\) # (\Mux44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BlankOut~3_combout\,
	datad => \Mux44~0_combout\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X103_Y12_N22
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\SW[0]~input_o\ & ((\SW[3]~input_o\) # (\SW[2]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X103_Y12_N8
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X100_Y12_N8
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\ & ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X102_Y12_N2
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[0]~input_o\ & (\SW[3]~input_o\ & !\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[0]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X100_Y12_N10
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X103_Y12_N26
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (\SW[3]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X102_Y12_N28
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\SW[3]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X97_Y8_N10
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\SW[4]~input_o\ & ((\SW[7]~input_o\) # (\SW[6]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[5]~input_o\) # (\SW[7]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X97_Y8_N4
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\SW[6]~input_o\ & (\SW[4]~input_o\ & (\SW[7]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X97_Y8_N14
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\SW[5]~input_o\ & (!\SW[7]~input_o\ & ((\SW[4]~input_o\)))) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (!\SW[7]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X97_Y8_N16
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[6]~input_o\ & (\SW[7]~input_o\ & !\SW[4]~input_o\)))) # (!\SW[5]~input_o\ & (!\SW[7]~input_o\ & (\SW[6]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X97_Y8_N26
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\SW[7]~input_o\ & (\SW[6]~input_o\ & ((\SW[5]~input_o\) # (!\SW[4]~input_o\)))) # (!\SW[7]~input_o\ & (!\SW[6]~input_o\ & (\SW[5]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X97_Y8_N28
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\SW[7]~input_o\ & ((\SW[4]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[4]~input_o\ & (\SW[6]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[6]~input_o\ & (\SW[5]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X97_Y8_N6
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\SW[7]~input_o\ & (\SW[4]~input_o\ & (\SW[6]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[7]~input_o\ & (!\SW[5]~input_o\ & (\SW[6]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X97_Y13_N24
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\SW[8]~input_o\ & ((\SW[11]~input_o\) # (\SW[10]~input_o\ $ (\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\) # (\SW[10]~input_o\ $ (\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X97_Y13_N2
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\SW[10]~input_o\ & (\SW[8]~input_o\ & (\SW[9]~input_o\ $ (\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & (!\SW[11]~input_o\ & ((\SW[8]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X97_Y13_N4
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\ & !\SW[11]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[10]~input_o\ & ((!\SW[11]~input_o\))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X97_Y13_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\SW[9]~input_o\ & ((\SW[10]~input_o\ & (\SW[8]~input_o\)) # (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & \SW[11]~input_o\)))) # (!\SW[9]~input_o\ & (!\SW[11]~input_o\ & (\SW[10]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X97_Y13_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\SW[10]~input_o\ & (\SW[11]~input_o\ & ((\SW[9]~input_o\) # (!\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\SW[9]~input_o\ & !\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X97_Y13_N26
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[11]~input_o\))) # (!\SW[8]~input_o\ & (\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (\SW[10]~input_o\ & (\SW[8]~input_o\ $ (\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X97_Y13_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\SW[10]~input_o\ & (!\SW[9]~input_o\ & (\SW[8]~input_o\ $ (!\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\ & (\SW[9]~input_o\ $ (!\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X105_Y12_N18
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\SW[12]~input_o\ & ((\SW[15]~input_o\) # (\SW[13]~input_o\ $ (\SW[14]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[13]~input_o\) # (\SW[15]~input_o\ $ (\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X98_Y12_N24
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\SW[14]~input_o\ & (\SW[12]~input_o\ & (\SW[15]~input_o\ $ (\SW[13]~input_o\)))) # (!\SW[14]~input_o\ & (!\SW[15]~input_o\ & ((\SW[12]~input_o\) # (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X98_Y12_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\SW[13]~input_o\ & (!\SW[15]~input_o\ & ((\SW[12]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & (!\SW[15]~input_o\)) # (!\SW[14]~input_o\ & ((\SW[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[14]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X105_Y12_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\SW[13]~input_o\ & ((\SW[12]~input_o\ & ((\SW[14]~input_o\))) # (!\SW[12]~input_o\ & (\SW[15]~input_o\ & !\SW[14]~input_o\)))) # (!\SW[13]~input_o\ & (!\SW[15]~input_o\ & (\SW[12]~input_o\ $ (\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X105_Y12_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & ((\SW[13]~input_o\) # (!\SW[12]~input_o\)))) # (!\SW[15]~input_o\ & (!\SW[12]~input_o\ & (\SW[13]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X101_Y8_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SW[13]~input_o\ & ((\SW[12]~input_o\ & (\SW[15]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[14]~input_o\))))) # (!\SW[13]~input_o\ & (\SW[14]~input_o\ & (\SW[15]~input_o\ $ (\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X101_Y8_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SW[15]~input_o\ & (\SW[12]~input_o\ & (\SW[13]~input_o\ $ (\SW[14]~input_o\)))) # (!\SW[15]~input_o\ & (!\SW[13]~input_o\ & (\SW[14]~input_o\ $ (\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \Mux0~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;
END structure;


