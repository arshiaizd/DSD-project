-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/26/2024 00:39:40"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PARKING IS
    PORT (
	clk : IN std_logic;
	car_entered : IN std_logic;
	is_uni_car_entered : IN std_logic;
	car_exited : IN std_logic;
	is_uni_car_exited : IN std_logic;
	uni_parked_car : BUFFER std_logic_vector(10 DOWNTO 0);
	parked_car : BUFFER std_logic_vector(10 DOWNTO 0);
	uni_vacated_space : BUFFER std_logic_vector(10 DOWNTO 0);
	vacated_space : BUFFER std_logic_vector(10 DOWNTO 0);
	uni_is_vacated_space : BUFFER std_logic;
	is_vacated_space : BUFFER std_logic;
	valid : BUFFER std_logic
	);
END PARKING;

-- Design Ports Information
-- uni_parked_car[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[4]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[9]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[6]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[10]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[4]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[8]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[9]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[6]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[8]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[9]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[10]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_is_vacated_space	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_vacated_space	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_exited	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_exited	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_entered	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_entered	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PARKING IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_car_entered : std_logic;
SIGNAL ww_is_uni_car_entered : std_logic;
SIGNAL ww_car_exited : std_logic;
SIGNAL ww_is_uni_car_exited : std_logic;
SIGNAL ww_uni_parked_car : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_parked_car : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_uni_vacated_space : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_vacated_space : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_uni_is_vacated_space : std_logic;
SIGNAL ww_is_vacated_space : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out5_DATAB_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out5_DATAC_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out5_DATAD_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out5_DATAOUT_bus\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult2_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult4_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult4_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out5~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT35\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT36\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT65\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT66\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT67\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT68\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT69\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT70\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT71\ : std_logic;
SIGNAL \uni_parked_car[0]~output_o\ : std_logic;
SIGNAL \uni_parked_car[1]~output_o\ : std_logic;
SIGNAL \uni_parked_car[2]~output_o\ : std_logic;
SIGNAL \uni_parked_car[3]~output_o\ : std_logic;
SIGNAL \uni_parked_car[4]~output_o\ : std_logic;
SIGNAL \uni_parked_car[5]~output_o\ : std_logic;
SIGNAL \uni_parked_car[6]~output_o\ : std_logic;
SIGNAL \uni_parked_car[7]~output_o\ : std_logic;
SIGNAL \uni_parked_car[8]~output_o\ : std_logic;
SIGNAL \uni_parked_car[9]~output_o\ : std_logic;
SIGNAL \uni_parked_car[10]~output_o\ : std_logic;
SIGNAL \parked_car[0]~output_o\ : std_logic;
SIGNAL \parked_car[1]~output_o\ : std_logic;
SIGNAL \parked_car[2]~output_o\ : std_logic;
SIGNAL \parked_car[3]~output_o\ : std_logic;
SIGNAL \parked_car[4]~output_o\ : std_logic;
SIGNAL \parked_car[5]~output_o\ : std_logic;
SIGNAL \parked_car[6]~output_o\ : std_logic;
SIGNAL \parked_car[7]~output_o\ : std_logic;
SIGNAL \parked_car[8]~output_o\ : std_logic;
SIGNAL \parked_car[9]~output_o\ : std_logic;
SIGNAL \parked_car[10]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[0]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[1]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[2]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[3]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[4]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[5]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[6]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[7]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[8]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[9]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[10]~output_o\ : std_logic;
SIGNAL \vacated_space[0]~output_o\ : std_logic;
SIGNAL \vacated_space[1]~output_o\ : std_logic;
SIGNAL \vacated_space[2]~output_o\ : std_logic;
SIGNAL \vacated_space[3]~output_o\ : std_logic;
SIGNAL \vacated_space[4]~output_o\ : std_logic;
SIGNAL \vacated_space[5]~output_o\ : std_logic;
SIGNAL \vacated_space[6]~output_o\ : std_logic;
SIGNAL \vacated_space[7]~output_o\ : std_logic;
SIGNAL \vacated_space[8]~output_o\ : std_logic;
SIGNAL \vacated_space[9]~output_o\ : std_logic;
SIGNAL \vacated_space[10]~output_o\ : std_logic;
SIGNAL \uni_is_vacated_space~output_o\ : std_logic;
SIGNAL \is_vacated_space~output_o\ : std_logic;
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \car_exited~input_o\ : std_logic;
SIGNAL \car_exited~inputclkctrl_outclk\ : std_logic;
SIGNAL \is_uni_car_exited~input_o\ : std_logic;
SIGNAL \car_entered~input_o\ : std_logic;
SIGNAL \car_entered~inputclkctrl_outclk\ : std_logic;
SIGNAL \is_uni_car_entered~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~65_sumout\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~69_sumout\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~73_sumout\ : std_logic;
SIGNAL \Add4~74\ : std_logic;
SIGNAL \Add4~77_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add4~78\ : std_logic;
SIGNAL \Add4~81_sumout\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~85_sumout\ : std_logic;
SIGNAL \Add4~86\ : std_logic;
SIGNAL \Add4~89_sumout\ : std_logic;
SIGNAL \Add4~90\ : std_logic;
SIGNAL \Add4~93_sumout\ : std_logic;
SIGNAL \Add4~94\ : std_logic;
SIGNAL \Add4~97_sumout\ : std_logic;
SIGNAL \Add4~98\ : std_logic;
SIGNAL \Add4~101_sumout\ : std_logic;
SIGNAL \Add4~102\ : std_logic;
SIGNAL \Add4~105_sumout\ : std_logic;
SIGNAL \Add4~106\ : std_logic;
SIGNAL \Add4~109_sumout\ : std_logic;
SIGNAL \Add4~110\ : std_logic;
SIGNAL \Add4~113_sumout\ : std_logic;
SIGNAL \Add4~114\ : std_logic;
SIGNAL \Add4~117_sumout\ : std_logic;
SIGNAL \Add4~118\ : std_logic;
SIGNAL \Add4~121_sumout\ : std_logic;
SIGNAL \Add4~122\ : std_logic;
SIGNAL \Add4~125_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \hour[0]~0_combout\ : std_logic;
SIGNAL \hour[0]~feeder_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \hour[1]~2_combout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \hour[0]~1_combout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~65_sumout\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~69_sumout\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~73_sumout\ : std_logic;
SIGNAL \Add5~74\ : std_logic;
SIGNAL \Add5~77_sumout\ : std_logic;
SIGNAL \Add5~78\ : std_logic;
SIGNAL \Add5~81_sumout\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~85_sumout\ : std_logic;
SIGNAL \Add5~86\ : std_logic;
SIGNAL \Add5~89_sumout\ : std_logic;
SIGNAL \Add5~90\ : std_logic;
SIGNAL \Add5~93_sumout\ : std_logic;
SIGNAL \Add5~94\ : std_logic;
SIGNAL \Add5~97_sumout\ : std_logic;
SIGNAL \Add5~98\ : std_logic;
SIGNAL \Add5~101_sumout\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~105_sumout\ : std_logic;
SIGNAL \Add5~106\ : std_logic;
SIGNAL \Add5~109_sumout\ : std_logic;
SIGNAL \Add5~110\ : std_logic;
SIGNAL \Add5~113_sumout\ : std_logic;
SIGNAL \Add5~114\ : std_logic;
SIGNAL \Add5~117_sumout\ : std_logic;
SIGNAL \Add5~118\ : std_logic;
SIGNAL \Add5~121_sumout\ : std_logic;
SIGNAL \Add5~122\ : std_logic;
SIGNAL \Add5~125_sumout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \capacity~11_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~46\ : std_logic;
SIGNAL \Add6~49_sumout\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \Add6~53_sumout\ : std_logic;
SIGNAL \Add6~54\ : std_logic;
SIGNAL \Add6~57_sumout\ : std_logic;
SIGNAL \Add6~58\ : std_logic;
SIGNAL \Add6~61_sumout\ : std_logic;
SIGNAL \Add6~62\ : std_logic;
SIGNAL \Add6~65_sumout\ : std_logic;
SIGNAL \Add6~66\ : std_logic;
SIGNAL \Add6~69_sumout\ : std_logic;
SIGNAL \Add6~70\ : std_logic;
SIGNAL \Add6~73_sumout\ : std_logic;
SIGNAL \Add6~74\ : std_logic;
SIGNAL \Add6~77_sumout\ : std_logic;
SIGNAL \Add6~78\ : std_logic;
SIGNAL \Add6~81_sumout\ : std_logic;
SIGNAL \Add6~82\ : std_logic;
SIGNAL \Add6~85_sumout\ : std_logic;
SIGNAL \Add6~86\ : std_logic;
SIGNAL \Add6~89_sumout\ : std_logic;
SIGNAL \Add6~90\ : std_logic;
SIGNAL \Add6~93_sumout\ : std_logic;
SIGNAL \Add6~94\ : std_logic;
SIGNAL \Add6~97_sumout\ : std_logic;
SIGNAL \Add6~98\ : std_logic;
SIGNAL \Add6~101_sumout\ : std_logic;
SIGNAL \Add6~102\ : std_logic;
SIGNAL \Add6~105_sumout\ : std_logic;
SIGNAL \Add6~106\ : std_logic;
SIGNAL \Add6~109_sumout\ : std_logic;
SIGNAL \Add6~110\ : std_logic;
SIGNAL \Add6~113_sumout\ : std_logic;
SIGNAL \Add6~114\ : std_logic;
SIGNAL \Add6~117_sumout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult2~DATAOUT35\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \Add6~45_sumout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult4~DATAOUT35\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT35\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT63\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT62\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT61\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT60\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT59\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT58\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT57\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT56\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT55\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT54\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT53\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT52\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT51\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT50\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT49\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT48\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT47\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT46\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT45\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT44\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT43\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT42\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT41\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT40\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT39\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT38\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT37\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~46\ : std_logic;
SIGNAL \Add7~50\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~58\ : std_logic;
SIGNAL \Add7~62\ : std_logic;
SIGNAL \Add7~66\ : std_logic;
SIGNAL \Add7~70\ : std_logic;
SIGNAL \Add7~74\ : std_logic;
SIGNAL \Add7~78\ : std_logic;
SIGNAL \Add7~82\ : std_logic;
SIGNAL \Add7~86\ : std_logic;
SIGNAL \Add7~90\ : std_logic;
SIGNAL \Add7~94\ : std_logic;
SIGNAL \Add7~98\ : std_logic;
SIGNAL \Add7~102\ : std_logic;
SIGNAL \Add7~106\ : std_logic;
SIGNAL \Add7~109_sumout\ : std_logic;
SIGNAL \capacity~31_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \Add7~105_sumout\ : std_logic;
SIGNAL \capacity~12_combout\ : std_logic;
SIGNAL \Add7~101_sumout\ : std_logic;
SIGNAL \capacity~13_combout\ : std_logic;
SIGNAL \Add7~97_sumout\ : std_logic;
SIGNAL \capacity~14_combout\ : std_logic;
SIGNAL \Add7~93_sumout\ : std_logic;
SIGNAL \capacity~15_combout\ : std_logic;
SIGNAL \Add7~89_sumout\ : std_logic;
SIGNAL \capacity~16_combout\ : std_logic;
SIGNAL \Add7~85_sumout\ : std_logic;
SIGNAL \capacity~17_combout\ : std_logic;
SIGNAL \Add7~81_sumout\ : std_logic;
SIGNAL \capacity~18_combout\ : std_logic;
SIGNAL \Add7~77_sumout\ : std_logic;
SIGNAL \capacity~19_combout\ : std_logic;
SIGNAL \Add7~73_sumout\ : std_logic;
SIGNAL \capacity~20_combout\ : std_logic;
SIGNAL \Add7~69_sumout\ : std_logic;
SIGNAL \capacity~21_combout\ : std_logic;
SIGNAL \Add7~65_sumout\ : std_logic;
SIGNAL \capacity~22_combout\ : std_logic;
SIGNAL \Add7~61_sumout\ : std_logic;
SIGNAL \capacity~23_combout\ : std_logic;
SIGNAL \Add7~57_sumout\ : std_logic;
SIGNAL \capacity~24_combout\ : std_logic;
SIGNAL \Add7~53_sumout\ : std_logic;
SIGNAL \capacity~25DUPLICATE_combout\ : std_logic;
SIGNAL \capacity[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add7~49_sumout\ : std_logic;
SIGNAL \capacity~26_combout\ : std_logic;
SIGNAL \Add7~45_sumout\ : std_logic;
SIGNAL \capacity~27_combout\ : std_logic;
SIGNAL \Add7~41_sumout\ : std_logic;
SIGNAL \capacity~28_combout\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \capacity~29_combout\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \capacity~30_combout\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \capacity~10_combout\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \capacity~9_combout\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \capacity~8_combout\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~19\ : std_logic;
SIGNAL \Add12~23\ : std_logic;
SIGNAL \Add12~25_sumout\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \capacity~6_combout\ : std_logic;
SIGNAL \Add12~21_sumout\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \capacity~5_combout\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \capacity~4_combout\ : std_logic;
SIGNAL \Add12~17_sumout\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \capacity~2_combout\ : std_logic;
SIGNAL \capacity~3_combout\ : std_logic;
SIGNAL \Add12~13_sumout\ : std_logic;
SIGNAL \Add12~9_sumout\ : std_logic;
SIGNAL \capacity~1_combout\ : std_logic;
SIGNAL \capacity~0_combout\ : std_logic;
SIGNAL \Add12~5_sumout\ : std_logic;
SIGNAL \Add3~2_cout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \capacity~7_combout\ : std_logic;
SIGNAL \Add12~27\ : std_logic;
SIGNAL \Add12~29_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out5~DATAOUT64\ : std_logic;
SIGNAL \Add7~110\ : std_logic;
SIGNAL \Add7~113_sumout\ : std_logic;
SIGNAL \capacity~32_combout\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \Add12~2\ : std_logic;
SIGNAL \Add12~6\ : std_logic;
SIGNAL \Add12~10\ : std_logic;
SIGNAL \Add12~14\ : std_logic;
SIGNAL \Add12~18\ : std_logic;
SIGNAL \Add12~22\ : std_logic;
SIGNAL \Add12~26\ : std_logic;
SIGNAL \Add12~30\ : std_logic;
SIGNAL \Add12~31\ : std_logic;
SIGNAL \Add12~33_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \Add12~34\ : std_logic;
SIGNAL \Add12~35\ : std_logic;
SIGNAL \Add12~37_sumout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \Add10~30\ : std_logic;
SIGNAL \Add10~33_sumout\ : std_logic;
SIGNAL \Add10~34\ : std_logic;
SIGNAL \Add10~37_sumout\ : std_logic;
SIGNAL \Add10~38\ : std_logic;
SIGNAL \Add10~41_sumout\ : std_logic;
SIGNAL \Add8~38\ : std_logic;
SIGNAL \Add8~41_sumout\ : std_logic;
SIGNAL \Add12~38\ : std_logic;
SIGNAL \Add12~39\ : std_logic;
SIGNAL \Add12~41_sumout\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \Add12~1_sumout\ : std_logic;
SIGNAL \LessThan1~22_combout\ : std_logic;
SIGNAL \LessThan1~17_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \capacity~25_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Add13~2\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~5_sumout\ : std_logic;
SIGNAL \Add13~6\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9_sumout\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~13_sumout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \Add13~14\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Add13~17_sumout\ : std_logic;
SIGNAL \Add13~18\ : std_logic;
SIGNAL \Add13~19\ : std_logic;
SIGNAL \Add13~21_sumout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \Add13~22\ : std_logic;
SIGNAL \Add13~23\ : std_logic;
SIGNAL \Add13~26\ : std_logic;
SIGNAL \Add13~27\ : std_logic;
SIGNAL \Add13~29_sumout\ : std_logic;
SIGNAL \Add13~25_sumout\ : std_logic;
SIGNAL \Add13~30\ : std_logic;
SIGNAL \Add13~31\ : std_logic;
SIGNAL \Add13~33_sumout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~20_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~21_combout\ : std_logic;
SIGNAL \LessThan1~15_combout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \LessThan1~19_combout\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \Add9~30\ : std_logic;
SIGNAL \Add9~33_sumout\ : std_logic;
SIGNAL \Add9~34\ : std_logic;
SIGNAL \Add9~37_sumout\ : std_logic;
SIGNAL \Add13~34\ : std_logic;
SIGNAL \Add13~35\ : std_logic;
SIGNAL \Add13~37_sumout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~33_sumout\ : std_logic;
SIGNAL \Add11~34\ : std_logic;
SIGNAL \Add11~37_sumout\ : std_logic;
SIGNAL \Add11~38\ : std_logic;
SIGNAL \Add11~41_sumout\ : std_logic;
SIGNAL \Add9~38\ : std_logic;
SIGNAL \Add9~41_sumout\ : std_logic;
SIGNAL \Add13~38\ : std_logic;
SIGNAL \Add13~39\ : std_logic;
SIGNAL \Add13~41_sumout\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \Add13~1_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \valid~0_combout\ : std_logic;
SIGNAL number_of_exited_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL number_of_exited_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL number_of_entered_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL number_of_entered_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL minute : std_logic_vector(31 DOWNTO 0);
SIGNAL hour : std_logic_vector(31 DOWNTO 0);
SIGNAL capacity : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add13~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \ALT_INV_capacity[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_is_uni_car_entered~input_o\ : std_logic;
SIGNAL \ALT_INV_is_uni_car_exited~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan1~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~20_combout\ : std_logic;
SIGNAL \ALT_INV_hour[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_capacity~11_combout\ : std_logic;
SIGNAL \ALT_INV_capacity~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL ALT_INV_hour : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \ALT_INV_valid~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_capacity : std_logic_vector(31 DOWNTO 1);
SIGNAL ALT_INV_number_of_entered_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_number_of_exited_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_number_of_entered_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_number_of_exited_uni_cars : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL ALT_INV_minute : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add7~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT64\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT63\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT62\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT61\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT60\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT59\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT58\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT57\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT56\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT55\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT54\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT53\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT52\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT51\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT50\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT49\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT48\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT47\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT46\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT45\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT44\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT43\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT42\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT41\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT40\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT39\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT38\ : std_logic;
SIGNAL \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT37\ : std_logic;
SIGNAL \ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_car_entered <= car_entered;
ww_is_uni_car_entered <= is_uni_car_entered;
ww_car_exited <= car_exited;
ww_is_uni_car_exited <= is_uni_car_exited;
uni_parked_car <= ww_uni_parked_car;
parked_car <= ww_parked_car;
uni_vacated_space <= ww_uni_vacated_space;
vacated_space <= ww_vacated_space;
uni_is_vacated_space <= ww_uni_is_vacated_space;
is_vacated_space <= ww_is_vacated_space;
valid <= ww_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out5_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult2~DATAOUT35\ & \Mult0|auto_generated|mac_mult2~DATAOUT34\ & \Mult0|auto_generated|mac_mult2~DATAOUT33\ & \Mult0|auto_generated|mac_mult2~DATAOUT32\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT31\ & \Mult0|auto_generated|mac_mult2~DATAOUT30\ & \Mult0|auto_generated|mac_mult2~DATAOUT29\ & \Mult0|auto_generated|mac_mult2~DATAOUT28\ & \Mult0|auto_generated|mac_mult2~DATAOUT27\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT26\ & \Mult0|auto_generated|mac_mult2~DATAOUT25\ & \Mult0|auto_generated|mac_mult2~DATAOUT24\ & \Mult0|auto_generated|mac_mult2~DATAOUT23\ & \Mult0|auto_generated|mac_mult2~DATAOUT22\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT21\ & \Mult0|auto_generated|mac_mult2~DATAOUT20\ & \Mult0|auto_generated|mac_mult2~DATAOUT19\ & \Mult0|auto_generated|mac_mult2~DATAOUT18\ & \Mult0|auto_generated|mac_mult2~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT16\ & \Mult0|auto_generated|mac_mult2~DATAOUT15\ & \Mult0|auto_generated|mac_mult2~DATAOUT14\ & \Mult0|auto_generated|mac_mult2~DATAOUT13\ & \Mult0|auto_generated|mac_mult2~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT11\ & \Mult0|auto_generated|mac_mult2~DATAOUT10\ & \Mult0|auto_generated|mac_mult2~DATAOUT9\ & \Mult0|auto_generated|mac_mult2~DATAOUT8\ & \Mult0|auto_generated|mac_mult2~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT6\ & \Mult0|auto_generated|mac_mult2~DATAOUT5\ & \Mult0|auto_generated|mac_mult2~DATAOUT4\ & \Mult0|auto_generated|mac_mult2~DATAOUT3\ & \Mult0|auto_generated|mac_mult2~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult2~DATAOUT1\ & \Mult0|auto_generated|mac_mult2~dataout\);

\Mult0|auto_generated|mac_out5_DATAB_bus\ <= (\Mult0|auto_generated|mac_mult4~DATAOUT35\ & \Mult0|auto_generated|mac_mult4~DATAOUT34\ & \Mult0|auto_generated|mac_mult4~DATAOUT33\ & \Mult0|auto_generated|mac_mult4~DATAOUT32\ & 
\Mult0|auto_generated|mac_mult4~DATAOUT31\ & \Mult0|auto_generated|mac_mult4~DATAOUT30\ & \Mult0|auto_generated|mac_mult4~DATAOUT29\ & \Mult0|auto_generated|mac_mult4~DATAOUT28\ & \Mult0|auto_generated|mac_mult4~DATAOUT27\ & 
\Mult0|auto_generated|mac_mult4~DATAOUT26\ & \Mult0|auto_generated|mac_mult4~DATAOUT25\ & \Mult0|auto_generated|mac_mult4~DATAOUT24\ & \Mult0|auto_generated|mac_mult4~DATAOUT23\ & \Mult0|auto_generated|mac_mult4~DATAOUT22\ & 
\Mult0|auto_generated|mac_mult4~DATAOUT21\ & \Mult0|auto_generated|mac_mult4~DATAOUT20\ & \Mult0|auto_generated|mac_mult4~DATAOUT19\ & \Mult0|auto_generated|mac_mult4~DATAOUT18\ & \Mult0|auto_generated|mac_mult4~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult4~DATAOUT16\ & \Mult0|auto_generated|mac_mult4~DATAOUT15\ & \Mult0|auto_generated|mac_mult4~DATAOUT14\ & \Mult0|auto_generated|mac_mult4~DATAOUT13\ & \Mult0|auto_generated|mac_mult4~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult4~DATAOUT11\ & \Mult0|auto_generated|mac_mult4~DATAOUT10\ & \Mult0|auto_generated|mac_mult4~DATAOUT9\ & \Mult0|auto_generated|mac_mult4~DATAOUT8\ & \Mult0|auto_generated|mac_mult4~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult4~DATAOUT6\ & \Mult0|auto_generated|mac_mult4~DATAOUT5\ & \Mult0|auto_generated|mac_mult4~DATAOUT4\ & \Mult0|auto_generated|mac_mult4~DATAOUT3\ & \Mult0|auto_generated|mac_mult4~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult4~DATAOUT1\ & \Mult0|auto_generated|mac_mult4~dataout\);

\Mult0|auto_generated|mac_out5_DATAC_bus\ <= (\Mult0|auto_generated|mac_mult3~DATAOUT35\ & \Mult0|auto_generated|mac_mult3~DATAOUT34\ & \Mult0|auto_generated|mac_mult3~DATAOUT33\ & \Mult0|auto_generated|mac_mult3~DATAOUT32\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT31\ & \Mult0|auto_generated|mac_mult3~DATAOUT30\ & \Mult0|auto_generated|mac_mult3~DATAOUT29\ & \Mult0|auto_generated|mac_mult3~DATAOUT28\ & \Mult0|auto_generated|mac_mult3~DATAOUT27\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT26\ & \Mult0|auto_generated|mac_mult3~DATAOUT25\ & \Mult0|auto_generated|mac_mult3~DATAOUT24\ & \Mult0|auto_generated|mac_mult3~DATAOUT23\ & \Mult0|auto_generated|mac_mult3~DATAOUT22\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT21\ & \Mult0|auto_generated|mac_mult3~DATAOUT20\ & \Mult0|auto_generated|mac_mult3~DATAOUT19\ & \Mult0|auto_generated|mac_mult3~DATAOUT18\ & \Mult0|auto_generated|mac_mult3~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT16\ & \Mult0|auto_generated|mac_mult3~DATAOUT15\ & \Mult0|auto_generated|mac_mult3~DATAOUT14\ & \Mult0|auto_generated|mac_mult3~DATAOUT13\ & \Mult0|auto_generated|mac_mult3~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT11\ & \Mult0|auto_generated|mac_mult3~DATAOUT10\ & \Mult0|auto_generated|mac_mult3~DATAOUT9\ & \Mult0|auto_generated|mac_mult3~DATAOUT8\ & \Mult0|auto_generated|mac_mult3~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT6\ & \Mult0|auto_generated|mac_mult3~DATAOUT5\ & \Mult0|auto_generated|mac_mult3~DATAOUT4\ & \Mult0|auto_generated|mac_mult3~DATAOUT3\ & \Mult0|auto_generated|mac_mult3~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT1\ & \Mult0|auto_generated|mac_mult3~dataout\);

\Mult0|auto_generated|mac_out5_DATAD_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT35\ & \Mult0|auto_generated|mac_mult1~DATAOUT34\ & \Mult0|auto_generated|mac_mult1~DATAOUT33\ & \Mult0|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\);

\Mult0|auto_generated|mac_out5~dataout\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out5~DATAOUT1\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out5~DATAOUT2\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out5~DATAOUT3\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out5~DATAOUT4\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out5~DATAOUT5\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out5~DATAOUT6\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out5~DATAOUT7\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out5~DATAOUT8\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out5~DATAOUT9\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out5~DATAOUT10\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out5~DATAOUT11\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out5~DATAOUT12\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out5~DATAOUT13\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out5~DATAOUT14\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out5~DATAOUT15\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out5~DATAOUT16\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out5~DATAOUT17\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out5~DATAOUT18\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out5~DATAOUT19\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out5~DATAOUT20\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out5~DATAOUT21\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out5~DATAOUT22\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out5~DATAOUT23\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out5~DATAOUT24\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out5~DATAOUT25\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out5~DATAOUT26\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out5~DATAOUT27\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out5~DATAOUT28\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out5~DATAOUT29\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out5~DATAOUT30\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out5~DATAOUT31\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out5~DATAOUT32\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out5~DATAOUT33\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out5~DATAOUT34\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out5~DATAOUT35\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(35);
\Mult0|auto_generated|mac_out5~DATAOUT36\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(36);
\Mult0|auto_generated|mac_out5~DATAOUT37\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(37);
\Mult0|auto_generated|mac_out5~DATAOUT38\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(38);
\Mult0|auto_generated|mac_out5~DATAOUT39\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(39);
\Mult0|auto_generated|mac_out5~DATAOUT40\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(40);
\Mult0|auto_generated|mac_out5~DATAOUT41\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(41);
\Mult0|auto_generated|mac_out5~DATAOUT42\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(42);
\Mult0|auto_generated|mac_out5~DATAOUT43\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(43);
\Mult0|auto_generated|mac_out5~DATAOUT44\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(44);
\Mult0|auto_generated|mac_out5~DATAOUT45\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(45);
\Mult0|auto_generated|mac_out5~DATAOUT46\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(46);
\Mult0|auto_generated|mac_out5~DATAOUT47\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(47);
\Mult0|auto_generated|mac_out5~DATAOUT48\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(48);
\Mult0|auto_generated|mac_out5~DATAOUT49\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(49);
\Mult0|auto_generated|mac_out5~DATAOUT50\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(50);
\Mult0|auto_generated|mac_out5~DATAOUT51\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(51);
\Mult0|auto_generated|mac_out5~DATAOUT52\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(52);
\Mult0|auto_generated|mac_out5~DATAOUT53\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(53);
\Mult0|auto_generated|mac_out5~DATAOUT54\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(54);
\Mult0|auto_generated|mac_out5~DATAOUT55\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(55);
\Mult0|auto_generated|mac_out5~DATAOUT56\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(56);
\Mult0|auto_generated|mac_out5~DATAOUT57\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(57);
\Mult0|auto_generated|mac_out5~DATAOUT58\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(58);
\Mult0|auto_generated|mac_out5~DATAOUT59\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(59);
\Mult0|auto_generated|mac_out5~DATAOUT60\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(60);
\Mult0|auto_generated|mac_out5~DATAOUT61\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(61);
\Mult0|auto_generated|mac_out5~DATAOUT62\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(62);
\Mult0|auto_generated|mac_out5~DATAOUT63\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(63);
\Mult0|auto_generated|mac_out5~DATAOUT64\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(64);
\Mult0|auto_generated|mac_out5~DATAOUT65\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(65);
\Mult0|auto_generated|mac_out5~DATAOUT66\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(66);
\Mult0|auto_generated|mac_out5~DATAOUT67\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(67);
\Mult0|auto_generated|mac_out5~DATAOUT68\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(68);
\Mult0|auto_generated|mac_out5~DATAOUT69\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(69);
\Mult0|auto_generated|mac_out5~DATAOUT70\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(70);
\Mult0|auto_generated|mac_out5~DATAOUT71\ <= \Mult0|auto_generated|mac_out5_DATAOUT_bus\(71);

\Mult0|auto_generated|mac_mult2_DATAA_bus\ <= (\Add6~117_sumout\ & \Add6~113_sumout\ & \Add6~109_sumout\ & \Add6~105_sumout\ & \Add6~101_sumout\ & \Add6~97_sumout\ & \Add6~93_sumout\ & \Add6~89_sumout\ & \Add6~85_sumout\ & \Add6~81_sumout\ & 
\Add6~77_sumout\ & \Add6~73_sumout\ & \Add6~69_sumout\ & \Add6~65_sumout\ & \Add6~61_sumout\ & \Add6~57_sumout\ & \Add6~53_sumout\ & \Add6~49_sumout\);

\Mult0|auto_generated|mac_mult2_DATAB_bus\ <= (gnd & vcc & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult2~dataout\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult2~DATAOUT1\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult2~DATAOUT2\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult2~DATAOUT3\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult2~DATAOUT4\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult2~DATAOUT5\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult2~DATAOUT6\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult2~DATAOUT7\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult2~DATAOUT8\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult2~DATAOUT9\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult2~DATAOUT10\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult2~DATAOUT11\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult2~DATAOUT12\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult2~DATAOUT13\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult2~DATAOUT14\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult2~DATAOUT15\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult2~DATAOUT16\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult2~DATAOUT17\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult2~DATAOUT18\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult2~DATAOUT19\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult2~DATAOUT20\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult2~DATAOUT21\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult2~DATAOUT22\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult2~DATAOUT23\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult2~DATAOUT24\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult2~DATAOUT25\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult2~DATAOUT26\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult2~DATAOUT27\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult2~DATAOUT28\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult2~DATAOUT29\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult2~DATAOUT30\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult2~DATAOUT31\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult2~DATAOUT32\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult2~DATAOUT33\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult2~DATAOUT34\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult2~DATAOUT35\ <= \Mult0|auto_generated|mac_mult2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult4_DATAA_bus\ <= (\Add6~45_sumout\ & \Add6~41_sumout\ & \Add6~37_sumout\ & \Add6~33_sumout\ & \Add6~29_sumout\ & \Add6~25_sumout\ & \Add6~21_sumout\ & \Add6~17_sumout\ & \Add6~13_sumout\ & \Add6~9_sumout\ & \Add6~5_sumout\ & 
\Add6~1_sumout\ & hour(1) & hour(0) & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult4_DATAB_bus\ <= (gnd & vcc & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult4~dataout\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult4~DATAOUT1\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult4~DATAOUT2\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult4~DATAOUT3\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult4~DATAOUT4\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult4~DATAOUT5\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult4~DATAOUT6\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult4~DATAOUT7\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult4~DATAOUT8\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult4~DATAOUT9\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult4~DATAOUT10\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult4~DATAOUT11\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult4~DATAOUT12\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult4~DATAOUT13\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult4~DATAOUT14\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult4~DATAOUT15\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult4~DATAOUT16\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult4~DATAOUT17\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult4~DATAOUT18\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult4~DATAOUT19\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult4~DATAOUT20\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult4~DATAOUT21\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult4~DATAOUT22\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult4~DATAOUT23\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult4~DATAOUT24\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult4~DATAOUT25\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult4~DATAOUT26\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult4~DATAOUT27\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult4~DATAOUT28\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult4~DATAOUT29\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult4~DATAOUT30\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult4~DATAOUT31\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult4~DATAOUT32\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult4~DATAOUT33\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult4~DATAOUT34\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult4~DATAOUT35\ <= \Mult0|auto_generated|mac_mult4_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3~dataout\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult3~DATAOUT25\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult3~DATAOUT26\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult3~DATAOUT27\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult3~DATAOUT28\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult3~DATAOUT29\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult3~DATAOUT30\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult3~DATAOUT31\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult3~DATAOUT32\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult3~DATAOUT33\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult3~DATAOUT34\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult3~DATAOUT35\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);
\ALT_INV_Add13~5_sumout\ <= NOT \Add13~5_sumout\;
\ALT_INV_Add13~1_sumout\ <= NOT \Add13~1_sumout\;
\ALT_INV_Add12~41_sumout\ <= NOT \Add12~41_sumout\;
\ALT_INV_Add12~37_sumout\ <= NOT \Add12~37_sumout\;
\ALT_INV_Add12~33_sumout\ <= NOT \Add12~33_sumout\;
\ALT_INV_Add12~29_sumout\ <= NOT \Add12~29_sumout\;
\ALT_INV_Add12~25_sumout\ <= NOT \Add12~25_sumout\;
\ALT_INV_Add12~21_sumout\ <= NOT \Add12~21_sumout\;
\ALT_INV_Add12~17_sumout\ <= NOT \Add12~17_sumout\;
\ALT_INV_Add12~13_sumout\ <= NOT \Add12~13_sumout\;
\ALT_INV_Add12~9_sumout\ <= NOT \Add12~9_sumout\;
\ALT_INV_Add12~5_sumout\ <= NOT \Add12~5_sumout\;
\ALT_INV_Add12~1_sumout\ <= NOT \Add12~1_sumout\;
\ALT_INV_capacity[16]~DUPLICATE_q\ <= NOT \capacity[16]~DUPLICATE_q\;
\ALT_INV_is_uni_car_entered~input_o\ <= NOT \is_uni_car_entered~input_o\;
\ALT_INV_is_uni_car_exited~input_o\ <= NOT \is_uni_car_exited~input_o\;
\ALT_INV_LessThan1~22_combout\ <= NOT \LessThan1~22_combout\;
\ALT_INV_LessThan1~21_combout\ <= NOT \LessThan1~21_combout\;
\ALT_INV_LessThan1~20_combout\ <= NOT \LessThan1~20_combout\;
\ALT_INV_hour[0]~0_combout\ <= NOT \hour[0]~0_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_capacity~11_combout\ <= NOT \capacity~11_combout\;
\ALT_INV_capacity~2_combout\ <= NOT \capacity~2_combout\;
\ALT_INV_LessThan6~2_combout\ <= NOT \LessThan6~2_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_LessThan6~1_combout\ <= NOT \LessThan6~1_combout\;
ALT_INV_hour(1) <= NOT hour(1);
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_hour(0) <= NOT hour(0);
\ALT_INV_LessThan1~19_combout\ <= NOT \LessThan1~19_combout\;
\ALT_INV_LessThan9~1_combout\ <= NOT \LessThan9~1_combout\;
\ALT_INV_LessThan9~0_combout\ <= NOT \LessThan9~0_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan8~1_combout\ <= NOT \LessThan8~1_combout\;
\ALT_INV_LessThan8~0_combout\ <= NOT \LessThan8~0_combout\;
\ALT_INV_valid~0_combout\ <= NOT \valid~0_combout\;
\ALT_INV_LessThan1~17_combout\ <= NOT \LessThan1~17_combout\;
\ALT_INV_LessThan1~16_combout\ <= NOT \LessThan1~16_combout\;
\ALT_INV_LessThan1~15_combout\ <= NOT \LessThan1~15_combout\;
\ALT_INV_LessThan1~14_combout\ <= NOT \LessThan1~14_combout\;
\ALT_INV_LessThan1~13_combout\ <= NOT \LessThan1~13_combout\;
\ALT_INV_LessThan1~12_combout\ <= NOT \LessThan1~12_combout\;
\ALT_INV_LessThan1~11_combout\ <= NOT \LessThan1~11_combout\;
\ALT_INV_LessThan1~10_combout\ <= NOT \LessThan1~10_combout\;
\ALT_INV_LessThan1~9_combout\ <= NOT \LessThan1~9_combout\;
\ALT_INV_LessThan1~8_combout\ <= NOT \LessThan1~8_combout\;
\ALT_INV_LessThan1~7_combout\ <= NOT \LessThan1~7_combout\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_capacity(7) <= NOT capacity(7);
ALT_INV_capacity(6) <= NOT capacity(6);
ALT_INV_capacity(3) <= NOT capacity(3);
ALT_INV_number_of_entered_cars(10) <= NOT number_of_entered_cars(10);
ALT_INV_number_of_exited_cars(10) <= NOT number_of_exited_cars(10);
ALT_INV_number_of_entered_cars(9) <= NOT number_of_entered_cars(9);
ALT_INV_number_of_exited_cars(9) <= NOT number_of_exited_cars(9);
ALT_INV_number_of_entered_cars(8) <= NOT number_of_entered_cars(8);
ALT_INV_number_of_exited_cars(8) <= NOT number_of_exited_cars(8);
ALT_INV_number_of_entered_cars(7) <= NOT number_of_entered_cars(7);
ALT_INV_number_of_exited_cars(7) <= NOT number_of_exited_cars(7);
ALT_INV_number_of_entered_cars(6) <= NOT number_of_entered_cars(6);
ALT_INV_number_of_exited_cars(6) <= NOT number_of_exited_cars(6);
ALT_INV_number_of_entered_cars(5) <= NOT number_of_entered_cars(5);
ALT_INV_number_of_exited_cars(5) <= NOT number_of_exited_cars(5);
ALT_INV_number_of_entered_cars(4) <= NOT number_of_entered_cars(4);
ALT_INV_number_of_exited_cars(4) <= NOT number_of_exited_cars(4);
ALT_INV_number_of_entered_cars(3) <= NOT number_of_entered_cars(3);
ALT_INV_number_of_exited_cars(3) <= NOT number_of_exited_cars(3);
ALT_INV_number_of_entered_cars(2) <= NOT number_of_entered_cars(2);
ALT_INV_number_of_exited_cars(2) <= NOT number_of_exited_cars(2);
ALT_INV_number_of_entered_cars(1) <= NOT number_of_entered_cars(1);
ALT_INV_number_of_exited_cars(1) <= NOT number_of_exited_cars(1);
ALT_INV_number_of_entered_cars(0) <= NOT number_of_entered_cars(0);
ALT_INV_number_of_exited_cars(0) <= NOT number_of_exited_cars(0);
ALT_INV_number_of_entered_uni_cars(10) <= NOT number_of_entered_uni_cars(10);
ALT_INV_number_of_exited_uni_cars(10) <= NOT number_of_exited_uni_cars(10);
ALT_INV_number_of_entered_uni_cars(9) <= NOT number_of_entered_uni_cars(9);
ALT_INV_number_of_exited_uni_cars(9) <= NOT number_of_exited_uni_cars(9);
ALT_INV_number_of_entered_uni_cars(8) <= NOT number_of_entered_uni_cars(8);
ALT_INV_number_of_exited_uni_cars(8) <= NOT number_of_exited_uni_cars(8);
ALT_INV_number_of_entered_uni_cars(7) <= NOT number_of_entered_uni_cars(7);
ALT_INV_number_of_exited_uni_cars(7) <= NOT number_of_exited_uni_cars(7);
ALT_INV_number_of_entered_uni_cars(6) <= NOT number_of_entered_uni_cars(6);
ALT_INV_number_of_exited_uni_cars(6) <= NOT number_of_exited_uni_cars(6);
ALT_INV_number_of_entered_uni_cars(5) <= NOT number_of_entered_uni_cars(5);
ALT_INV_number_of_exited_uni_cars(5) <= NOT number_of_exited_uni_cars(5);
ALT_INV_number_of_entered_uni_cars(4) <= NOT number_of_entered_uni_cars(4);
ALT_INV_number_of_exited_uni_cars(4) <= NOT number_of_exited_uni_cars(4);
ALT_INV_number_of_entered_uni_cars(3) <= NOT number_of_entered_uni_cars(3);
ALT_INV_number_of_exited_uni_cars(3) <= NOT number_of_exited_uni_cars(3);
ALT_INV_number_of_entered_uni_cars(2) <= NOT number_of_entered_uni_cars(2);
ALT_INV_number_of_exited_uni_cars(2) <= NOT number_of_exited_uni_cars(2);
ALT_INV_number_of_entered_uni_cars(1) <= NOT number_of_entered_uni_cars(1);
ALT_INV_number_of_exited_uni_cars(1) <= NOT number_of_exited_uni_cars(1);
ALT_INV_number_of_entered_uni_cars(0) <= NOT number_of_entered_uni_cars(0);
ALT_INV_number_of_exited_uni_cars(0) <= NOT number_of_exited_uni_cars(0);
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
ALT_INV_minute(20) <= NOT minute(20);
ALT_INV_minute(21) <= NOT minute(21);
ALT_INV_minute(22) <= NOT minute(22);
ALT_INV_minute(23) <= NOT minute(23);
ALT_INV_minute(24) <= NOT minute(24);
ALT_INV_minute(25) <= NOT minute(25);
ALT_INV_minute(26) <= NOT minute(26);
ALT_INV_minute(27) <= NOT minute(27);
ALT_INV_minute(28) <= NOT minute(28);
ALT_INV_minute(29) <= NOT minute(29);
ALT_INV_minute(30) <= NOT minute(30);
ALT_INV_minute(31) <= NOT minute(31);
ALT_INV_minute(14) <= NOT minute(14);
ALT_INV_minute(15) <= NOT minute(15);
ALT_INV_minute(16) <= NOT minute(16);
ALT_INV_minute(17) <= NOT minute(17);
ALT_INV_minute(18) <= NOT minute(18);
ALT_INV_minute(19) <= NOT minute(19);
ALT_INV_minute(8) <= NOT minute(8);
ALT_INV_minute(9) <= NOT minute(9);
ALT_INV_minute(10) <= NOT minute(10);
ALT_INV_minute(11) <= NOT minute(11);
ALT_INV_minute(12) <= NOT minute(12);
ALT_INV_minute(13) <= NOT minute(13);
ALT_INV_minute(2) <= NOT minute(2);
ALT_INV_minute(3) <= NOT minute(3);
ALT_INV_minute(4) <= NOT minute(4);
ALT_INV_minute(5) <= NOT minute(5);
ALT_INV_minute(6) <= NOT minute(6);
ALT_INV_minute(7) <= NOT minute(7);
ALT_INV_minute(0) <= NOT minute(0);
ALT_INV_minute(1) <= NOT minute(1);
\ALT_INV_Add7~113_sumout\ <= NOT \Add7~113_sumout\;
\ALT_INV_Add7~109_sumout\ <= NOT \Add7~109_sumout\;
\ALT_INV_Add7~105_sumout\ <= NOT \Add7~105_sumout\;
\ALT_INV_Add7~101_sumout\ <= NOT \Add7~101_sumout\;
\ALT_INV_Add7~97_sumout\ <= NOT \Add7~97_sumout\;
\ALT_INV_Add7~93_sumout\ <= NOT \Add7~93_sumout\;
\ALT_INV_Add7~89_sumout\ <= NOT \Add7~89_sumout\;
\ALT_INV_Add7~85_sumout\ <= NOT \Add7~85_sumout\;
\ALT_INV_Add7~81_sumout\ <= NOT \Add7~81_sumout\;
\ALT_INV_Add7~77_sumout\ <= NOT \Add7~77_sumout\;
\ALT_INV_Add7~73_sumout\ <= NOT \Add7~73_sumout\;
\ALT_INV_Add7~69_sumout\ <= NOT \Add7~69_sumout\;
\ALT_INV_Add7~65_sumout\ <= NOT \Add7~65_sumout\;
\ALT_INV_Add7~61_sumout\ <= NOT \Add7~61_sumout\;
\ALT_INV_Add7~57_sumout\ <= NOT \Add7~57_sumout\;
\ALT_INV_Add7~53_sumout\ <= NOT \Add7~53_sumout\;
\ALT_INV_Add7~49_sumout\ <= NOT \Add7~49_sumout\;
\ALT_INV_Add7~45_sumout\ <= NOT \Add7~45_sumout\;
\ALT_INV_Add7~41_sumout\ <= NOT \Add7~41_sumout\;
\ALT_INV_Add7~37_sumout\ <= NOT \Add7~37_sumout\;
\ALT_INV_Add7~33_sumout\ <= NOT \Add7~33_sumout\;
\ALT_INV_Add7~29_sumout\ <= NOT \Add7~29_sumout\;
\ALT_INV_Add7~25_sumout\ <= NOT \Add7~25_sumout\;
\ALT_INV_Add7~21_sumout\ <= NOT \Add7~21_sumout\;
\ALT_INV_Add7~17_sumout\ <= NOT \Add7~17_sumout\;
\ALT_INV_Add7~13_sumout\ <= NOT \Add7~13_sumout\;
\ALT_INV_Add7~9_sumout\ <= NOT \Add7~9_sumout\;
\ALT_INV_Add7~5_sumout\ <= NOT \Add7~5_sumout\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT64\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT64\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT63\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT63\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT62\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT62\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT61\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT61\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT60\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT60\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT59\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT59\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT58\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT58\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT57\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT57\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT56\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT56\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT55\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT55\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT54\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT54\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT53\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT53\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT52\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT52\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT51\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT51\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT50\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT50\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT49\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT49\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT48\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT48\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT47\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT47\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT46\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT46\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT45\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT45\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT44\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT44\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT43\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT43\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT42\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT42\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT41\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT41\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT40\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT40\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT39\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT39\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT38\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT38\;
\Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT37\ <= NOT \Mult0|auto_generated|mac_out5~DATAOUT37\;
\ALT_INV_Add7~1_sumout\ <= NOT \Add7~1_sumout\;
ALT_INV_hour(30) <= NOT hour(30);
ALT_INV_hour(31) <= NOT hour(31);
ALT_INV_hour(28) <= NOT hour(28);
ALT_INV_hour(29) <= NOT hour(29);
ALT_INV_hour(2) <= NOT hour(2);
ALT_INV_hour(3) <= NOT hour(3);
ALT_INV_hour(16) <= NOT hour(16);
ALT_INV_hour(17) <= NOT hour(17);
ALT_INV_hour(18) <= NOT hour(18);
ALT_INV_hour(19) <= NOT hour(19);
ALT_INV_hour(20) <= NOT hour(20);
ALT_INV_hour(21) <= NOT hour(21);
ALT_INV_hour(22) <= NOT hour(22);
ALT_INV_hour(23) <= NOT hour(23);
ALT_INV_hour(24) <= NOT hour(24);
ALT_INV_hour(25) <= NOT hour(25);
ALT_INV_hour(26) <= NOT hour(26);
ALT_INV_hour(27) <= NOT hour(27);
ALT_INV_hour(10) <= NOT hour(10);
ALT_INV_hour(11) <= NOT hour(11);
ALT_INV_hour(12) <= NOT hour(12);
ALT_INV_hour(13) <= NOT hour(13);
ALT_INV_hour(14) <= NOT hour(14);
ALT_INV_hour(15) <= NOT hour(15);
ALT_INV_hour(5) <= NOT hour(5);
ALT_INV_hour(6) <= NOT hour(6);
ALT_INV_hour(7) <= NOT hour(7);
ALT_INV_hour(8) <= NOT hour(8);
ALT_INV_hour(9) <= NOT hour(9);
ALT_INV_hour(4) <= NOT hour(4);
ALT_INV_capacity(24) <= NOT capacity(24);
ALT_INV_capacity(25) <= NOT capacity(25);
ALT_INV_capacity(26) <= NOT capacity(26);
ALT_INV_capacity(27) <= NOT capacity(27);
ALT_INV_capacity(28) <= NOT capacity(28);
ALT_INV_capacity(29) <= NOT capacity(29);
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
ALT_INV_capacity(10) <= NOT capacity(10);
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
ALT_INV_capacity(9) <= NOT capacity(9);
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
ALT_INV_capacity(8) <= NOT capacity(8);
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
ALT_INV_capacity(5) <= NOT capacity(5);
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
ALT_INV_capacity(4) <= NOT capacity(4);
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
ALT_INV_capacity(2) <= NOT capacity(2);
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
ALT_INV_capacity(1) <= NOT capacity(1);
\ALT_INV_Add13~41_sumout\ <= NOT \Add13~41_sumout\;
\ALT_INV_Add13~37_sumout\ <= NOT \Add13~37_sumout\;
\ALT_INV_Add13~33_sumout\ <= NOT \Add13~33_sumout\;
\ALT_INV_Add13~29_sumout\ <= NOT \Add13~29_sumout\;
\ALT_INV_Add13~25_sumout\ <= NOT \Add13~25_sumout\;
\ALT_INV_Add13~21_sumout\ <= NOT \Add13~21_sumout\;
\ALT_INV_Add13~17_sumout\ <= NOT \Add13~17_sumout\;
\ALT_INV_Add13~13_sumout\ <= NOT \Add13~13_sumout\;
\ALT_INV_Add13~9_sumout\ <= NOT \Add13~9_sumout\;
\ALT_INV_Add3~121_sumout\ <= NOT \Add3~121_sumout\;
ALT_INV_capacity(31) <= NOT capacity(31);
\ALT_INV_Add3~117_sumout\ <= NOT \Add3~117_sumout\;
ALT_INV_capacity(30) <= NOT capacity(30);
\ALT_INV_Add3~113_sumout\ <= NOT \Add3~113_sumout\;
\ALT_INV_Add3~109_sumout\ <= NOT \Add3~109_sumout\;
\ALT_INV_Add3~105_sumout\ <= NOT \Add3~105_sumout\;
\ALT_INV_Add3~101_sumout\ <= NOT \Add3~101_sumout\;
\ALT_INV_Add3~97_sumout\ <= NOT \Add3~97_sumout\;
\ALT_INV_Add3~93_sumout\ <= NOT \Add3~93_sumout\;
\ALT_INV_Add3~89_sumout\ <= NOT \Add3~89_sumout\;
\ALT_INV_Add3~85_sumout\ <= NOT \Add3~85_sumout\;
\ALT_INV_Add3~81_sumout\ <= NOT \Add3~81_sumout\;
\ALT_INV_Add3~77_sumout\ <= NOT \Add3~77_sumout\;
\ALT_INV_Add3~73_sumout\ <= NOT \Add3~73_sumout\;
\ALT_INV_Add3~69_sumout\ <= NOT \Add3~69_sumout\;
\ALT_INV_Add3~65_sumout\ <= NOT \Add3~65_sumout\;
\ALT_INV_Add3~61_sumout\ <= NOT \Add3~61_sumout\;
\ALT_INV_Add3~57_sumout\ <= NOT \Add3~57_sumout\;
\ALT_INV_Add3~53_sumout\ <= NOT \Add3~53_sumout\;
\ALT_INV_Add3~49_sumout\ <= NOT \Add3~49_sumout\;
\ALT_INV_Add3~45_sumout\ <= NOT \Add3~45_sumout\;
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
ALT_INV_capacity(11) <= NOT capacity(11);
ALT_INV_capacity(12) <= NOT capacity(12);
ALT_INV_capacity(13) <= NOT capacity(13);
ALT_INV_capacity(14) <= NOT capacity(14);
ALT_INV_capacity(15) <= NOT capacity(15);
ALT_INV_capacity(16) <= NOT capacity(16);
ALT_INV_capacity(17) <= NOT capacity(17);
ALT_INV_capacity(18) <= NOT capacity(18);
ALT_INV_capacity(19) <= NOT capacity(19);
ALT_INV_capacity(20) <= NOT capacity(20);
ALT_INV_capacity(21) <= NOT capacity(21);
ALT_INV_capacity(22) <= NOT capacity(22);
ALT_INV_capacity(23) <= NOT capacity(23);

-- Location: IOOBUF_X3_Y56_N2
\uni_parked_car[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~1_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[0]~output_o\);

-- Location: IOOBUF_X5_Y56_N67
\uni_parked_car[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~5_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[1]~output_o\);

-- Location: IOOBUF_X5_Y56_N36
\uni_parked_car[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~9_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\uni_parked_car[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~13_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[3]~output_o\);

-- Location: IOOBUF_X5_Y56_N2
\uni_parked_car[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~17_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N98
\uni_parked_car[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~21_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[5]~output_o\);

-- Location: IOOBUF_X7_Y56_N98
\uni_parked_car[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~25_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N67
\uni_parked_car[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~29_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[7]~output_o\);

-- Location: IOOBUF_X5_Y56_N98
\uni_parked_car[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~33_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[8]~output_o\);

-- Location: IOOBUF_X3_Y56_N33
\uni_parked_car[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~37_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[9]~output_o\);

-- Location: IOOBUF_X3_Y56_N95
\uni_parked_car[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add12~41_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[10]~output_o\);

-- Location: IOOBUF_X8_Y56_N2
\parked_car[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~1_sumout\,
	devoe => ww_devoe,
	o => \parked_car[0]~output_o\);

-- Location: IOOBUF_X10_Y56_N67
\parked_car[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~5_sumout\,
	devoe => ww_devoe,
	o => \parked_car[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\parked_car[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~9_sumout\,
	devoe => ww_devoe,
	o => \parked_car[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N5
\parked_car[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~13_sumout\,
	devoe => ww_devoe,
	o => \parked_car[3]~output_o\);

-- Location: IOOBUF_X10_Y56_N98
\parked_car[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~17_sumout\,
	devoe => ww_devoe,
	o => \parked_car[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N33
\parked_car[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~21_sumout\,
	devoe => ww_devoe,
	o => \parked_car[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N67
\parked_car[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~25_sumout\,
	devoe => ww_devoe,
	o => \parked_car[6]~output_o\);

-- Location: IOOBUF_X8_Y56_N67
\parked_car[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~29_sumout\,
	devoe => ww_devoe,
	o => \parked_car[7]~output_o\);

-- Location: IOOBUF_X8_Y56_N98
\parked_car[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~33_sumout\,
	devoe => ww_devoe,
	o => \parked_car[8]~output_o\);

-- Location: IOOBUF_X10_Y56_N33
\parked_car[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~37_sumout\,
	devoe => ww_devoe,
	o => \parked_car[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N98
\parked_car[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add13~41_sumout\,
	devoe => ww_devoe,
	o => \parked_car[10]~output_o\);

-- Location: IOOBUF_X8_Y56_N36
\uni_vacated_space[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N98
\uni_vacated_space[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~1_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\uni_vacated_space[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~5_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N98
\uni_vacated_space[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~9_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N67
\uni_vacated_space[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~13_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[4]~output_o\);

-- Location: IOOBUF_X10_Y56_N5
\uni_vacated_space[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~17_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N67
\uni_vacated_space[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~21_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N98
\uni_vacated_space[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~25_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N36
\uni_vacated_space[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~29_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N36
\uni_vacated_space[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~33_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[9]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\uni_vacated_space[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~37_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[10]~output_o\);

-- Location: IOOBUF_X7_Y56_N36
\vacated_space[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~1_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[0]~output_o\);

-- Location: IOOBUF_X3_Y56_N64
\vacated_space[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~5_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[1]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\vacated_space[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~9_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N64
\vacated_space[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~13_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[3]~output_o\);

-- Location: IOOBUF_X7_Y56_N67
\vacated_space[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~17_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[4]~output_o\);

-- Location: IOOBUF_X7_Y56_N2
\vacated_space[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~21_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N67
\vacated_space[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~25_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N98
\vacated_space[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~29_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N36
\vacated_space[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~33_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[8]~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\vacated_space[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~37_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N36
\vacated_space[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~41_sumout\,
	devoe => ww_devoe,
	o => \vacated_space[10]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\uni_is_vacated_space~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~6_combout\,
	devoe => ww_devoe,
	o => \uni_is_vacated_space~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\is_vacated_space~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~18_combout\,
	devoe => ww_devoe,
	o => \is_vacated_space~output_o\);

-- Location: IOOBUF_X30_Y0_N36
\valid~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_valid~0_combout\,
	devoe => ww_devoe,
	o => \valid~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\car_exited~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_exited,
	o => \car_exited~input_o\);

-- Location: CLKCTRL_G5
\car_exited~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \car_exited~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \car_exited~inputclkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N94
\is_uni_car_exited~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_exited,
	o => \is_uni_car_exited~input_o\);

-- Location: IOIBUF_X26_Y0_N94
\car_entered~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_entered,
	o => \car_entered~input_o\);

-- Location: CLKCTRL_G6
\car_entered~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \car_entered~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \car_entered~inputclkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N32
\is_uni_car_entered~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_entered,
	o => \is_uni_car_entered~input_o\);

-- Location: IOIBUF_X26_Y0_N32
\clk~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LABCELL_X10_Y28_N34
\Equal1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !hour(7) & ( !hour(6) & ( (!hour(8) & (!hour(9) & !hour(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(8),
	datab => ALT_INV_hour(9),
	datad => ALT_INV_hour(5),
	datae => ALT_INV_hour(7),
	dataf => ALT_INV_hour(6),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X9_Y28_N38
\Equal1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !hour(21) & ( !hour(19) & ( (!hour(16) & (!hour(20) & (!hour(17) & !hour(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(16),
	datab => ALT_INV_hour(20),
	datac => ALT_INV_hour(17),
	datad => ALT_INV_hour(18),
	datae => ALT_INV_hour(21),
	dataf => ALT_INV_hour(19),
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X10_Y27_N28
\Equal1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !hour(1) & ( !hour(2) & ( (hour(4) & (!hour(0) & hour(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(4),
	datab => ALT_INV_hour(0),
	datad => ALT_INV_hour(3),
	datae => ALT_INV_hour(1),
	dataf => ALT_INV_hour(2),
	combout => \Equal1~5_combout\);

-- Location: MLABCELL_X11_Y29_N26
\Equal1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !hour(11) & ( !hour(13) & ( (!hour(15) & (!hour(12) & (!hour(14) & !hour(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(15),
	datab => ALT_INV_hour(12),
	datac => ALT_INV_hour(14),
	datad => ALT_INV_hour(10),
	datae => ALT_INV_hour(11),
	dataf => ALT_INV_hour(13),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X10_Y28_N28
\Equal1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !hour(23) & ( !hour(26) & ( (!hour(24) & (!hour(25) & (!hour(22) & !hour(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(24),
	datab => ALT_INV_hour(25),
	datac => ALT_INV_hour(22),
	datad => ALT_INV_hour(27),
	datae => ALT_INV_hour(23),
	dataf => ALT_INV_hour(26),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X10_Y27_N34
\Equal1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~1_combout\ & ( \Equal1~2_combout\ & ( (\Equal1~0_combout\ & (\Equal1~3_combout\ & (\Equal1~5_combout\ & \Equal1~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X10_Y29_N0
\Add5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( hour(0) ) + ( VCC ) + ( !VCC ))
-- \Add5~2\ = CARRY(( hour(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(0),
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: MLABCELL_X11_Y30_N0
\Add4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( minute(0) ) + ( VCC ) + ( !VCC ))
-- \Add4~2\ = CARRY(( minute(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(0),
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: FF_X11_Y30_N1
\minute[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~1_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(0));

-- Location: MLABCELL_X11_Y30_N2
\Add4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( minute(1) ) + ( GND ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( minute(1) ) + ( GND ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(1),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X11_Y30_N3
\minute[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~5_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(1));

-- Location: MLABCELL_X11_Y30_N4
\Add4~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( minute(2) ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( minute(2) ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(2),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X11_Y30_N5
\minute[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~9_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(2));

-- Location: MLABCELL_X11_Y30_N6
\Add4~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( minute(3) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( minute(3) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(3),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X11_Y30_N7
\minute[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~13_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(3));

-- Location: MLABCELL_X11_Y30_N8
\Add4~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( minute(4) ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( minute(4) ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(4),
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X11_Y30_N9
\minute[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~17_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(4));

-- Location: MLABCELL_X11_Y30_N10
\Add4~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( minute(5) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( minute(5) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(5),
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X11_Y30_N11
\minute[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~21_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(5));

-- Location: MLABCELL_X11_Y30_N12
\Add4~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( minute(6) ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( minute(6) ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(6),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X11_Y30_N13
\minute[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~25_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(6));

-- Location: MLABCELL_X11_Y30_N14
\Add4~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( minute(7) ) + ( GND ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( minute(7) ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(7),
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: FF_X11_Y30_N15
\minute[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~29_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(7));

-- Location: LABCELL_X10_Y30_N4
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( minute(6) & ( !minute(2) & ( (!minute(7) & (minute(4) & (!minute(5) & minute(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(7),
	datab => ALT_INV_minute(4),
	datac => ALT_INV_minute(5),
	datad => ALT_INV_minute(3),
	datae => ALT_INV_minute(6),
	dataf => ALT_INV_minute(2),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X11_Y30_N16
\Add4~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( minute(8) ) + ( GND ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( minute(8) ) + ( GND ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(8),
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: FF_X11_Y30_N17
\minute[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~33_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(8));

-- Location: MLABCELL_X11_Y30_N18
\Add4~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( minute(9) ) + ( GND ) + ( \Add4~34\ ))
-- \Add4~38\ = CARRY(( minute(9) ) + ( GND ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(9),
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: FF_X11_Y30_N19
\minute[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~37_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(9));

-- Location: MLABCELL_X11_Y30_N20
\Add4~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( minute(10) ) + ( GND ) + ( \Add4~38\ ))
-- \Add4~42\ = CARRY(( minute(10) ) + ( GND ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(10),
	cin => \Add4~38\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: FF_X11_Y30_N21
\minute[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~41_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(10));

-- Location: MLABCELL_X11_Y30_N22
\Add4~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( minute(11) ) + ( GND ) + ( \Add4~42\ ))
-- \Add4~46\ = CARRY(( minute(11) ) + ( GND ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(11),
	cin => \Add4~42\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: FF_X11_Y30_N23
\minute[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~45_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(11));

-- Location: MLABCELL_X11_Y30_N24
\Add4~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( minute(12) ) + ( GND ) + ( \Add4~46\ ))
-- \Add4~50\ = CARRY(( minute(12) ) + ( GND ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(12),
	cin => \Add4~46\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: FF_X11_Y30_N25
\minute[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~49_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(12));

-- Location: MLABCELL_X11_Y30_N26
\Add4~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( minute(13) ) + ( GND ) + ( \Add4~50\ ))
-- \Add4~54\ = CARRY(( minute(13) ) + ( GND ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(13),
	cin => \Add4~50\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: FF_X11_Y30_N27
\minute[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~53_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(13));

-- Location: LABCELL_X10_Y30_N26
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !minute(12) & ( !minute(11) & ( (!minute(8) & (!minute(10) & (!minute(13) & minute(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(8),
	datab => ALT_INV_minute(10),
	datac => ALT_INV_minute(13),
	datad => ALT_INV_minute(9),
	datae => ALT_INV_minute(12),
	dataf => ALT_INV_minute(11),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X11_Y30_N28
\Add4~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( minute(14) ) + ( GND ) + ( \Add4~54\ ))
-- \Add4~58\ = CARRY(( minute(14) ) + ( GND ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(14),
	cin => \Add4~54\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: FF_X11_Y30_N29
\minute[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~57_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(14));

-- Location: MLABCELL_X11_Y30_N30
\Add4~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( minute(15) ) + ( GND ) + ( \Add4~58\ ))
-- \Add4~62\ = CARRY(( minute(15) ) + ( GND ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(15),
	cin => \Add4~58\,
	sumout => \Add4~61_sumout\,
	cout => \Add4~62\);

-- Location: FF_X11_Y30_N31
\minute[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~61_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(15));

-- Location: MLABCELL_X11_Y30_N32
\Add4~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~65_sumout\ = SUM(( minute(16) ) + ( GND ) + ( \Add4~62\ ))
-- \Add4~66\ = CARRY(( minute(16) ) + ( GND ) + ( \Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(16),
	cin => \Add4~62\,
	sumout => \Add4~65_sumout\,
	cout => \Add4~66\);

-- Location: FF_X11_Y30_N33
\minute[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~65_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(16));

-- Location: MLABCELL_X11_Y30_N34
\Add4~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~69_sumout\ = SUM(( minute(17) ) + ( GND ) + ( \Add4~66\ ))
-- \Add4~70\ = CARRY(( minute(17) ) + ( GND ) + ( \Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(17),
	cin => \Add4~66\,
	sumout => \Add4~69_sumout\,
	cout => \Add4~70\);

-- Location: FF_X11_Y30_N35
\minute[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~69_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(17));

-- Location: MLABCELL_X11_Y30_N36
\Add4~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~73_sumout\ = SUM(( minute(18) ) + ( GND ) + ( \Add4~70\ ))
-- \Add4~74\ = CARRY(( minute(18) ) + ( GND ) + ( \Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(18),
	cin => \Add4~70\,
	sumout => \Add4~73_sumout\,
	cout => \Add4~74\);

-- Location: FF_X11_Y30_N37
\minute[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~73_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(18));

-- Location: MLABCELL_X11_Y30_N38
\Add4~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~77_sumout\ = SUM(( minute(19) ) + ( GND ) + ( \Add4~74\ ))
-- \Add4~78\ = CARRY(( minute(19) ) + ( GND ) + ( \Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(19),
	cin => \Add4~74\,
	sumout => \Add4~77_sumout\,
	cout => \Add4~78\);

-- Location: FF_X11_Y30_N39
\minute[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~77_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(19));

-- Location: LABCELL_X10_Y30_N20
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !minute(14) & ( !minute(16) & ( (!minute(18) & (!minute(15) & (!minute(17) & !minute(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(18),
	datab => ALT_INV_minute(15),
	datac => ALT_INV_minute(17),
	datad => ALT_INV_minute(19),
	datae => ALT_INV_minute(14),
	dataf => ALT_INV_minute(16),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X10_Y30_N2
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !minute(1) & ( !minute(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_minute(1),
	dataf => ALT_INV_minute(0),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X11_Y29_N0
\Add4~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~81_sumout\ = SUM(( minute(20) ) + ( GND ) + ( \Add4~78\ ))
-- \Add4~82\ = CARRY(( minute(20) ) + ( GND ) + ( \Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(20),
	cin => \Add4~78\,
	sumout => \Add4~81_sumout\,
	cout => \Add4~82\);

-- Location: FF_X11_Y29_N1
\minute[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~81_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(20));

-- Location: MLABCELL_X11_Y29_N2
\Add4~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~85_sumout\ = SUM(( minute(21) ) + ( GND ) + ( \Add4~82\ ))
-- \Add4~86\ = CARRY(( minute(21) ) + ( GND ) + ( \Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(21),
	cin => \Add4~82\,
	sumout => \Add4~85_sumout\,
	cout => \Add4~86\);

-- Location: FF_X11_Y29_N3
\minute[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~85_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(21));

-- Location: MLABCELL_X11_Y29_N4
\Add4~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~89_sumout\ = SUM(( minute(22) ) + ( GND ) + ( \Add4~86\ ))
-- \Add4~90\ = CARRY(( minute(22) ) + ( GND ) + ( \Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(22),
	cin => \Add4~86\,
	sumout => \Add4~89_sumout\,
	cout => \Add4~90\);

-- Location: FF_X11_Y29_N5
\minute[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~89_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(22));

-- Location: MLABCELL_X11_Y29_N6
\Add4~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~93_sumout\ = SUM(( minute(23) ) + ( GND ) + ( \Add4~90\ ))
-- \Add4~94\ = CARRY(( minute(23) ) + ( GND ) + ( \Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(23),
	cin => \Add4~90\,
	sumout => \Add4~93_sumout\,
	cout => \Add4~94\);

-- Location: FF_X11_Y29_N7
\minute[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~93_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(23));

-- Location: MLABCELL_X11_Y29_N8
\Add4~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~97_sumout\ = SUM(( minute(24) ) + ( GND ) + ( \Add4~94\ ))
-- \Add4~98\ = CARRY(( minute(24) ) + ( GND ) + ( \Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(24),
	cin => \Add4~94\,
	sumout => \Add4~97_sumout\,
	cout => \Add4~98\);

-- Location: FF_X11_Y29_N9
\minute[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~97_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(24));

-- Location: MLABCELL_X11_Y29_N10
\Add4~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~101_sumout\ = SUM(( minute(25) ) + ( GND ) + ( \Add4~98\ ))
-- \Add4~102\ = CARRY(( minute(25) ) + ( GND ) + ( \Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(25),
	cin => \Add4~98\,
	sumout => \Add4~101_sumout\,
	cout => \Add4~102\);

-- Location: FF_X11_Y29_N11
\minute[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~101_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(25));

-- Location: MLABCELL_X11_Y29_N12
\Add4~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~105_sumout\ = SUM(( minute(26) ) + ( GND ) + ( \Add4~102\ ))
-- \Add4~106\ = CARRY(( minute(26) ) + ( GND ) + ( \Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(26),
	cin => \Add4~102\,
	sumout => \Add4~105_sumout\,
	cout => \Add4~106\);

-- Location: FF_X11_Y29_N13
\minute[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~105_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(26));

-- Location: MLABCELL_X11_Y29_N14
\Add4~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~109_sumout\ = SUM(( minute(27) ) + ( GND ) + ( \Add4~106\ ))
-- \Add4~110\ = CARRY(( minute(27) ) + ( GND ) + ( \Add4~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(27),
	cin => \Add4~106\,
	sumout => \Add4~109_sumout\,
	cout => \Add4~110\);

-- Location: FF_X11_Y29_N15
\minute[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~109_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(27));

-- Location: MLABCELL_X11_Y29_N16
\Add4~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~113_sumout\ = SUM(( minute(28) ) + ( GND ) + ( \Add4~110\ ))
-- \Add4~114\ = CARRY(( minute(28) ) + ( GND ) + ( \Add4~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(28),
	cin => \Add4~110\,
	sumout => \Add4~113_sumout\,
	cout => \Add4~114\);

-- Location: FF_X11_Y29_N17
\minute[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~113_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(28));

-- Location: MLABCELL_X11_Y29_N18
\Add4~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~117_sumout\ = SUM(( minute(29) ) + ( GND ) + ( \Add4~114\ ))
-- \Add4~118\ = CARRY(( minute(29) ) + ( GND ) + ( \Add4~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(29),
	cin => \Add4~114\,
	sumout => \Add4~117_sumout\,
	cout => \Add4~118\);

-- Location: FF_X11_Y29_N19
\minute[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~117_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(29));

-- Location: MLABCELL_X11_Y29_N20
\Add4~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~121_sumout\ = SUM(( minute(30) ) + ( GND ) + ( \Add4~118\ ))
-- \Add4~122\ = CARRY(( minute(30) ) + ( GND ) + ( \Add4~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(30),
	cin => \Add4~118\,
	sumout => \Add4~121_sumout\,
	cout => \Add4~122\);

-- Location: FF_X11_Y29_N21
\minute[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~121_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(30));

-- Location: MLABCELL_X11_Y29_N22
\Add4~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~125_sumout\ = SUM(( minute(31) ) + ( GND ) + ( \Add4~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_minute(31),
	cin => \Add4~122\,
	sumout => \Add4~125_sumout\);

-- Location: FF_X11_Y29_N23
\minute[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add4~125_sumout\,
	sclr => \ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => minute(31));

-- Location: MLABCELL_X11_Y29_N30
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !minute(31) & ( !minute(30) & ( (!minute(29) & (!minute(27) & (!minute(28) & !minute(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(29),
	datab => ALT_INV_minute(27),
	datac => ALT_INV_minute(28),
	datad => ALT_INV_minute(26),
	datae => ALT_INV_minute(31),
	dataf => ALT_INV_minute(30),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X11_Y29_N34
\Equal0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !minute(22) & ( !minute(25) & ( (!minute(20) & (!minute(21) & (!minute(23) & !minute(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_minute(20),
	datab => ALT_INV_minute(21),
	datac => ALT_INV_minute(23),
	datad => ALT_INV_minute(24),
	datae => ALT_INV_minute(22),
	dataf => ALT_INV_minute(25),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X10_Y30_N32
\Equal0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~5_combout\ & ( (!\Equal0~1_combout\) # ((!\Equal0~2_combout\) # ((!\Equal0~3_combout\) # (!\Equal0~0_combout\))) ) ) ) # ( !\Equal0~4_combout\ & ( \Equal0~5_combout\ ) ) # ( \Equal0~4_combout\ & ( 
-- !\Equal0~5_combout\ ) ) # ( !\Equal0~4_combout\ & ( !\Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X10_Y27_N6
\hour[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \hour[0]~0_combout\ = ( hour(0) & ( \Equal0~6_combout\ & ( (!\Equal1~6_combout\) # (!\Add5~1_sumout\) ) ) ) # ( !hour(0) & ( \Equal0~6_combout\ & ( (\Equal1~6_combout\ & !\Add5~1_sumout\) ) ) ) # ( hour(0) & ( !\Equal0~6_combout\ & ( !\Equal1~6_combout\ $ 
-- (!\Add5~1_sumout\) ) ) ) # ( !hour(0) & ( !\Equal0~6_combout\ & ( !\Equal1~6_combout\ $ (!\Add5~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_Add5~1_sumout\,
	datae => ALT_INV_hour(0),
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \hour[0]~0_combout\);

-- Location: MLABCELL_X9_Y27_N38
\hour[0]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \hour[0]~feeder_combout\ = ( \hour[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_hour[0]~0_combout\,
	combout => \hour[0]~feeder_combout\);

-- Location: FF_X9_Y27_N39
\hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(0));

-- Location: LABCELL_X10_Y29_N2
\Add5~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( GND ) + ( hour(1) ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( GND ) + ( hour(1) ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(1),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X10_Y27_N24
\hour[1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \hour[1]~2_combout\ = ( \Equal1~6_combout\ & ( \Equal0~6_combout\ & ( \Add5~5_sumout\ ) ) ) # ( !\Equal1~6_combout\ & ( \Equal0~6_combout\ & ( hour(1) ) ) ) # ( \Equal1~6_combout\ & ( !\Equal0~6_combout\ & ( \Add5~5_sumout\ ) ) ) # ( !\Equal1~6_combout\ & 
-- ( !\Equal0~6_combout\ & ( \Add5~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~5_sumout\,
	datad => ALT_INV_hour(1),
	datae => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \hour[1]~2_combout\);

-- Location: FF_X9_Y27_N35
\hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(1));

-- Location: LABCELL_X10_Y29_N4
\Add5~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( hour(2) ) + ( GND ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( hour(2) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(2),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: LABCELL_X10_Y28_N38
\hour[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \hour[0]~1_combout\ = ( \Equal0~6_combout\ & ( \Equal1~6_combout\ ) ) # ( !\Equal0~6_combout\ & ( \Equal1~6_combout\ ) ) # ( !\Equal0~6_combout\ & ( !\Equal1~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \hour[0]~1_combout\);

-- Location: FF_X9_Y29_N5
\hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~9_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(2));

-- Location: LABCELL_X10_Y29_N6
\Add5~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( hour(3) ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( hour(3) ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(3),
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X10_Y29_N7
\hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~13_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(3));

-- Location: LABCELL_X10_Y29_N8
\Add5~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( GND ) + ( hour(4) ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( GND ) + ( hour(4) ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(4),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X9_Y29_N21
\hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~17_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(4));

-- Location: LABCELL_X10_Y29_N10
\Add5~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( GND ) + ( hour(5) ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( GND ) + ( hour(5) ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(5),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X9_Y29_N25
\hour[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~21_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(5));

-- Location: LABCELL_X10_Y29_N12
\Add5~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( hour(6) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( hour(6) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(6),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X9_Y29_N37
\hour[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~25_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(6));

-- Location: LABCELL_X10_Y29_N14
\Add5~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( hour(7) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( hour(7) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(7),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X9_Y29_N33
\hour[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~29_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(7));

-- Location: LABCELL_X10_Y29_N16
\Add5~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( hour(8) ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( hour(8) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(8),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X9_Y29_N17
\hour[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~33_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(8));

-- Location: LABCELL_X10_Y29_N18
\Add5~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( hour(9) ) + ( GND ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( hour(9) ) + ( GND ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(9),
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X10_Y29_N19
\hour[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~37_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(9));

-- Location: LABCELL_X10_Y29_N20
\Add5~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( GND ) + ( hour(10) ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( GND ) + ( hour(10) ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(10),
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X9_Y29_N11
\hour[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~41_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(10));

-- Location: LABCELL_X10_Y29_N22
\Add5~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( GND ) + ( hour(11) ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( GND ) + ( hour(11) ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(11),
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: FF_X9_Y29_N31
\hour[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~45_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(11));

-- Location: LABCELL_X10_Y29_N24
\Add5~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( GND ) + ( hour(12) ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( GND ) + ( hour(12) ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(12),
	cin => \Add5~46\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: FF_X9_Y29_N39
\hour[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~49_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(12));

-- Location: LABCELL_X10_Y29_N26
\Add5~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( hour(13) ) + ( GND ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( hour(13) ) + ( GND ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(13),
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: FF_X9_Y29_N23
\hour[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~53_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(13));

-- Location: LABCELL_X10_Y29_N28
\Add5~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( GND ) + ( hour(14) ) + ( \Add5~54\ ))
-- \Add5~58\ = CARRY(( GND ) + ( hour(14) ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(14),
	cin => \Add5~54\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: FF_X9_Y29_N15
\hour[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~57_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(14));

-- Location: LABCELL_X10_Y29_N30
\Add5~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( hour(15) ) + ( GND ) + ( \Add5~58\ ))
-- \Add5~62\ = CARRY(( hour(15) ) + ( GND ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(15),
	cin => \Add5~58\,
	sumout => \Add5~61_sumout\,
	cout => \Add5~62\);

-- Location: FF_X9_Y29_N13
\hour[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~61_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(15));

-- Location: LABCELL_X10_Y29_N32
\Add5~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~65_sumout\ = SUM(( hour(16) ) + ( GND ) + ( \Add5~62\ ))
-- \Add5~66\ = CARRY(( hour(16) ) + ( GND ) + ( \Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(16),
	cin => \Add5~62\,
	sumout => \Add5~65_sumout\,
	cout => \Add5~66\);

-- Location: FF_X9_Y29_N7
\hour[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~65_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(16));

-- Location: LABCELL_X10_Y29_N34
\Add5~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~69_sumout\ = SUM(( GND ) + ( hour(17) ) + ( \Add5~66\ ))
-- \Add5~70\ = CARRY(( GND ) + ( hour(17) ) + ( \Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(17),
	cin => \Add5~66\,
	sumout => \Add5~69_sumout\,
	cout => \Add5~70\);

-- Location: FF_X9_Y29_N19
\hour[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~69_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(17));

-- Location: LABCELL_X10_Y29_N36
\Add5~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~73_sumout\ = SUM(( hour(18) ) + ( GND ) + ( \Add5~70\ ))
-- \Add5~74\ = CARRY(( hour(18) ) + ( GND ) + ( \Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(18),
	cin => \Add5~70\,
	sumout => \Add5~73_sumout\,
	cout => \Add5~74\);

-- Location: FF_X9_Y29_N35
\hour[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~73_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(18));

-- Location: LABCELL_X10_Y29_N38
\Add5~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~77_sumout\ = SUM(( hour(19) ) + ( GND ) + ( \Add5~74\ ))
-- \Add5~78\ = CARRY(( hour(19) ) + ( GND ) + ( \Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(19),
	cin => \Add5~74\,
	sumout => \Add5~77_sumout\,
	cout => \Add5~78\);

-- Location: FF_X9_Y29_N9
\hour[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~77_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(19));

-- Location: LABCELL_X10_Y28_N0
\Add5~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~81_sumout\ = SUM(( hour(20) ) + ( GND ) + ( \Add5~78\ ))
-- \Add5~82\ = CARRY(( hour(20) ) + ( GND ) + ( \Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(20),
	cin => \Add5~78\,
	sumout => \Add5~81_sumout\,
	cout => \Add5~82\);

-- Location: FF_X9_Y29_N27
\hour[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~81_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(20));

-- Location: LABCELL_X10_Y28_N2
\Add5~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~85_sumout\ = SUM(( hour(21) ) + ( GND ) + ( \Add5~82\ ))
-- \Add5~86\ = CARRY(( hour(21) ) + ( GND ) + ( \Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(21),
	cin => \Add5~82\,
	sumout => \Add5~85_sumout\,
	cout => \Add5~86\);

-- Location: FF_X9_Y29_N1
\hour[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~85_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(21));

-- Location: LABCELL_X10_Y28_N4
\Add5~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~89_sumout\ = SUM(( GND ) + ( hour(22) ) + ( \Add5~86\ ))
-- \Add5~90\ = CARRY(( GND ) + ( hour(22) ) + ( \Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(22),
	cin => \Add5~86\,
	sumout => \Add5~89_sumout\,
	cout => \Add5~90\);

-- Location: FF_X9_Y28_N25
\hour[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~89_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(22));

-- Location: LABCELL_X10_Y28_N6
\Add5~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~93_sumout\ = SUM(( hour(23) ) + ( GND ) + ( \Add5~90\ ))
-- \Add5~94\ = CARRY(( hour(23) ) + ( GND ) + ( \Add5~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(23),
	cin => \Add5~90\,
	sumout => \Add5~93_sumout\,
	cout => \Add5~94\);

-- Location: FF_X9_Y28_N23
\hour[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~93_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(23));

-- Location: LABCELL_X10_Y28_N8
\Add5~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~97_sumout\ = SUM(( hour(24) ) + ( GND ) + ( \Add5~94\ ))
-- \Add5~98\ = CARRY(( hour(24) ) + ( GND ) + ( \Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(24),
	cin => \Add5~94\,
	sumout => \Add5~97_sumout\,
	cout => \Add5~98\);

-- Location: FF_X10_Y28_N9
\hour[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~97_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(24));

-- Location: LABCELL_X10_Y28_N10
\Add5~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~101_sumout\ = SUM(( hour(25) ) + ( GND ) + ( \Add5~98\ ))
-- \Add5~102\ = CARRY(( hour(25) ) + ( GND ) + ( \Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(25),
	cin => \Add5~98\,
	sumout => \Add5~101_sumout\,
	cout => \Add5~102\);

-- Location: FF_X9_Y28_N35
\hour[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~101_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(25));

-- Location: LABCELL_X10_Y28_N12
\Add5~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~105_sumout\ = SUM(( GND ) + ( hour(26) ) + ( \Add5~102\ ))
-- \Add5~106\ = CARRY(( GND ) + ( hour(26) ) + ( \Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(26),
	cin => \Add5~102\,
	sumout => \Add5~105_sumout\,
	cout => \Add5~106\);

-- Location: FF_X9_Y28_N33
\hour[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~105_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(26));

-- Location: LABCELL_X10_Y28_N14
\Add5~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~109_sumout\ = SUM(( hour(27) ) + ( GND ) + ( \Add5~106\ ))
-- \Add5~110\ = CARRY(( hour(27) ) + ( GND ) + ( \Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(27),
	cin => \Add5~106\,
	sumout => \Add5~109_sumout\,
	cout => \Add5~110\);

-- Location: FF_X9_Y28_N29
\hour[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~109_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(27));

-- Location: LABCELL_X10_Y28_N16
\Add5~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~113_sumout\ = SUM(( GND ) + ( hour(28) ) + ( \Add5~110\ ))
-- \Add5~114\ = CARRY(( GND ) + ( hour(28) ) + ( \Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(28),
	cin => \Add5~110\,
	sumout => \Add5~113_sumout\,
	cout => \Add5~114\);

-- Location: FF_X9_Y28_N21
\hour[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~113_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(28));

-- Location: LABCELL_X10_Y28_N18
\Add5~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~117_sumout\ = SUM(( GND ) + ( hour(29) ) + ( \Add5~114\ ))
-- \Add5~118\ = CARRY(( GND ) + ( hour(29) ) + ( \Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(29),
	cin => \Add5~114\,
	sumout => \Add5~117_sumout\,
	cout => \Add5~118\);

-- Location: FF_X9_Y28_N39
\hour[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~117_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(29));

-- Location: LABCELL_X10_Y28_N20
\Add5~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~121_sumout\ = SUM(( GND ) + ( hour(30) ) + ( \Add5~118\ ))
-- \Add5~122\ = CARRY(( GND ) + ( hour(30) ) + ( \Add5~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(30),
	cin => \Add5~118\,
	sumout => \Add5~121_sumout\,
	cout => \Add5~122\);

-- Location: FF_X9_Y28_N31
\hour[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~121_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(30));

-- Location: LABCELL_X10_Y28_N22
\Add5~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~125_sumout\ = SUM(( hour(31) ) + ( GND ) + ( \Add5~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(31),
	cin => \Add5~122\,
	sumout => \Add5~125_sumout\);

-- Location: FF_X9_Y28_N37
\hour[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~125_sumout\,
	sclr => \Equal1~6_combout\,
	sload => VCC,
	ena => \hour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(31));

-- Location: LABCELL_X10_Y28_N24
\Equal1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !hour(29) & ( (!hour(30) & (!hour(31) & !hour(28))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(30),
	datab => ALT_INV_hour(31),
	datac => ALT_INV_hour(28),
	dataf => ALT_INV_hour(29),
	combout => \Equal1~4_combout\);

-- Location: MLABCELL_X9_Y27_N30
\LessThan6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ( hour(0) & ( (hour(3) & hour(2)) ) ) # ( !hour(0) & ( (hour(1) & (hour(3) & hour(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(1),
	datac => ALT_INV_hour(3),
	datad => ALT_INV_hour(2),
	dataf => ALT_INV_hour(0),
	combout => \LessThan6~1_combout\);

-- Location: LABCELL_X10_Y27_N18
\LessThan6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( \Equal1~3_combout\ & ( \Equal1~0_combout\ & ( (\Equal1~2_combout\ & (\Equal1~1_combout\ & !hour(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~2_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datad => ALT_INV_hour(4),
	datae => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X5_Y27_N24
\capacity~11\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~11_combout\ = ( \LessThan6~0_combout\ & ( (\Equal1~4_combout\ & \LessThan6~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \capacity~11_combout\);

-- Location: MLABCELL_X9_Y29_N0
\Add6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( VCC ) + ( hour(2) ) + ( !VCC ))
-- \Add6~2\ = CARRY(( VCC ) + ( hour(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(2),
	cin => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: MLABCELL_X9_Y29_N2
\Add6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( GND ) + ( hour(3) ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( GND ) + ( hour(3) ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(3),
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: MLABCELL_X9_Y29_N4
\Add6~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( VCC ) + ( hour(4) ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( VCC ) + ( hour(4) ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(4),
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: MLABCELL_X9_Y29_N6
\Add6~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( VCC ) + ( hour(5) ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( VCC ) + ( hour(5) ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(5),
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: MLABCELL_X9_Y29_N8
\Add6~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( VCC ) + ( hour(6) ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( VCC ) + ( hour(6) ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(6),
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: MLABCELL_X9_Y29_N10
\Add6~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( VCC ) + ( hour(7) ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( VCC ) + ( hour(7) ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(7),
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

-- Location: MLABCELL_X9_Y29_N12
\Add6~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( hour(8) ) + ( VCC ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( hour(8) ) + ( VCC ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(8),
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: MLABCELL_X9_Y29_N14
\Add6~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( hour(9) ) + ( VCC ) + ( \Add6~26\ ))
-- \Add6~30\ = CARRY(( hour(9) ) + ( VCC ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(9),
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: MLABCELL_X9_Y29_N16
\Add6~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( VCC ) + ( hour(10) ) + ( \Add6~30\ ))
-- \Add6~34\ = CARRY(( VCC ) + ( hour(10) ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(10),
	cin => \Add6~30\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: MLABCELL_X9_Y29_N18
\Add6~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( VCC ) + ( hour(11) ) + ( \Add6~34\ ))
-- \Add6~38\ = CARRY(( VCC ) + ( hour(11) ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(11),
	cin => \Add6~34\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\);

-- Location: MLABCELL_X9_Y29_N20
\Add6~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( VCC ) + ( hour(12) ) + ( \Add6~38\ ))
-- \Add6~42\ = CARRY(( VCC ) + ( hour(12) ) + ( \Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(12),
	cin => \Add6~38\,
	sumout => \Add6~41_sumout\,
	cout => \Add6~42\);

-- Location: MLABCELL_X9_Y29_N22
\Add6~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~45_sumout\ = SUM(( hour(13) ) + ( VCC ) + ( \Add6~42\ ))
-- \Add6~46\ = CARRY(( hour(13) ) + ( VCC ) + ( \Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(13),
	cin => \Add6~42\,
	sumout => \Add6~45_sumout\,
	cout => \Add6~46\);

-- Location: MLABCELL_X9_Y29_N24
\Add6~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~49_sumout\ = SUM(( VCC ) + ( hour(14) ) + ( \Add6~46\ ))
-- \Add6~50\ = CARRY(( VCC ) + ( hour(14) ) + ( \Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(14),
	cin => \Add6~46\,
	sumout => \Add6~49_sumout\,
	cout => \Add6~50\);

-- Location: MLABCELL_X9_Y29_N26
\Add6~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~53_sumout\ = SUM(( VCC ) + ( hour(15) ) + ( \Add6~50\ ))
-- \Add6~54\ = CARRY(( VCC ) + ( hour(15) ) + ( \Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(15),
	cin => \Add6~50\,
	sumout => \Add6~53_sumout\,
	cout => \Add6~54\);

-- Location: MLABCELL_X9_Y29_N28
\Add6~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~57_sumout\ = SUM(( VCC ) + ( hour(16) ) + ( \Add6~54\ ))
-- \Add6~58\ = CARRY(( VCC ) + ( hour(16) ) + ( \Add6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(16),
	cin => \Add6~54\,
	sumout => \Add6~57_sumout\,
	cout => \Add6~58\);

-- Location: MLABCELL_X9_Y29_N30
\Add6~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~61_sumout\ = SUM(( VCC ) + ( hour(17) ) + ( \Add6~58\ ))
-- \Add6~62\ = CARRY(( VCC ) + ( hour(17) ) + ( \Add6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(17),
	cin => \Add6~58\,
	sumout => \Add6~61_sumout\,
	cout => \Add6~62\);

-- Location: MLABCELL_X9_Y29_N32
\Add6~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~65_sumout\ = SUM(( hour(18) ) + ( VCC ) + ( \Add6~62\ ))
-- \Add6~66\ = CARRY(( hour(18) ) + ( VCC ) + ( \Add6~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(18),
	cin => \Add6~62\,
	sumout => \Add6~65_sumout\,
	cout => \Add6~66\);

-- Location: MLABCELL_X9_Y29_N34
\Add6~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~69_sumout\ = SUM(( hour(19) ) + ( VCC ) + ( \Add6~66\ ))
-- \Add6~70\ = CARRY(( hour(19) ) + ( VCC ) + ( \Add6~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(19),
	cin => \Add6~66\,
	sumout => \Add6~69_sumout\,
	cout => \Add6~70\);

-- Location: MLABCELL_X9_Y29_N36
\Add6~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~73_sumout\ = SUM(( hour(20) ) + ( VCC ) + ( \Add6~70\ ))
-- \Add6~74\ = CARRY(( hour(20) ) + ( VCC ) + ( \Add6~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(20),
	cin => \Add6~70\,
	sumout => \Add6~73_sumout\,
	cout => \Add6~74\);

-- Location: MLABCELL_X9_Y29_N38
\Add6~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~77_sumout\ = SUM(( hour(21) ) + ( VCC ) + ( \Add6~74\ ))
-- \Add6~78\ = CARRY(( hour(21) ) + ( VCC ) + ( \Add6~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(21),
	cin => \Add6~74\,
	sumout => \Add6~77_sumout\,
	cout => \Add6~78\);

-- Location: MLABCELL_X9_Y28_N0
\Add6~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~81_sumout\ = SUM(( VCC ) + ( hour(22) ) + ( \Add6~78\ ))
-- \Add6~82\ = CARRY(( VCC ) + ( hour(22) ) + ( \Add6~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(22),
	cin => \Add6~78\,
	sumout => \Add6~81_sumout\,
	cout => \Add6~82\);

-- Location: MLABCELL_X9_Y28_N2
\Add6~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~85_sumout\ = SUM(( hour(23) ) + ( VCC ) + ( \Add6~82\ ))
-- \Add6~86\ = CARRY(( hour(23) ) + ( VCC ) + ( \Add6~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(23),
	cin => \Add6~82\,
	sumout => \Add6~85_sumout\,
	cout => \Add6~86\);

-- Location: MLABCELL_X9_Y28_N4
\Add6~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~89_sumout\ = SUM(( VCC ) + ( hour(24) ) + ( \Add6~86\ ))
-- \Add6~90\ = CARRY(( VCC ) + ( hour(24) ) + ( \Add6~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(24),
	cin => \Add6~86\,
	sumout => \Add6~89_sumout\,
	cout => \Add6~90\);

-- Location: MLABCELL_X9_Y28_N6
\Add6~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~93_sumout\ = SUM(( hour(25) ) + ( VCC ) + ( \Add6~90\ ))
-- \Add6~94\ = CARRY(( hour(25) ) + ( VCC ) + ( \Add6~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(25),
	cin => \Add6~90\,
	sumout => \Add6~93_sumout\,
	cout => \Add6~94\);

-- Location: MLABCELL_X9_Y28_N8
\Add6~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~97_sumout\ = SUM(( VCC ) + ( hour(26) ) + ( \Add6~94\ ))
-- \Add6~98\ = CARRY(( VCC ) + ( hour(26) ) + ( \Add6~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(26),
	cin => \Add6~94\,
	sumout => \Add6~97_sumout\,
	cout => \Add6~98\);

-- Location: MLABCELL_X9_Y28_N10
\Add6~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~101_sumout\ = SUM(( VCC ) + ( hour(27) ) + ( \Add6~98\ ))
-- \Add6~102\ = CARRY(( VCC ) + ( hour(27) ) + ( \Add6~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(27),
	cin => \Add6~98\,
	sumout => \Add6~101_sumout\,
	cout => \Add6~102\);

-- Location: MLABCELL_X9_Y28_N12
\Add6~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~105_sumout\ = SUM(( VCC ) + ( hour(28) ) + ( \Add6~102\ ))
-- \Add6~106\ = CARRY(( VCC ) + ( hour(28) ) + ( \Add6~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(28),
	cin => \Add6~102\,
	sumout => \Add6~105_sumout\,
	cout => \Add6~106\);

-- Location: MLABCELL_X9_Y28_N14
\Add6~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~109_sumout\ = SUM(( VCC ) + ( hour(29) ) + ( \Add6~106\ ))
-- \Add6~110\ = CARRY(( VCC ) + ( hour(29) ) + ( \Add6~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(29),
	cin => \Add6~106\,
	sumout => \Add6~109_sumout\,
	cout => \Add6~110\);

-- Location: MLABCELL_X9_Y28_N16
\Add6~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~113_sumout\ = SUM(( hour(30) ) + ( VCC ) + ( \Add6~110\ ))
-- \Add6~114\ = CARRY(( hour(30) ) + ( VCC ) + ( \Add6~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(30),
	cin => \Add6~110\,
	sumout => \Add6~113_sumout\,
	cout => \Add6~114\);

-- Location: MLABCELL_X9_Y28_N18
\Add6~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~117_sumout\ = SUM(( hour(31) ) + ( VCC ) + ( \Add6~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(31),
	cin => \Add6~114\,
	sumout => \Add6~117_sumout\);

-- Location: DSPMULT_X8_Y27_N0
\Mult0|auto_generated|mac_mult2\ : arriaii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clear => "none",
	dataa_clock => "none",
	dataa_width => 18,
	datab_clear => "none",
	datab_clock => "none",
	datab_width => 18,
	scanouta_clear => "none",
	scanouta_clock => "none",
	signa_clear => "none",
	signa_clock => "none",
	signa_internally_grounded => "false",
	signb_clear => "none",
	signb_clock => "none",
	signb_internally_grounded => "false")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult2_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult2_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult2_DATAOUT_bus\);

-- Location: DSPMULT_X8_Y27_N1
\Mult0|auto_generated|mac_mult4\ : arriaii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clear => "none",
	dataa_clock => "none",
	dataa_width => 18,
	datab_clear => "none",
	datab_clock => "none",
	datab_width => 18,
	scanouta_clear => "none",
	scanouta_clock => "none",
	signa_clear => "none",
	signa_clock => "none",
	signa_internally_grounded => "true",
	signb_clear => "none",
	signb_clock => "none",
	signb_internally_grounded => "false")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult4_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult4_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult4_DATAOUT_bus\);

-- Location: DSPMULT_X8_Y26_N0
\Mult0|auto_generated|mac_mult3\ : arriaii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clear => "none",
	dataa_clock => "none",
	dataa_width => 18,
	datab_clear => "none",
	datab_clock => "none",
	datab_width => 18,
	scanouta_clear => "none",
	scanouta_clock => "none",
	signa_clear => "none",
	signa_clock => "none",
	signa_internally_grounded => "false",
	signb_clear => "none",
	signb_clock => "none",
	signb_internally_grounded => "true")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPMULT_X8_Y26_N1
\Mult0|auto_generated|mac_mult1\ : arriaii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clear => "none",
	dataa_clock => "none",
	dataa_width => 18,
	datab_clear => "none",
	datab_clock => "none",
	datab_width => 18,
	scanouta_clear => "none",
	scanouta_clock => "none",
	signa_clear => "none",
	signa_clock => "none",
	signa_internally_grounded => "true",
	signb_clear => "none",
	signb_clock => "none",
	signb_internally_grounded => "true")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X8_Y26_N2
\Mult0|auto_generated|mac_out5\ : arriaii_mac_out
-- pragma translate_off
GENERIC MAP (
	acc_adder_operation => "add",
	dataa_width => 36,
	datab_width => 36,
	datac_width => 36,
	datad_width => 36,
	first_adder0_clear => "none",
	first_adder0_clock => "none",
	first_adder0_mode => "add",
	first_adder1_clear => "none",
	first_adder1_clock => "none",
	first_adder1_mode => "add",
	multa_signa_internally_grounded => "false",
	multa_signb_internally_grounded => "false",
	multb_signa_internally_grounded => "true",
	multb_signb_internally_grounded => "false",
	multc_signa_internally_grounded => "false",
	multc_signb_internally_grounded => "true",
	multd_signa_internally_grounded => "true",
	multd_signb_internally_grounded => "true",
	operation_mode => "36_bit_multiply",
	output_clear => "none",
	output_clock => "none",
	rotate_clear => "none",
	rotate_clock => "none",
	rotate_output_clear => "none",
	rotate_output_clock => "none",
	rotate_pipeline_clear => "none",
	rotate_pipeline_clock => "none",
	round_chain_out_mode => "nearest_integer",
	round_chain_out_width => 15,
	round_clear => "none",
	round_clock => "none",
	round_mode => "nearest_integer",
	round_pipeline_clear => "none",
	round_pipeline_clock => "none",
	round_width => 15,
	roundchainout_clear => "none",
	roundchainout_clock => "none",
	roundchainout_output_clear => "none",
	roundchainout_output_clock => "none",
	roundchainout_pipeline_clear => "none",
	roundchainout_pipeline_clock => "none",
	saturate_chain_out_mode => "asymmetric",
	saturate_chain_out_width => 1,
	saturate_clear => "none",
	saturate_clock => "none",
	saturate_mode => "asymmetric",
	saturate_pipeline_clear => "none",
	saturate_pipeline_clock => "none",
	saturate_width => 1,
	saturatechainout_clear => "none",
	saturatechainout_clock => "none",
	saturatechainout_output_clear => "none",
	saturatechainout_output_clock => "none",
	saturatechainout_pipeline_clear => "none",
	saturatechainout_pipeline_clock => "none",
	second_adder_clear => "none",
	second_adder_clock => "none",
	shiftright_clear => "none",
	shiftright_clock => "none",
	shiftright_output_clear => "none",
	shiftright_output_clock => "none",
	shiftright_pipeline_clear => "none",
	shiftright_pipeline_clock => "none",
	signa_clear => "none",
	signa_clock => "none",
	signa_pipeline_clear => "none",
	signa_pipeline_clock => "none",
	signb_clear => "none",
	signb_clock => "none",
	signb_pipeline_clear => "none",
	signb_pipeline_clock => "none",
	zeroacc_clear => "none",
	zeroacc_clock => "none",
	zeroacc_pipeline_clear => "none",
	zeroacc_pipeline_clock => "none",
	zerochainout_output_clear => "none",
	zerochainout_output_clock => "none",
	zeroloopback_clear => "none",
	zeroloopback_clock => "none",
	zeroloopback_output_clear => "none",
	zeroloopback_output_clock => "none",
	zeroloopback_pipeline_clear => "none",
	zeroloopback_pipeline_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_out5_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_out5_DATAB_bus\,
	datac => \Mult0|auto_generated|mac_out5_DATAC_bus\,
	datad => \Mult0|auto_generated|mac_out5_DATAD_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out5_DATAOUT_bus\);

-- Location: LABCELL_X7_Y28_N20
\Add7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( VCC ) + ( !hour(2) ) + ( !VCC ))
-- \Add7~2\ = CARRY(( VCC ) + ( !hour(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(2),
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: LABCELL_X7_Y28_N22
\Add7~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT37\ ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT37\ ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT37\,
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: LABCELL_X7_Y28_N24
\Add7~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT38\ ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT38\ ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT38\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: LABCELL_X7_Y28_N26
\Add7~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT39\ ) + ( VCC ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT39\ ) + ( VCC ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT39\,
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: LABCELL_X7_Y28_N28
\Add7~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( VCC ) + ( \Mult0|auto_generated|mac_out5~DATAOUT40\ ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( VCC ) + ( \Mult0|auto_generated|mac_out5~DATAOUT40\ ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT40\,
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

-- Location: LABCELL_X7_Y28_N30
\Add7~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT41\ ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT41\ ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT41\,
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: LABCELL_X7_Y28_N32
\Add7~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT42\ ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT42\ ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT42\,
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: LABCELL_X7_Y28_N34
\Add7~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT43\ ) + ( GND ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT43\ ) + ( GND ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT43\,
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: LABCELL_X7_Y28_N36
\Add7~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT44\ ) + ( GND ) + ( \Add7~30\ ))
-- \Add7~34\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT44\ ) + ( GND ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT44\,
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: LABCELL_X7_Y28_N38
\Add7~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT45\ ) + ( GND ) + ( \Add7~34\ ))
-- \Add7~38\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT45\ ) + ( GND ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT45\,
	cin => \Add7~34\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\);

-- Location: LABCELL_X7_Y27_N0
\Add7~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~41_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT46\ ) + ( \Add7~38\ ))
-- \Add7~42\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT46\ ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT46\,
	cin => \Add7~38\,
	sumout => \Add7~41_sumout\,
	cout => \Add7~42\);

-- Location: LABCELL_X7_Y27_N2
\Add7~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~45_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT47\ ) + ( \Add7~42\ ))
-- \Add7~46\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT47\ ) + ( \Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT47\,
	cin => \Add7~42\,
	sumout => \Add7~45_sumout\,
	cout => \Add7~46\);

-- Location: LABCELL_X7_Y27_N4
\Add7~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~49_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT48\ ) + ( GND ) + ( \Add7~46\ ))
-- \Add7~50\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT48\ ) + ( GND ) + ( \Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT48\,
	cin => \Add7~46\,
	sumout => \Add7~49_sumout\,
	cout => \Add7~50\);

-- Location: LABCELL_X7_Y27_N6
\Add7~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~53_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT49\ ) + ( GND ) + ( \Add7~50\ ))
-- \Add7~54\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT49\ ) + ( GND ) + ( \Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT49\,
	cin => \Add7~50\,
	sumout => \Add7~53_sumout\,
	cout => \Add7~54\);

-- Location: LABCELL_X7_Y27_N8
\Add7~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~57_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT50\ ) + ( \Add7~54\ ))
-- \Add7~58\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT50\ ) + ( \Add7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT50\,
	cin => \Add7~54\,
	sumout => \Add7~57_sumout\,
	cout => \Add7~58\);

-- Location: LABCELL_X7_Y27_N10
\Add7~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~61_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT51\ ) + ( GND ) + ( \Add7~58\ ))
-- \Add7~62\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT51\ ) + ( GND ) + ( \Add7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT51\,
	cin => \Add7~58\,
	sumout => \Add7~61_sumout\,
	cout => \Add7~62\);

-- Location: LABCELL_X7_Y27_N12
\Add7~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~65_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT52\ ) + ( \Add7~62\ ))
-- \Add7~66\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT52\ ) + ( \Add7~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT52\,
	cin => \Add7~62\,
	sumout => \Add7~65_sumout\,
	cout => \Add7~66\);

-- Location: LABCELL_X7_Y27_N14
\Add7~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~69_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT53\ ) + ( \Add7~66\ ))
-- \Add7~70\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT53\ ) + ( \Add7~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT53\,
	cin => \Add7~66\,
	sumout => \Add7~69_sumout\,
	cout => \Add7~70\);

-- Location: LABCELL_X7_Y27_N16
\Add7~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~73_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT54\ ) + ( GND ) + ( \Add7~70\ ))
-- \Add7~74\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT54\ ) + ( GND ) + ( \Add7~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT54\,
	cin => \Add7~70\,
	sumout => \Add7~73_sumout\,
	cout => \Add7~74\);

-- Location: LABCELL_X7_Y27_N18
\Add7~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~77_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT55\ ) + ( \Add7~74\ ))
-- \Add7~78\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT55\ ) + ( \Add7~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT55\,
	cin => \Add7~74\,
	sumout => \Add7~77_sumout\,
	cout => \Add7~78\);

-- Location: LABCELL_X7_Y27_N20
\Add7~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~81_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT56\ ) + ( \Add7~78\ ))
-- \Add7~82\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT56\ ) + ( \Add7~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT56\,
	cin => \Add7~78\,
	sumout => \Add7~81_sumout\,
	cout => \Add7~82\);

-- Location: LABCELL_X7_Y27_N22
\Add7~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~85_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT57\ ) + ( GND ) + ( \Add7~82\ ))
-- \Add7~86\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT57\ ) + ( GND ) + ( \Add7~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT57\,
	cin => \Add7~82\,
	sumout => \Add7~85_sumout\,
	cout => \Add7~86\);

-- Location: LABCELL_X7_Y27_N24
\Add7~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~89_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT58\ ) + ( \Add7~86\ ))
-- \Add7~90\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT58\ ) + ( \Add7~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT58\,
	cin => \Add7~86\,
	sumout => \Add7~89_sumout\,
	cout => \Add7~90\);

-- Location: LABCELL_X7_Y27_N26
\Add7~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~93_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT59\ ) + ( GND ) + ( \Add7~90\ ))
-- \Add7~94\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT59\ ) + ( GND ) + ( \Add7~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT59\,
	cin => \Add7~90\,
	sumout => \Add7~93_sumout\,
	cout => \Add7~94\);

-- Location: LABCELL_X7_Y27_N28
\Add7~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~97_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT60\ ) + ( \Add7~94\ ))
-- \Add7~98\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT60\ ) + ( \Add7~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT60\,
	cin => \Add7~94\,
	sumout => \Add7~97_sumout\,
	cout => \Add7~98\);

-- Location: LABCELL_X7_Y27_N30
\Add7~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~101_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT61\ ) + ( GND ) + ( \Add7~98\ ))
-- \Add7~102\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT61\ ) + ( GND ) + ( \Add7~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT61\,
	cin => \Add7~98\,
	sumout => \Add7~101_sumout\,
	cout => \Add7~102\);

-- Location: LABCELL_X7_Y27_N32
\Add7~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~105_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT62\ ) + ( GND ) + ( \Add7~102\ ))
-- \Add7~106\ = CARRY(( \Mult0|auto_generated|mac_out5~DATAOUT62\ ) + ( GND ) + ( \Add7~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT62\,
	cin => \Add7~102\,
	sumout => \Add7~105_sumout\,
	cout => \Add7~106\);

-- Location: LABCELL_X7_Y27_N34
\Add7~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~109_sumout\ = SUM(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT63\ ) + ( \Add7~106\ ))
-- \Add7~110\ = CARRY(( GND ) + ( \Mult0|auto_generated|mac_out5~DATAOUT63\ ) + ( \Add7~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT63\,
	cin => \Add7~106\,
	sumout => \Add7~109_sumout\,
	cout => \Add7~110\);

-- Location: MLABCELL_X6_Y27_N22
\capacity~31\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~31_combout\ = ( \Add7~109_sumout\ & ( \capacity~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capacity~11_combout\,
	dataf => \ALT_INV_Add7~109_sumout\,
	combout => \capacity~31_combout\);

-- Location: MLABCELL_X9_Y28_N30
\LessThan4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( !hour(28) & ( !hour(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(3),
	dataf => ALT_INV_hour(28),
	combout => \LessThan4~0_combout\);

-- Location: LABCELL_X7_Y28_N2
\always0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = ( \LessThan6~0_combout\ & ( (\Equal1~4_combout\ & (!\LessThan6~1_combout\ & !\LessThan4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_LessThan6~1_combout\,
	datac => \ALT_INV_LessThan4~0_combout\,
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \always0~0_combout\);

-- Location: FF_X6_Y27_N23
\capacity[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~31_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(30));

-- Location: MLABCELL_X6_Y27_N26
\capacity~12\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~12_combout\ = ( \Add7~105_sumout\ & ( \capacity~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capacity~11_combout\,
	dataf => \ALT_INV_Add7~105_sumout\,
	combout => \capacity~12_combout\);

-- Location: FF_X6_Y27_N27
\capacity[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~12_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(29));

-- Location: MLABCELL_X6_Y27_N28
\capacity~13\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~13_combout\ = ( \Add7~101_sumout\ & ( \capacity~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capacity~11_combout\,
	dataf => \ALT_INV_Add7~101_sumout\,
	combout => \capacity~13_combout\);

-- Location: FF_X6_Y27_N29
\capacity[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~13_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(28));

-- Location: MLABCELL_X6_Y27_N32
\capacity~14\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~14_combout\ = ( \Add7~97_sumout\ & ( \capacity~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_capacity~11_combout\,
	dataf => \ALT_INV_Add7~97_sumout\,
	combout => \capacity~14_combout\);

-- Location: FF_X6_Y27_N33
\capacity[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~14_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(27));

-- Location: LABCELL_X5_Y27_N2
\capacity~15\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~15_combout\ = ( \Add7~93_sumout\ & ( \capacity~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capacity~11_combout\,
	dataf => \ALT_INV_Add7~93_sumout\,
	combout => \capacity~15_combout\);

-- Location: FF_X5_Y27_N3
\capacity[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~15_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(26));

-- Location: MLABCELL_X6_Y27_N38
\capacity~16\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~16_combout\ = (\Add7~89_sumout\ & \capacity~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~89_sumout\,
	datad => \ALT_INV_capacity~11_combout\,
	combout => \capacity~16_combout\);

-- Location: FF_X6_Y27_N39
\capacity[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~16_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(25));

-- Location: LABCELL_X5_Y27_N12
\capacity~17\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~17_combout\ = ( \capacity~11_combout\ & ( \Add7~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_capacity~11_combout\,
	dataf => \ALT_INV_Add7~85_sumout\,
	combout => \capacity~17_combout\);

-- Location: FF_X5_Y27_N13
\capacity[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~17_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(24));

-- Location: LABCELL_X5_Y27_N10
\capacity~18\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~18_combout\ = ( \capacity~11_combout\ & ( \Add7~81_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_capacity~11_combout\,
	dataf => \ALT_INV_Add7~81_sumout\,
	combout => \capacity~18_combout\);

-- Location: FF_X5_Y27_N11
\capacity[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~18_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(23));

-- Location: MLABCELL_X6_Y27_N24
\capacity~19\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~19_combout\ = ( \Equal1~4_combout\ & ( (\LessThan6~1_combout\ & (\LessThan6~0_combout\ & \Add7~77_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datab => \ALT_INV_LessThan6~0_combout\,
	datac => \ALT_INV_Add7~77_sumout\,
	dataf => \ALT_INV_Equal1~4_combout\,
	combout => \capacity~19_combout\);

-- Location: FF_X6_Y27_N25
\capacity[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~19_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(22));

-- Location: MLABCELL_X6_Y27_N36
\capacity~20\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~20_combout\ = ( \Add7~73_sumout\ & ( (\LessThan6~1_combout\ & (\LessThan6~0_combout\ & \Equal1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datab => \ALT_INV_LessThan6~0_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Add7~73_sumout\,
	combout => \capacity~20_combout\);

-- Location: FF_X6_Y27_N37
\capacity[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~20_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(21));

-- Location: LABCELL_X5_Y27_N20
\capacity~21\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~21_combout\ = ( \LessThan6~1_combout\ & ( \Add7~69_sumout\ & ( (\Equal1~4_combout\ & \LessThan6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_LessThan6~0_combout\,
	datae => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~69_sumout\,
	combout => \capacity~21_combout\);

-- Location: FF_X5_Y27_N21
\capacity[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~21_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(20));

-- Location: LABCELL_X5_Y27_N26
\capacity~22\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~22_combout\ = ( \Add7~65_sumout\ & ( (\Equal1~4_combout\ & (\LessThan6~0_combout\ & \LessThan6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~65_sumout\,
	combout => \capacity~22_combout\);

-- Location: FF_X5_Y27_N27
\capacity[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~22_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(19));

-- Location: LABCELL_X5_Y27_N30
\capacity~23\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~23_combout\ = ( \Add7~61_sumout\ & ( (\LessThan6~0_combout\ & (\LessThan6~1_combout\ & \Equal1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datac => \ALT_INV_LessThan6~1_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Add7~61_sumout\,
	combout => \capacity~23_combout\);

-- Location: FF_X5_Y27_N31
\capacity[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~23_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(18));

-- Location: LABCELL_X5_Y27_N34
\capacity~24\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~24_combout\ = ( \Add7~57_sumout\ & ( (\LessThan6~0_combout\ & (\LessThan6~1_combout\ & \Equal1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datac => \ALT_INV_LessThan6~1_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Add7~57_sumout\,
	combout => \capacity~24_combout\);

-- Location: FF_X5_Y27_N35
\capacity[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~24_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(17));

-- Location: LABCELL_X5_Y27_N38
\capacity~25DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~25DUPLICATE_combout\ = ( \LessThan6~1_combout\ & ( \Add7~53_sumout\ & ( (\Equal1~4_combout\ & \LessThan6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_LessThan6~0_combout\,
	datae => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~53_sumout\,
	combout => \capacity~25DUPLICATE_combout\);

-- Location: FF_X5_Y27_N39
\capacity[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~25DUPLICATE_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \capacity[16]~DUPLICATE_q\);

-- Location: MLABCELL_X6_Y27_N30
\capacity~26\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~26_combout\ = ( \Add7~49_sumout\ & ( (\LessThan6~1_combout\ & (\Equal1~4_combout\ & \LessThan6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_Add7~49_sumout\,
	combout => \capacity~26_combout\);

-- Location: FF_X6_Y27_N31
\capacity[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~26_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(15));

-- Location: LABCELL_X5_Y27_N16
\capacity~27\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~27_combout\ = ( \LessThan6~1_combout\ & ( \Add7~45_sumout\ & ( (\LessThan6~0_combout\ & \Equal1~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan6~0_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	datae => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~45_sumout\,
	combout => \capacity~27_combout\);

-- Location: FF_X5_Y27_N17
\capacity[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~27_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(14));

-- Location: MLABCELL_X6_Y27_N34
\capacity~28\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~28_combout\ = ( \Add7~41_sumout\ & ( (\LessThan6~1_combout\ & (\LessThan6~0_combout\ & \Equal1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Add7~41_sumout\,
	combout => \capacity~28_combout\);

-- Location: FF_X6_Y27_N35
\capacity[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~28_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(13));

-- Location: LABCELL_X7_Y28_N16
\capacity~29\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~29_combout\ = ( \Add7~37_sumout\ & ( (\LessThan6~0_combout\ & (\Equal1~4_combout\ & \LessThan6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~37_sumout\,
	combout => \capacity~29_combout\);

-- Location: FF_X7_Y28_N17
\capacity[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~29_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(12));

-- Location: LABCELL_X7_Y28_N6
\capacity~30\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~30_combout\ = ( \Add7~33_sumout\ & ( (\LessThan6~0_combout\ & (\Equal1~4_combout\ & \LessThan6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~33_sumout\,
	combout => \capacity~30_combout\);

-- Location: FF_X7_Y28_N7
\capacity[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~30_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(11));

-- Location: LABCELL_X7_Y28_N8
\capacity~10\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~10_combout\ = ( \LessThan6~1_combout\ & ( (\Equal1~4_combout\ & (\LessThan6~0_combout\ & \Add7~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => \ALT_INV_Add7~29_sumout\,
	dataf => \ALT_INV_LessThan6~1_combout\,
	combout => \capacity~10_combout\);

-- Location: FF_X7_Y28_N9
\capacity[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~10_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(10));

-- Location: LABCELL_X7_Y28_N12
\capacity~9\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~9_combout\ = ( \Add7~25_sumout\ & ( (\LessThan6~0_combout\ & (\Equal1~4_combout\ & \LessThan6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~25_sumout\,
	combout => \capacity~9_combout\);

-- Location: FF_X7_Y28_N13
\capacity[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~9_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(9));

-- Location: LABCELL_X7_Y28_N0
\capacity~8\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~8_combout\ = ( \Add7~21_sumout\ ) # ( !\Add7~21_sumout\ & ( (!\Equal1~4_combout\) # ((!\LessThan6~1_combout\) # (!\LessThan6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_LessThan6~1_combout\,
	datac => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_Add7~21_sumout\,
	combout => \capacity~8_combout\);

-- Location: FF_X7_Y28_N1
\capacity[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~8_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(8));

-- Location: MLABCELL_X6_Y27_N14
\Add3~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( capacity(28) ) + ( \Add12~41_sumout\ ) + ( \Add3~106\ ))
-- \Add3~110\ = CARRY(( capacity(28) ) + ( \Add12~41_sumout\ ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(28),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~106\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: MLABCELL_X6_Y27_N12
\Add3~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( capacity(27) ) + ( \Add12~41_sumout\ ) + ( \Add3~102\ ))
-- \Add3~106\ = CARRY(( capacity(27) ) + ( \Add12~41_sumout\ ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(27),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~102\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: MLABCELL_X6_Y27_N16
\Add3~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( capacity(29) ) + ( \Add12~41_sumout\ ) + ( \Add3~110\ ))
-- \Add3~114\ = CARRY(( capacity(29) ) + ( \Add12~41_sumout\ ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(29),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~110\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: MLABCELL_X6_Y28_N26
\Add3~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( capacity(14) ) + ( \Add12~41_sumout\ ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( capacity(14) ) + ( \Add12~41_sumout\ ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(14),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: MLABCELL_X6_Y28_N18
\Add3~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( capacity(10) ) + ( \Add12~41_sumout\ ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( capacity(10) ) + ( \Add12~41_sumout\ ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(10),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: MLABCELL_X6_Y28_N24
\Add3~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( capacity(13) ) + ( \Add12~41_sumout\ ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( capacity(13) ) + ( \Add12~41_sumout\ ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(13),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: MLABCELL_X6_Y28_N20
\Add3~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( capacity(11) ) + ( \Add12~41_sumout\ ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( capacity(11) ) + ( \Add12~41_sumout\ ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(11),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: MLABCELL_X6_Y28_N22
\Add3~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( capacity(12) ) + ( \Add12~41_sumout\ ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( capacity(12) ) + ( \Add12~41_sumout\ ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(12),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: LABCELL_X5_Y28_N24
\LessThan0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( !\Add3~41_sumout\ & ( !\Add3~45_sumout\ & ( (!\Add3~53_sumout\ & (!\Add3~37_sumout\ & !\Add3~49_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~53_sumout\,
	datac => \ALT_INV_Add3~37_sumout\,
	datad => \ALT_INV_Add3~49_sumout\,
	datae => \ALT_INV_Add3~41_sumout\,
	dataf => \ALT_INV_Add3~45_sumout\,
	combout => \LessThan0~3_combout\);

-- Location: MLABCELL_X6_Y28_N28
\Add3~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( capacity(15) ) + ( \Add12~41_sumout\ ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( capacity(15) ) + ( \Add12~41_sumout\ ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(15),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: MLABCELL_X6_Y27_N8
\Add3~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( capacity(25) ) + ( \Add12~41_sumout\ ) + ( \Add3~94\ ))
-- \Add3~98\ = CARRY(( capacity(25) ) + ( \Add12~41_sumout\ ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(25),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~94\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: MLABCELL_X6_Y27_N10
\Add3~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( capacity(26) ) + ( \Add12~41_sumout\ ) + ( \Add3~98\ ))
-- \Add3~102\ = CARRY(( capacity(26) ) + ( \Add12~41_sumout\ ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(26),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~98\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: MLABCELL_X6_Y27_N6
\Add3~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( capacity(24) ) + ( \Add12~41_sumout\ ) + ( \Add3~90\ ))
-- \Add3~94\ = CARRY(( capacity(24) ) + ( \Add12~41_sumout\ ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(24),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~90\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: LABCELL_X2_Y28_N34
\LessThan0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !\Add3~93_sumout\ & ( (\LessThan0~3_combout\ & (!\Add3~57_sumout\ & (!\Add3~97_sumout\ & !\Add3~101_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_Add3~57_sumout\,
	datac => \ALT_INV_Add3~97_sumout\,
	datad => \ALT_INV_Add3~101_sumout\,
	dataf => \ALT_INV_Add3~93_sumout\,
	combout => \LessThan0~4_combout\);

-- Location: MLABCELL_X6_Y28_N34
\Add3~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( capacity(18) ) + ( \Add12~41_sumout\ ) + ( \Add3~66\ ))
-- \Add3~70\ = CARRY(( capacity(18) ) + ( \Add12~41_sumout\ ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(18),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~66\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: MLABCELL_X6_Y28_N32
\Add3~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( capacity(17) ) + ( \Add12~41_sumout\ ) + ( \Add3~62\ ))
-- \Add3~66\ = CARRY(( capacity(17) ) + ( \Add12~41_sumout\ ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(17),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~62\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: MLABCELL_X6_Y28_N16
\Add3~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( capacity(9) ) + ( \Add12~37_sumout\ ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( capacity(9) ) + ( \Add12~37_sumout\ ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(9),
	dataf => \ALT_INV_Add12~37_sumout\,
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: MLABCELL_X6_Y28_N30
\Add3~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( \capacity[16]~DUPLICATE_q\ ) + ( \Add12~41_sumout\ ) + ( \Add3~58\ ))
-- \Add3~62\ = CARRY(( \capacity[16]~DUPLICATE_q\ ) + ( \Add12~41_sumout\ ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_capacity[16]~DUPLICATE_q\,
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: LABCELL_X5_Y28_N0
\Add12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~1_sumout\ = SUM(( !number_of_exited_uni_cars(0) $ (!number_of_entered_uni_cars(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add12~2\ = CARRY(( !number_of_exited_uni_cars(0) $ (!number_of_entered_uni_cars(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add12~3\ = SHARE((!number_of_exited_uni_cars(0)) # (number_of_entered_uni_cars(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(0),
	datad => ALT_INV_number_of_entered_uni_cars(0),
	cin => GND,
	sharein => GND,
	sumout => \Add12~1_sumout\,
	cout => \Add12~2\,
	shareout => \Add12~3\);

-- Location: LABCELL_X5_Y28_N2
\Add12~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~5_sumout\ = SUM(( !number_of_exited_uni_cars(1) $ (number_of_entered_uni_cars(1)) ) + ( \Add12~3\ ) + ( \Add12~2\ ))
-- \Add12~6\ = CARRY(( !number_of_exited_uni_cars(1) $ (number_of_entered_uni_cars(1)) ) + ( \Add12~3\ ) + ( \Add12~2\ ))
-- \Add12~7\ = SHARE((!number_of_exited_uni_cars(1) & number_of_entered_uni_cars(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(1),
	datad => ALT_INV_number_of_entered_uni_cars(1),
	cin => \Add12~2\,
	sharein => \Add12~3\,
	sumout => \Add12~5_sumout\,
	cout => \Add12~6\,
	shareout => \Add12~7\);

-- Location: LABCELL_X5_Y28_N4
\Add12~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~9_sumout\ = SUM(( !number_of_exited_uni_cars(2) $ (number_of_entered_uni_cars(2)) ) + ( \Add12~7\ ) + ( \Add12~6\ ))
-- \Add12~10\ = CARRY(( !number_of_exited_uni_cars(2) $ (number_of_entered_uni_cars(2)) ) + ( \Add12~7\ ) + ( \Add12~6\ ))
-- \Add12~11\ = SHARE((!number_of_exited_uni_cars(2) & number_of_entered_uni_cars(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(2),
	datad => ALT_INV_number_of_entered_uni_cars(2),
	cin => \Add12~6\,
	sharein => \Add12~7\,
	sumout => \Add12~9_sumout\,
	cout => \Add12~10\,
	shareout => \Add12~11\);

-- Location: LABCELL_X5_Y28_N6
\Add12~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~13_sumout\ = SUM(( !number_of_entered_uni_cars(3) $ (number_of_exited_uni_cars(3)) ) + ( \Add12~11\ ) + ( \Add12~10\ ))
-- \Add12~14\ = CARRY(( !number_of_entered_uni_cars(3) $ (number_of_exited_uni_cars(3)) ) + ( \Add12~11\ ) + ( \Add12~10\ ))
-- \Add12~15\ = SHARE((number_of_entered_uni_cars(3) & !number_of_exited_uni_cars(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(3),
	datad => ALT_INV_number_of_exited_uni_cars(3),
	cin => \Add12~10\,
	sharein => \Add12~11\,
	sumout => \Add12~13_sumout\,
	cout => \Add12~14\,
	shareout => \Add12~15\);

-- Location: LABCELL_X5_Y28_N8
\Add12~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~17_sumout\ = SUM(( !number_of_exited_uni_cars(4) $ (number_of_entered_uni_cars(4)) ) + ( \Add12~15\ ) + ( \Add12~14\ ))
-- \Add12~18\ = CARRY(( !number_of_exited_uni_cars(4) $ (number_of_entered_uni_cars(4)) ) + ( \Add12~15\ ) + ( \Add12~14\ ))
-- \Add12~19\ = SHARE((!number_of_exited_uni_cars(4) & number_of_entered_uni_cars(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(4),
	datad => ALT_INV_number_of_entered_uni_cars(4),
	cin => \Add12~14\,
	sharein => \Add12~15\,
	sumout => \Add12~17_sumout\,
	cout => \Add12~18\,
	shareout => \Add12~19\);

-- Location: LABCELL_X5_Y28_N10
\Add12~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~21_sumout\ = SUM(( !number_of_entered_uni_cars(5) $ (number_of_exited_uni_cars(5)) ) + ( \Add12~19\ ) + ( \Add12~18\ ))
-- \Add12~22\ = CARRY(( !number_of_entered_uni_cars(5) $ (number_of_exited_uni_cars(5)) ) + ( \Add12~19\ ) + ( \Add12~18\ ))
-- \Add12~23\ = SHARE((number_of_entered_uni_cars(5) & !number_of_exited_uni_cars(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(5),
	datad => ALT_INV_number_of_exited_uni_cars(5),
	cin => \Add12~18\,
	sharein => \Add12~19\,
	sumout => \Add12~21_sumout\,
	cout => \Add12~22\,
	shareout => \Add12~23\);

-- Location: LABCELL_X5_Y28_N12
\Add12~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~25_sumout\ = SUM(( !number_of_exited_uni_cars(6) $ (number_of_entered_uni_cars(6)) ) + ( \Add12~23\ ) + ( \Add12~22\ ))
-- \Add12~26\ = CARRY(( !number_of_exited_uni_cars(6) $ (number_of_entered_uni_cars(6)) ) + ( \Add12~23\ ) + ( \Add12~22\ ))
-- \Add12~27\ = SHARE((!number_of_exited_uni_cars(6) & number_of_entered_uni_cars(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(6),
	datad => ALT_INV_number_of_entered_uni_cars(6),
	cin => \Add12~22\,
	sharein => \Add12~23\,
	sumout => \Add12~25_sumout\,
	cout => \Add12~26\,
	shareout => \Add12~27\);

-- Location: MLABCELL_X9_Y28_N22
\LessThan6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = ( !hour(29) & ( !hour(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(28),
	dataf => ALT_INV_hour(29),
	combout => \LessThan6~2_combout\);

-- Location: LABCELL_X7_Y28_N10
\capacity~6\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~6_combout\ = ( \LessThan6~2_combout\ & ( (!\LessThan6~0_combout\) # ((!\Equal1~4_combout\) # ((!\LessThan6~1_combout\) # (\Add7~13_sumout\))) ) ) # ( !\LessThan6~2_combout\ & ( (!\LessThan6~0_combout\) # ((!\Equal1~4_combout\) # 
-- (\Add7~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111101111111011111110111111111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_LessThan6~2_combout\,
	combout => \capacity~6_combout\);

-- Location: FF_X7_Y28_N11
\capacity[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(6));

-- Location: LABCELL_X7_Y28_N4
\capacity~5\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~5_combout\ = ( \Add7~9_sumout\ ) # ( !\Add7~9_sumout\ & ( (!\Equal1~4_combout\) # ((!\LessThan6~0_combout\) # (!\LessThan6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100111111111111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~9_sumout\,
	combout => \capacity~5_combout\);

-- Location: FF_X7_Y28_N5
\capacity[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~5_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(5));

-- Location: LABCELL_X7_Y28_N18
\capacity~4\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~4_combout\ = ( \Add7~5_sumout\ ) # ( !\Add7~5_sumout\ & ( (!\LessThan6~0_combout\) # ((!\Equal1~4_combout\) # (!\LessThan6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~5_sumout\,
	combout => \capacity~4_combout\);

-- Location: FF_X7_Y28_N19
\capacity[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~4_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(4));

-- Location: MLABCELL_X9_Y28_N20
\capacity~2\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~2_combout\ = (!hour(30) & !hour(31))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(30),
	datac => ALT_INV_hour(31),
	combout => \capacity~2_combout\);

-- Location: LABCELL_X5_Y28_N36
\capacity~3\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~3_combout\ = ( \capacity~2_combout\ & ( \LessThan6~0_combout\ & ( (\LessThan6~2_combout\ & ((!\LessThan6~1_combout\ & (!\LessThan4~0_combout\)) # (\LessThan6~1_combout\ & ((\Add7~1_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~2_combout\,
	datab => \ALT_INV_LessThan4~0_combout\,
	datac => \ALT_INV_LessThan6~1_combout\,
	datad => \ALT_INV_Add7~1_sumout\,
	datae => \ALT_INV_capacity~2_combout\,
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \capacity~3_combout\);

-- Location: FF_X6_Y28_N19
\capacity[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \capacity~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(3));

-- Location: MLABCELL_X9_Y28_N24
\capacity~1\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~1_combout\ = ( \Equal1~4_combout\ & ( ((!\LessThan6~1_combout\) # (!\LessThan6~0_combout\)) # (hour(1)) ) ) # ( !\Equal1~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(1),
	datab => \ALT_INV_LessThan6~1_combout\,
	datac => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_Equal1~4_combout\,
	combout => \capacity~1_combout\);

-- Location: FF_X6_Y28_N5
\capacity[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \capacity~1_combout\,
	sclr => \always0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(2));

-- Location: MLABCELL_X9_Y28_N32
\capacity~0\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~0_combout\ = ( \Equal1~4_combout\ & ( (hour(0) & (\LessThan6~0_combout\ & \LessThan6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(0),
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Equal1~4_combout\,
	combout => \capacity~0_combout\);

-- Location: FF_X6_Y28_N17
\capacity[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \capacity~0_combout\,
	sclr => \always0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(1));

-- Location: MLABCELL_X6_Y28_N0
\Add3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~2_cout\ = CARRY(( capacity(1) ) + ( \Add12~5_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(1),
	dataf => \ALT_INV_Add12~5_sumout\,
	cin => GND,
	cout => \Add3~2_cout\);

-- Location: MLABCELL_X6_Y28_N2
\Add3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \Add12~9_sumout\ ) + ( capacity(2) ) + ( \Add3~2_cout\ ))
-- \Add3~6\ = CARRY(( \Add12~9_sumout\ ) + ( capacity(2) ) + ( \Add3~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add12~9_sumout\,
	dataf => ALT_INV_capacity(2),
	cin => \Add3~2_cout\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: MLABCELL_X6_Y28_N4
\Add3~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \Add12~13_sumout\ ) + ( capacity(3) ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \Add12~13_sumout\ ) + ( capacity(3) ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(3),
	datad => \ALT_INV_Add12~13_sumout\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: MLABCELL_X6_Y28_N6
\Add3~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \Add12~17_sumout\ ) + ( capacity(4) ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( \Add12~17_sumout\ ) + ( capacity(4) ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(4),
	datad => \ALT_INV_Add12~17_sumout\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: MLABCELL_X6_Y28_N8
\Add3~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \Add12~21_sumout\ ) + ( capacity(5) ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \Add12~21_sumout\ ) + ( capacity(5) ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add12~21_sumout\,
	dataf => ALT_INV_capacity(5),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X6_Y28_N10
\Add3~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \Add12~25_sumout\ ) + ( capacity(6) ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \Add12~25_sumout\ ) + ( capacity(6) ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add12~25_sumout\,
	dataf => ALT_INV_capacity(6),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X7_Y28_N14
\capacity~7\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~7_combout\ = ( \Add7~17_sumout\ ) # ( !\Add7~17_sumout\ & ( (!\LessThan6~0_combout\) # ((!\Equal1~4_combout\) # ((\LessThan6~2_combout\ & !\LessThan6~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111101110111011111110111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~0_combout\,
	datab => \ALT_INV_Equal1~4_combout\,
	datac => \ALT_INV_LessThan6~2_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~17_sumout\,
	combout => \capacity~7_combout\);

-- Location: FF_X7_Y28_N15
\capacity[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(7));

-- Location: LABCELL_X5_Y28_N14
\Add12~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~29_sumout\ = SUM(( !number_of_exited_uni_cars(7) $ (number_of_entered_uni_cars(7)) ) + ( \Add12~27\ ) + ( \Add12~26\ ))
-- \Add12~30\ = CARRY(( !number_of_exited_uni_cars(7) $ (number_of_entered_uni_cars(7)) ) + ( \Add12~27\ ) + ( \Add12~26\ ))
-- \Add12~31\ = SHARE((!number_of_exited_uni_cars(7) & number_of_entered_uni_cars(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(7),
	datad => ALT_INV_number_of_entered_uni_cars(7),
	cin => \Add12~26\,
	sharein => \Add12~27\,
	sumout => \Add12~29_sumout\,
	cout => \Add12~30\,
	shareout => \Add12~31\);

-- Location: MLABCELL_X6_Y28_N12
\Add3~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( capacity(7) ) + ( \Add12~29_sumout\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( capacity(7) ) + ( \Add12~29_sumout\ ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(7),
	dataf => \ALT_INV_Add12~29_sumout\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: MLABCELL_X6_Y28_N14
\Add3~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( capacity(8) ) + ( \Add12~33_sumout\ ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( capacity(8) ) + ( \Add12~33_sumout\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(8),
	dataf => \ALT_INV_Add12~33_sumout\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X2_Y28_N32
\LessThan0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \Add3~5_sumout\ & ( \Add3~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add3~9_sumout\,
	dataf => \ALT_INV_Add3~5_sumout\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X2_Y28_N36
\LessThan0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \Add3~25_sumout\ & ( \LessThan0~7_combout\ & ( (!\Add3~21_sumout\ & (!\Add3~29_sumout\ & ((!\Add3~13_sumout\) # (!\Add3~17_sumout\)))) ) ) ) # ( !\Add3~25_sumout\ & ( \LessThan0~7_combout\ & ( !\Add3~29_sumout\ ) ) ) # ( 
-- \Add3~25_sumout\ & ( !\LessThan0~7_combout\ & ( (!\Add3~21_sumout\ & !\Add3~29_sumout\) ) ) ) # ( !\Add3~25_sumout\ & ( !\LessThan0~7_combout\ & ( !\Add3~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010100000000011111111000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~21_sumout\,
	datab => \ALT_INV_Add3~13_sumout\,
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_Add3~29_sumout\,
	datae => \ALT_INV_Add3~25_sumout\,
	dataf => \ALT_INV_LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: MLABCELL_X6_Y27_N4
\Add3~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( capacity(23) ) + ( \Add12~41_sumout\ ) + ( \Add3~86\ ))
-- \Add3~90\ = CARRY(( capacity(23) ) + ( \Add12~41_sumout\ ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(23),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~86\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: LABCELL_X2_Y28_N26
\LessThan0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \LessThan0~8_combout\ & ( !\Add3~89_sumout\ & ( (!\Add3~69_sumout\ & (!\Add3~65_sumout\ & !\Add3~61_sumout\)) ) ) ) # ( !\LessThan0~8_combout\ & ( !\Add3~89_sumout\ & ( (!\Add3~69_sumout\ & (!\Add3~65_sumout\ & (!\Add3~33_sumout\ 
-- & !\Add3~61_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~69_sumout\,
	datab => \ALT_INV_Add3~65_sumout\,
	datac => \ALT_INV_Add3~33_sumout\,
	datad => \ALT_INV_Add3~61_sumout\,
	datae => \ALT_INV_LessThan0~8_combout\,
	dataf => \ALT_INV_Add3~89_sumout\,
	combout => \LessThan0~9_combout\);

-- Location: MLABCELL_X6_Y27_N0
\Add3~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( capacity(21) ) + ( \Add12~41_sumout\ ) + ( \Add3~78\ ))
-- \Add3~82\ = CARRY(( capacity(21) ) + ( \Add12~41_sumout\ ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(21),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~78\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: MLABCELL_X6_Y27_N2
\Add3~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( capacity(22) ) + ( \Add12~41_sumout\ ) + ( \Add3~82\ ))
-- \Add3~86\ = CARRY(( capacity(22) ) + ( \Add12~41_sumout\ ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(22),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~82\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: MLABCELL_X6_Y28_N38
\Add3~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( capacity(20) ) + ( \Add12~41_sumout\ ) + ( \Add3~74\ ))
-- \Add3~78\ = CARRY(( capacity(20) ) + ( \Add12~41_sumout\ ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(20),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~74\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: MLABCELL_X6_Y28_N36
\Add3~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( capacity(19) ) + ( \Add12~41_sumout\ ) + ( \Add3~70\ ))
-- \Add3~74\ = CARRY(( capacity(19) ) + ( \Add12~41_sumout\ ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(19),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~70\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: LABCELL_X5_Y27_N6
\LessThan0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( !\Add3~77_sumout\ & ( !\Add3~73_sumout\ & ( (!\Add3~81_sumout\ & !\Add3~85_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add3~81_sumout\,
	datad => \ALT_INV_Add3~85_sumout\,
	datae => \ALT_INV_Add3~77_sumout\,
	dataf => \ALT_INV_Add3~73_sumout\,
	combout => \LessThan0~10_combout\);

-- Location: LABCELL_X2_Y28_N28
\LessThan0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( \LessThan0~9_combout\ & ( \LessThan0~10_combout\ & ( (!\Add3~109_sumout\ & (!\Add3~105_sumout\ & (!\Add3~113_sumout\ & \LessThan0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~109_sumout\,
	datab => \ALT_INV_Add3~105_sumout\,
	datac => \ALT_INV_Add3~113_sumout\,
	datad => \ALT_INV_LessThan0~4_combout\,
	datae => \ALT_INV_LessThan0~9_combout\,
	dataf => \ALT_INV_LessThan0~10_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X7_Y27_N36
\Add7~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~113_sumout\ = SUM(( \Mult0|auto_generated|mac_out5~DATAOUT64\ ) + ( GND ) + ( \Add7~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|ALT_INV_mac_out5~DATAOUT64\,
	cin => \Add7~110\,
	sumout => \Add7~113_sumout\);

-- Location: LABCELL_X7_Y27_N38
\capacity~32\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~32_combout\ = ( \Add7~113_sumout\ & ( \capacity~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_capacity~11_combout\,
	dataf => \ALT_INV_Add7~113_sumout\,
	combout => \capacity~32_combout\);

-- Location: FF_X7_Y27_N39
\capacity[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~32_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(31));

-- Location: MLABCELL_X6_Y27_N18
\Add3~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( capacity(30) ) + ( \Add12~41_sumout\ ) + ( \Add3~114\ ))
-- \Add3~118\ = CARRY(( capacity(30) ) + ( \Add12~41_sumout\ ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(30),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~114\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: MLABCELL_X6_Y27_N20
\Add3~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( capacity(31) ) + ( \Add12~41_sumout\ ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(31),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add3~118\,
	sumout => \Add3~121_sumout\);

-- Location: LABCELL_X2_Y28_N0
\Add8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( number_of_entered_uni_cars(0) ) + ( (\is_uni_car_entered~input_o\ & (((!\Add3~117_sumout\ & \LessThan0~11_combout\)) # (\Add3~121_sumout\))) ) + ( !VCC ))
-- \Add8~2\ = CARRY(( number_of_entered_uni_cars(0) ) + ( (\is_uni_car_entered~input_o\ & (((!\Add3~117_sumout\ & \LessThan0~11_combout\)) # (\Add3~121_sumout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_entered~input_o\,
	datab => \ALT_INV_Add3~117_sumout\,
	datac => \ALT_INV_LessThan0~11_combout\,
	datad => ALT_INV_number_of_entered_uni_cars(0),
	dataf => \ALT_INV_Add3~121_sumout\,
	cin => GND,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: FF_X2_Y28_N1
\number_of_entered_uni_cars[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(0));

-- Location: LABCELL_X5_Y28_N16
\Add12~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~33_sumout\ = SUM(( !number_of_entered_uni_cars(8) $ (number_of_exited_uni_cars(8)) ) + ( \Add12~31\ ) + ( \Add12~30\ ))
-- \Add12~34\ = CARRY(( !number_of_entered_uni_cars(8) $ (number_of_exited_uni_cars(8)) ) + ( \Add12~31\ ) + ( \Add12~30\ ))
-- \Add12~35\ = SHARE((number_of_entered_uni_cars(8) & !number_of_exited_uni_cars(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_uni_cars(8),
	datad => ALT_INV_number_of_exited_uni_cars(8),
	cin => \Add12~30\,
	sharein => \Add12~31\,
	sumout => \Add12~33_sumout\,
	cout => \Add12~34\,
	shareout => \Add12~35\);

-- Location: LABCELL_X2_Y28_N2
\Add8~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( number_of_entered_uni_cars(1) ) + ( GND ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( number_of_entered_uni_cars(1) ) + ( GND ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(1),
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: FF_X2_Y28_N3
\number_of_entered_uni_cars[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(1));

-- Location: LABCELL_X2_Y28_N4
\Add8~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( number_of_entered_uni_cars(2) ) + ( GND ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( number_of_entered_uni_cars(2) ) + ( GND ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(2),
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: FF_X2_Y28_N5
\number_of_entered_uni_cars[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(2));

-- Location: LABCELL_X2_Y28_N6
\Add8~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( number_of_entered_uni_cars(3) ) + ( GND ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( number_of_entered_uni_cars(3) ) + ( GND ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(3),
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: FF_X2_Y28_N7
\number_of_entered_uni_cars[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(3));

-- Location: LABCELL_X2_Y28_N8
\Add8~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( number_of_entered_uni_cars(4) ) + ( GND ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( number_of_entered_uni_cars(4) ) + ( GND ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(4),
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: FF_X2_Y28_N9
\number_of_entered_uni_cars[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(4));

-- Location: LABCELL_X2_Y28_N10
\Add8~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( number_of_entered_uni_cars(5) ) + ( GND ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( number_of_entered_uni_cars(5) ) + ( GND ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(5),
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: FF_X2_Y28_N11
\number_of_entered_uni_cars[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(5));

-- Location: LABCELL_X2_Y28_N12
\Add8~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( number_of_entered_uni_cars(6) ) + ( GND ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( number_of_entered_uni_cars(6) ) + ( GND ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(6),
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: FF_X2_Y28_N13
\number_of_entered_uni_cars[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(6));

-- Location: LABCELL_X2_Y28_N14
\Add8~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( number_of_entered_uni_cars(7) ) + ( GND ) + ( \Add8~26\ ))
-- \Add8~30\ = CARRY(( number_of_entered_uni_cars(7) ) + ( GND ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(7),
	cin => \Add8~26\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: FF_X2_Y28_N15
\number_of_entered_uni_cars[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(7));

-- Location: LABCELL_X2_Y28_N16
\Add8~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( number_of_entered_uni_cars(8) ) + ( GND ) + ( \Add8~30\ ))
-- \Add8~34\ = CARRY(( number_of_entered_uni_cars(8) ) + ( GND ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(8),
	cin => \Add8~30\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: FF_X2_Y28_N17
\number_of_entered_uni_cars[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(8));

-- Location: LABCELL_X2_Y28_N18
\Add8~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( number_of_entered_uni_cars(9) ) + ( GND ) + ( \Add8~34\ ))
-- \Add8~38\ = CARRY(( number_of_entered_uni_cars(9) ) + ( GND ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(9),
	cin => \Add8~34\,
	sumout => \Add8~37_sumout\,
	cout => \Add8~38\);

-- Location: FF_X2_Y28_N19
\number_of_entered_uni_cars[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(9));

-- Location: LABCELL_X5_Y28_N18
\Add12~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~37_sumout\ = SUM(( !number_of_exited_uni_cars(9) $ (number_of_entered_uni_cars(9)) ) + ( \Add12~35\ ) + ( \Add12~34\ ))
-- \Add12~38\ = CARRY(( !number_of_exited_uni_cars(9) $ (number_of_entered_uni_cars(9)) ) + ( \Add12~35\ ) + ( \Add12~34\ ))
-- \Add12~39\ = SHARE((!number_of_exited_uni_cars(9) & number_of_entered_uni_cars(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(9),
	datad => ALT_INV_number_of_entered_uni_cars(9),
	cin => \Add12~34\,
	sharein => \Add12~35\,
	sumout => \Add12~37_sumout\,
	cout => \Add12~38\,
	shareout => \Add12~39\);

-- Location: LABCELL_X5_Y28_N28
\LessThan8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = ( !\Add12~9_sumout\ & ( !\Add12~13_sumout\ & ( (!\Add12~1_sumout\ & !\Add12~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~1_sumout\,
	datad => \ALT_INV_Add12~5_sumout\,
	datae => \ALT_INV_Add12~9_sumout\,
	dataf => \ALT_INV_Add12~13_sumout\,
	combout => \LessThan8~0_combout\);

-- Location: LABCELL_X5_Y28_N32
\LessThan8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = ( \Add12~21_sumout\ & ( \LessThan8~0_combout\ ) ) # ( !\Add12~21_sumout\ & ( \LessThan8~0_combout\ & ( (((\Add12~29_sumout\) # (\Add12~25_sumout\)) # (\Add12~33_sumout\)) # (\Add12~17_sumout\) ) ) ) # ( \Add12~21_sumout\ & ( 
-- !\LessThan8~0_combout\ ) ) # ( !\Add12~21_sumout\ & ( !\LessThan8~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~17_sumout\,
	datab => \ALT_INV_Add12~33_sumout\,
	datac => \ALT_INV_Add12~25_sumout\,
	datad => \ALT_INV_Add12~29_sumout\,
	datae => \ALT_INV_Add12~21_sumout\,
	dataf => \ALT_INV_LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: MLABCELL_X4_Y28_N0
\Add10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( number_of_exited_uni_cars(0) ) + ( (\is_uni_car_exited~input_o\ & (!\Add12~41_sumout\ & ((\LessThan8~1_combout\) # (\Add12~37_sumout\)))) ) + ( !VCC ))
-- \Add10~2\ = CARRY(( number_of_exited_uni_cars(0) ) + ( (\is_uni_car_exited~input_o\ & (!\Add12~41_sumout\ & ((\LessThan8~1_combout\) # (\Add12~37_sumout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_exited~input_o\,
	datab => \ALT_INV_Add12~41_sumout\,
	datac => \ALT_INV_Add12~37_sumout\,
	datad => ALT_INV_number_of_exited_uni_cars(0),
	dataf => \ALT_INV_LessThan8~1_combout\,
	cin => GND,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\);

-- Location: MLABCELL_X4_Y28_N2
\Add10~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( number_of_exited_uni_cars(1) ) + ( GND ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( number_of_exited_uni_cars(1) ) + ( GND ) + ( \Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(1),
	cin => \Add10~2\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\);

-- Location: FF_X4_Y28_N3
\number_of_exited_uni_cars[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(1));

-- Location: MLABCELL_X4_Y28_N4
\Add10~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( number_of_exited_uni_cars(2) ) + ( GND ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( number_of_exited_uni_cars(2) ) + ( GND ) + ( \Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(2),
	cin => \Add10~6\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\);

-- Location: FF_X4_Y28_N5
\number_of_exited_uni_cars[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(2));

-- Location: MLABCELL_X4_Y28_N6
\Add10~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( number_of_exited_uni_cars(3) ) + ( GND ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( number_of_exited_uni_cars(3) ) + ( GND ) + ( \Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(3),
	cin => \Add10~10\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\);

-- Location: FF_X4_Y28_N7
\number_of_exited_uni_cars[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(3));

-- Location: MLABCELL_X4_Y28_N8
\Add10~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( number_of_exited_uni_cars(4) ) + ( GND ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( number_of_exited_uni_cars(4) ) + ( GND ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(4),
	cin => \Add10~14\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\);

-- Location: FF_X4_Y28_N9
\number_of_exited_uni_cars[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(4));

-- Location: MLABCELL_X4_Y28_N10
\Add10~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( number_of_exited_uni_cars(5) ) + ( GND ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( number_of_exited_uni_cars(5) ) + ( GND ) + ( \Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(5),
	cin => \Add10~18\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\);

-- Location: FF_X4_Y28_N11
\number_of_exited_uni_cars[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(5));

-- Location: MLABCELL_X4_Y28_N12
\Add10~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( number_of_exited_uni_cars(6) ) + ( GND ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( number_of_exited_uni_cars(6) ) + ( GND ) + ( \Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(6),
	cin => \Add10~22\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\);

-- Location: FF_X4_Y28_N13
\number_of_exited_uni_cars[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(6));

-- Location: MLABCELL_X4_Y28_N14
\Add10~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( number_of_exited_uni_cars(7) ) + ( GND ) + ( \Add10~26\ ))
-- \Add10~30\ = CARRY(( number_of_exited_uni_cars(7) ) + ( GND ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(7),
	cin => \Add10~26\,
	sumout => \Add10~29_sumout\,
	cout => \Add10~30\);

-- Location: FF_X4_Y28_N15
\number_of_exited_uni_cars[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(7));

-- Location: MLABCELL_X4_Y28_N16
\Add10~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~33_sumout\ = SUM(( number_of_exited_uni_cars(8) ) + ( GND ) + ( \Add10~30\ ))
-- \Add10~34\ = CARRY(( number_of_exited_uni_cars(8) ) + ( GND ) + ( \Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(8),
	cin => \Add10~30\,
	sumout => \Add10~33_sumout\,
	cout => \Add10~34\);

-- Location: FF_X4_Y28_N17
\number_of_exited_uni_cars[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(8));

-- Location: MLABCELL_X4_Y28_N18
\Add10~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~37_sumout\ = SUM(( number_of_exited_uni_cars(9) ) + ( GND ) + ( \Add10~34\ ))
-- \Add10~38\ = CARRY(( number_of_exited_uni_cars(9) ) + ( GND ) + ( \Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(9),
	cin => \Add10~34\,
	sumout => \Add10~37_sumout\,
	cout => \Add10~38\);

-- Location: FF_X4_Y28_N19
\number_of_exited_uni_cars[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(9));

-- Location: MLABCELL_X4_Y28_N20
\Add10~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~41_sumout\ = SUM(( number_of_exited_uni_cars(10) ) + ( GND ) + ( \Add10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_uni_cars(10),
	cin => \Add10~38\,
	sumout => \Add10~41_sumout\);

-- Location: FF_X4_Y28_N21
\number_of_exited_uni_cars[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(10));

-- Location: LABCELL_X2_Y28_N20
\Add8~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~41_sumout\ = SUM(( number_of_entered_uni_cars(10) ) + ( GND ) + ( \Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_uni_cars(10),
	cin => \Add8~38\,
	sumout => \Add8~41_sumout\);

-- Location: FF_X2_Y28_N21
\number_of_entered_uni_cars[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add8~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_uni_cars(10));

-- Location: LABCELL_X5_Y28_N20
\Add12~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add12~41_sumout\ = SUM(( !number_of_exited_uni_cars(10) $ (number_of_entered_uni_cars(10)) ) + ( \Add12~39\ ) + ( \Add12~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_uni_cars(10),
	datad => ALT_INV_number_of_entered_uni_cars(10),
	cin => \Add12~38\,
	sharein => \Add12~39\,
	sumout => \Add12~41_sumout\);

-- Location: FF_X4_Y28_N1
\number_of_exited_uni_cars[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add10~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_uni_cars(0));

-- Location: MLABCELL_X9_Y27_N28
\LessThan1~22\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~22_combout\ = ( capacity(25) & ( (capacity(24) & (capacity(26) & capacity(23))) ) ) # ( !capacity(25) & ( (!capacity(24) & (!capacity(26) & !capacity(23))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_capacity(24),
	datac => ALT_INV_capacity(26),
	datad => ALT_INV_capacity(23),
	dataf => ALT_INV_capacity(25),
	combout => \LessThan1~22_combout\);

-- Location: LABCELL_X12_Y26_N4
\LessThan1~17\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~17_combout\ = ( capacity(23) & ( \Add13~41_sumout\ & ( (capacity(28) & (capacity(27) & (capacity(29) & \LessThan1~22_combout\))) ) ) ) # ( !capacity(23) & ( !\Add13~41_sumout\ & ( (!capacity(28) & (!capacity(27) & (!capacity(29) & 
-- \LessThan1~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(28),
	datab => ALT_INV_capacity(27),
	datac => ALT_INV_capacity(29),
	datad => \ALT_INV_LessThan1~22_combout\,
	datae => ALT_INV_capacity(23),
	dataf => \ALT_INV_Add13~41_sumout\,
	combout => \LessThan1~17_combout\);

-- Location: MLABCELL_X9_Y27_N24
\LessThan1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( !capacity(26) & ( !capacity(25) & ( (!capacity(23) & !capacity(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(23),
	datad => ALT_INV_capacity(24),
	datae => ALT_INV_capacity(26),
	dataf => ALT_INV_capacity(25),
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X10_Y27_N10
\LessThan1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( !capacity(27) & ( \LessThan1~0_combout\ & ( (!capacity(28) & !capacity(29)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(28),
	datad => ALT_INV_capacity(29),
	datae => ALT_INV_capacity(27),
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X10_Y26_N36
\LessThan1~14\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = ( !\Add13~37_sumout\ & ( capacity(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(9),
	dataf => \ALT_INV_Add13~37_sumout\,
	combout => \LessThan1~14_combout\);

-- Location: LABCELL_X5_Y27_N36
\capacity~25\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity~25_combout\ = ( \LessThan6~1_combout\ & ( \Add7~53_sumout\ & ( (\Equal1~4_combout\ & \LessThan6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_LessThan6~0_combout\,
	datae => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Add7~53_sumout\,
	combout => \capacity~25_combout\);

-- Location: FF_X5_Y27_N37
\capacity[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity~25_combout\,
	sclr => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity(16));

-- Location: LABCELL_X5_Y27_N32
\LessThan1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( !capacity(17) & ( (!capacity(16) & (!capacity(18) & !capacity(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_capacity(16),
	datac => ALT_INV_capacity(18),
	datad => ALT_INV_capacity(19),
	dataf => ALT_INV_capacity(17),
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X10_Y26_N22
\LessThan1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( !\Add13~41_sumout\ & ( ((!\LessThan1~2_combout\) # ((capacity(21)) # (capacity(22)))) # (capacity(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(20),
	datab => \ALT_INV_LessThan1~2_combout\,
	datac => ALT_INV_capacity(22),
	datad => ALT_INV_capacity(21),
	dataf => \ALT_INV_Add13~41_sumout\,
	combout => \LessThan1~3_combout\);

-- Location: LABCELL_X10_Y26_N0
\Add13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~1_sumout\ = SUM(( !number_of_exited_cars(0) $ (!number_of_entered_cars(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add13~2\ = CARRY(( !number_of_exited_cars(0) $ (!number_of_entered_cars(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add13~3\ = SHARE((!number_of_exited_cars(0)) # (number_of_entered_cars(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_cars(0),
	datad => ALT_INV_number_of_entered_cars(0),
	cin => GND,
	sharein => GND,
	sumout => \Add13~1_sumout\,
	cout => \Add13~2\,
	shareout => \Add13~3\);

-- Location: LABCELL_X10_Y26_N2
\Add13~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~5_sumout\ = SUM(( !number_of_exited_cars(1) $ (number_of_entered_cars(1)) ) + ( \Add13~3\ ) + ( \Add13~2\ ))
-- \Add13~6\ = CARRY(( !number_of_exited_cars(1) $ (number_of_entered_cars(1)) ) + ( \Add13~3\ ) + ( \Add13~2\ ))
-- \Add13~7\ = SHARE((!number_of_exited_cars(1) & number_of_entered_cars(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_cars(1),
	datad => ALT_INV_number_of_entered_cars(1),
	cin => \Add13~2\,
	sharein => \Add13~3\,
	sumout => \Add13~5_sumout\,
	cout => \Add13~6\,
	shareout => \Add13~7\);

-- Location: LABCELL_X10_Y26_N4
\Add13~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~9_sumout\ = SUM(( !number_of_exited_cars(2) $ (number_of_entered_cars(2)) ) + ( \Add13~7\ ) + ( \Add13~6\ ))
-- \Add13~10\ = CARRY(( !number_of_exited_cars(2) $ (number_of_entered_cars(2)) ) + ( \Add13~7\ ) + ( \Add13~6\ ))
-- \Add13~11\ = SHARE((!number_of_exited_cars(2) & number_of_entered_cars(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_cars(2),
	datad => ALT_INV_number_of_entered_cars(2),
	cin => \Add13~6\,
	sharein => \Add13~7\,
	sumout => \Add13~9_sumout\,
	cout => \Add13~10\,
	shareout => \Add13~11\);

-- Location: LABCELL_X10_Y26_N6
\Add13~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~13_sumout\ = SUM(( !number_of_entered_cars(3) $ (number_of_exited_cars(3)) ) + ( \Add13~11\ ) + ( \Add13~10\ ))
-- \Add13~14\ = CARRY(( !number_of_entered_cars(3) $ (number_of_exited_cars(3)) ) + ( \Add13~11\ ) + ( \Add13~10\ ))
-- \Add13~15\ = SHARE((number_of_entered_cars(3) & !number_of_exited_cars(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_cars(3),
	datad => ALT_INV_number_of_exited_cars(3),
	cin => \Add13~10\,
	sharein => \Add13~11\,
	sumout => \Add13~13_sumout\,
	cout => \Add13~14\,
	shareout => \Add13~15\);

-- Location: LABCELL_X10_Y26_N30
\LessThan1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = ( \Add13~9_sumout\ & ( \Add13~13_sumout\ & ( (capacity(2) & (capacity(3) & (!\Add13~5_sumout\ & capacity(1)))) ) ) ) # ( !\Add13~9_sumout\ & ( \Add13~13_sumout\ & ( (capacity(3) & (((!\Add13~5_sumout\ & capacity(1))) # 
-- (capacity(2)))) ) ) ) # ( \Add13~9_sumout\ & ( !\Add13~13_sumout\ & ( (capacity(2) & (!capacity(3) & (!\Add13~5_sumout\ & capacity(1)))) ) ) ) # ( !\Add13~9_sumout\ & ( !\Add13~13_sumout\ & ( (!capacity(3) & (((!\Add13~5_sumout\ & capacity(1))) # 
-- (capacity(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011000100000000000100000000010001001100010000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(2),
	datab => ALT_INV_capacity(3),
	datac => \ALT_INV_Add13~5_sumout\,
	datad => ALT_INV_capacity(1),
	datae => \ALT_INV_Add13~9_sumout\,
	dataf => \ALT_INV_Add13~13_sumout\,
	combout => \LessThan1~9_combout\);

-- Location: LABCELL_X10_Y26_N8
\Add13~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~17_sumout\ = SUM(( !number_of_exited_cars(4) $ (number_of_entered_cars(4)) ) + ( \Add13~15\ ) + ( \Add13~14\ ))
-- \Add13~18\ = CARRY(( !number_of_exited_cars(4) $ (number_of_entered_cars(4)) ) + ( \Add13~15\ ) + ( \Add13~14\ ))
-- \Add13~19\ = SHARE((!number_of_exited_cars(4) & number_of_entered_cars(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_cars(4),
	datad => ALT_INV_number_of_entered_cars(4),
	cin => \Add13~14\,
	sharein => \Add13~15\,
	sumout => \Add13~17_sumout\,
	cout => \Add13~18\,
	shareout => \Add13~19\);

-- Location: LABCELL_X10_Y26_N10
\Add13~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~21_sumout\ = SUM(( !number_of_entered_cars(5) $ (number_of_exited_cars(5)) ) + ( \Add13~19\ ) + ( \Add13~18\ ))
-- \Add13~22\ = CARRY(( !number_of_entered_cars(5) $ (number_of_exited_cars(5)) ) + ( \Add13~19\ ) + ( \Add13~18\ ))
-- \Add13~23\ = SHARE((number_of_entered_cars(5) & !number_of_exited_cars(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_cars(5),
	datad => ALT_INV_number_of_exited_cars(5),
	cin => \Add13~18\,
	sharein => \Add13~19\,
	sumout => \Add13~21_sumout\,
	cout => \Add13~22\,
	shareout => \Add13~23\);

-- Location: LABCELL_X10_Y26_N34
\LessThan1~10\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = ( \Add13~17_sumout\ & ( \Add13~21_sumout\ & ( (capacity(5) & (capacity(3) & (!\Add13~13_sumout\ & capacity(4)))) ) ) ) # ( !\Add13~17_sumout\ & ( \Add13~21_sumout\ & ( (capacity(5) & (((capacity(3) & !\Add13~13_sumout\)) # 
-- (capacity(4)))) ) ) ) # ( \Add13~17_sumout\ & ( !\Add13~21_sumout\ & ( ((capacity(3) & (!\Add13~13_sumout\ & capacity(4)))) # (capacity(5)) ) ) ) # ( !\Add13~17_sumout\ & ( !\Add13~21_sumout\ & ( (((capacity(3) & !\Add13~13_sumout\)) # (capacity(4))) # 
-- (capacity(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010111111111010101010111010100010000010101010000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(5),
	datab => ALT_INV_capacity(3),
	datac => \ALT_INV_Add13~13_sumout\,
	datad => ALT_INV_capacity(4),
	datae => \ALT_INV_Add13~17_sumout\,
	dataf => \ALT_INV_Add13~21_sumout\,
	combout => \LessThan1~10_combout\);

-- Location: LABCELL_X10_Y26_N24
\LessThan1~8\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = ( \Add13~21_sumout\ & ( (capacity(5) & (!capacity(4) $ (\Add13~17_sumout\))) ) ) # ( !\Add13~21_sumout\ & ( (!capacity(5) & (!capacity(4) $ (\Add13~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_capacity(4),
	datac => \ALT_INV_Add13~17_sumout\,
	datad => ALT_INV_capacity(5),
	dataf => \ALT_INV_Add13~21_sumout\,
	combout => \LessThan1~8_combout\);

-- Location: LABCELL_X10_Y26_N26
\LessThan1~7\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = ( \Add13~37_sumout\ & ( !capacity(9) ) ) # ( !\Add13~37_sumout\ & ( capacity(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(9),
	dataf => \ALT_INV_Add13~37_sumout\,
	combout => \LessThan1~7_combout\);

-- Location: LABCELL_X10_Y26_N12
\Add13~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~25_sumout\ = SUM(( !number_of_entered_cars(6) $ (number_of_exited_cars(6)) ) + ( \Add13~23\ ) + ( \Add13~22\ ))
-- \Add13~26\ = CARRY(( !number_of_entered_cars(6) $ (number_of_exited_cars(6)) ) + ( \Add13~23\ ) + ( \Add13~22\ ))
-- \Add13~27\ = SHARE((number_of_entered_cars(6) & !number_of_exited_cars(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_cars(6),
	datad => ALT_INV_number_of_exited_cars(6),
	cin => \Add13~22\,
	sharein => \Add13~23\,
	sumout => \Add13~25_sumout\,
	cout => \Add13~26\,
	shareout => \Add13~27\);

-- Location: LABCELL_X10_Y26_N14
\Add13~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~29_sumout\ = SUM(( !number_of_exited_cars(7) $ (number_of_entered_cars(7)) ) + ( \Add13~27\ ) + ( \Add13~26\ ))
-- \Add13~30\ = CARRY(( !number_of_exited_cars(7) $ (number_of_entered_cars(7)) ) + ( \Add13~27\ ) + ( \Add13~26\ ))
-- \Add13~31\ = SHARE((!number_of_exited_cars(7) & number_of_entered_cars(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_cars(7),
	datad => ALT_INV_number_of_entered_cars(7),
	cin => \Add13~26\,
	sharein => \Add13~27\,
	sumout => \Add13~29_sumout\,
	cout => \Add13~30\,
	shareout => \Add13~31\);

-- Location: LABCELL_X10_Y26_N16
\Add13~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~33_sumout\ = SUM(( !number_of_entered_cars(8) $ (number_of_exited_cars(8)) ) + ( \Add13~31\ ) + ( \Add13~30\ ))
-- \Add13~34\ = CARRY(( !number_of_entered_cars(8) $ (number_of_exited_cars(8)) ) + ( \Add13~31\ ) + ( \Add13~30\ ))
-- \Add13~35\ = SHARE((number_of_entered_cars(8) & !number_of_exited_cars(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_entered_cars(8),
	datad => ALT_INV_number_of_exited_cars(8),
	cin => \Add13~30\,
	sharein => \Add13~31\,
	sumout => \Add13~33_sumout\,
	cout => \Add13~34\,
	shareout => \Add13~35\);

-- Location: MLABCELL_X11_Y26_N26
\LessThan1~11\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = ( \Add13~25_sumout\ & ( \Add13~33_sumout\ & ( (capacity(6) & (capacity(8) & (!\Add13~29_sumout\ $ (capacity(7))))) ) ) ) # ( !\Add13~25_sumout\ & ( \Add13~33_sumout\ & ( (!capacity(6) & (capacity(8) & (!\Add13~29_sumout\ $ 
-- (capacity(7))))) ) ) ) # ( \Add13~25_sumout\ & ( !\Add13~33_sumout\ & ( (capacity(6) & (!capacity(8) & (!\Add13~29_sumout\ $ (capacity(7))))) ) ) ) # ( !\Add13~25_sumout\ & ( !\Add13~33_sumout\ & ( (!capacity(6) & (!capacity(8) & (!\Add13~29_sumout\ $ 
-- (capacity(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(6),
	datab => ALT_INV_capacity(8),
	datac => \ALT_INV_Add13~29_sumout\,
	datad => ALT_INV_capacity(7),
	datae => \ALT_INV_Add13~25_sumout\,
	dataf => \ALT_INV_Add13~33_sumout\,
	combout => \LessThan1~11_combout\);

-- Location: MLABCELL_X11_Y26_N28
\LessThan1~12\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = ( \Add13~25_sumout\ & ( \Add13~33_sumout\ & ( (capacity(8) & (capacity(7) & !\Add13~29_sumout\)) ) ) ) # ( !\Add13~25_sumout\ & ( \Add13~33_sumout\ & ( (capacity(8) & ((!capacity(6) & (capacity(7) & !\Add13~29_sumout\)) # 
-- (capacity(6) & ((!\Add13~29_sumout\) # (capacity(7)))))) ) ) ) # ( \Add13~25_sumout\ & ( !\Add13~33_sumout\ & ( ((capacity(7) & !\Add13~29_sumout\)) # (capacity(8)) ) ) ) # ( !\Add13~25_sumout\ & ( !\Add13~33_sumout\ & ( ((!capacity(6) & (capacity(7) & 
-- !\Add13~29_sumout\)) # (capacity(6) & ((!\Add13~29_sumout\) # (capacity(7))))) # (capacity(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100110111001111110011001100010011000000010000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(6),
	datab => ALT_INV_capacity(8),
	datac => ALT_INV_capacity(7),
	datad => \ALT_INV_Add13~29_sumout\,
	datae => \ALT_INV_Add13~25_sumout\,
	dataf => \ALT_INV_Add13~33_sumout\,
	combout => \LessThan1~12_combout\);

-- Location: MLABCELL_X11_Y26_N34
\LessThan1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = ( \LessThan1~11_combout\ & ( \LessThan1~12_combout\ & ( !\LessThan1~7_combout\ ) ) ) # ( !\LessThan1~11_combout\ & ( \LessThan1~12_combout\ & ( !\LessThan1~7_combout\ ) ) ) # ( \LessThan1~11_combout\ & ( !\LessThan1~12_combout\ & 
-- ( (!\LessThan1~7_combout\ & (((\LessThan1~9_combout\ & \LessThan1~8_combout\)) # (\LessThan1~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~9_combout\,
	datab => \ALT_INV_LessThan1~10_combout\,
	datac => \ALT_INV_LessThan1~8_combout\,
	datad => \ALT_INV_LessThan1~7_combout\,
	datae => \ALT_INV_LessThan1~11_combout\,
	dataf => \ALT_INV_LessThan1~12_combout\,
	combout => \LessThan1~13_combout\);

-- Location: MLABCELL_X11_Y28_N2
\LessThan1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( !capacity(11) & ( !capacity(12) & ( !capacity(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(10),
	datae => ALT_INV_capacity(11),
	dataf => ALT_INV_capacity(12),
	combout => \LessThan1~4_combout\);

-- Location: LABCELL_X12_Y26_N16
\LessThan1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ( capacity(15) & ( !\Add13~41_sumout\ ) ) # ( !capacity(15) & ( !\Add13~41_sumout\ & ( ((!\LessThan1~4_combout\) # (capacity(13))) # (capacity(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(14),
	datac => \ALT_INV_LessThan1~4_combout\,
	datad => ALT_INV_capacity(13),
	datae => ALT_INV_capacity(15),
	dataf => \ALT_INV_Add13~41_sumout\,
	combout => \LessThan1~5_combout\);

-- Location: MLABCELL_X11_Y28_N20
\LessThan1~20\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~20_combout\ = ( capacity(11) & ( capacity(12) & ( capacity(10) ) ) ) # ( !capacity(11) & ( !capacity(12) & ( !capacity(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(10),
	datae => ALT_INV_capacity(11),
	dataf => ALT_INV_capacity(12),
	combout => \LessThan1~20_combout\);

-- Location: LABCELL_X12_Y26_N20
\LessThan1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ( capacity(11) & ( \Add13~41_sumout\ & ( (\LessThan1~20_combout\ & (capacity(13) & (capacity(14) & capacity(15)))) ) ) ) # ( !capacity(11) & ( !\Add13~41_sumout\ & ( (\LessThan1~20_combout\ & (!capacity(13) & (!capacity(14) & 
-- !capacity(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~20_combout\,
	datab => ALT_INV_capacity(13),
	datac => ALT_INV_capacity(14),
	datad => ALT_INV_capacity(15),
	datae => ALT_INV_capacity(11),
	dataf => \ALT_INV_Add13~41_sumout\,
	combout => \LessThan1~6_combout\);

-- Location: LABCELL_X5_Y27_N28
\LessThan1~21\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~21_combout\ = ( capacity(17) & ( (capacity(16) & (capacity(18) & capacity(19))) ) ) # ( !capacity(17) & ( (!capacity(16) & (!capacity(18) & !capacity(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_capacity(16),
	datac => ALT_INV_capacity(18),
	datad => ALT_INV_capacity(19),
	dataf => ALT_INV_capacity(17),
	combout => \LessThan1~21_combout\);

-- Location: LABCELL_X12_Y26_N32
\LessThan1~15\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~15_combout\ = ( capacity(21) & ( \Add13~41_sumout\ & ( (\LessThan1~21_combout\ & (capacity(16) & (capacity(22) & capacity(20)))) ) ) ) # ( !capacity(21) & ( !\Add13~41_sumout\ & ( (\LessThan1~21_combout\ & (!capacity(16) & (!capacity(22) & 
-- !capacity(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~21_combout\,
	datab => ALT_INV_capacity(16),
	datac => ALT_INV_capacity(22),
	datad => ALT_INV_capacity(20),
	datae => ALT_INV_capacity(21),
	dataf => \ALT_INV_Add13~41_sumout\,
	combout => \LessThan1~15_combout\);

-- Location: MLABCELL_X11_Y26_N38
\LessThan1~16\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = ( \LessThan1~6_combout\ & ( \LessThan1~15_combout\ & ( (!\LessThan1~14_combout\ & (!\LessThan1~3_combout\ & (!\LessThan1~13_combout\ & !\LessThan1~5_combout\))) ) ) ) # ( !\LessThan1~6_combout\ & ( \LessThan1~15_combout\ & ( 
-- (!\LessThan1~3_combout\ & !\LessThan1~5_combout\) ) ) ) # ( \LessThan1~6_combout\ & ( !\LessThan1~15_combout\ & ( !\LessThan1~3_combout\ ) ) ) # ( !\LessThan1~6_combout\ & ( !\LessThan1~15_combout\ & ( !\LessThan1~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~14_combout\,
	datab => \ALT_INV_LessThan1~3_combout\,
	datac => \ALT_INV_LessThan1~13_combout\,
	datad => \ALT_INV_LessThan1~5_combout\,
	datae => \ALT_INV_LessThan1~6_combout\,
	dataf => \ALT_INV_LessThan1~15_combout\,
	combout => \LessThan1~16_combout\);

-- Location: MLABCELL_X11_Y26_N22
\LessThan1~19\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~19_combout\ = ( \LessThan1~16_combout\ & ( (!\Add13~41_sumout\ & ((!\LessThan1~1_combout\) # (capacity(30)))) ) ) # ( !\LessThan1~16_combout\ & ( (!\Add13~41_sumout\ & (((!\LessThan1~1_combout\) # (\LessThan1~17_combout\)) # (capacity(30)))) # 
-- (\Add13~41_sumout\ & (capacity(30) & (\LessThan1~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100101011101010110010101110101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add13~41_sumout\,
	datab => ALT_INV_capacity(30),
	datac => \ALT_INV_LessThan1~17_combout\,
	datad => \ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_LessThan1~16_combout\,
	combout => \LessThan1~19_combout\);

-- Location: MLABCELL_X11_Y26_N0
\Add9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( number_of_entered_cars(0) ) + ( (!\is_uni_car_entered~input_o\ & ((!capacity(31) & ((\LessThan1~19_combout\) # (\Add13~41_sumout\))) # (capacity(31) & (\Add13~41_sumout\ & \LessThan1~19_combout\)))) ) + ( !VCC ))
-- \Add9~2\ = CARRY(( number_of_entered_cars(0) ) + ( (!\is_uni_car_entered~input_o\ & ((!capacity(31) & ((\LessThan1~19_combout\) # (\Add13~41_sumout\))) # (capacity(31) & (\Add13~41_sumout\ & \LessThan1~19_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101110111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_entered~input_o\,
	datab => ALT_INV_capacity(31),
	datac => \ALT_INV_Add13~41_sumout\,
	datad => ALT_INV_number_of_entered_cars(0),
	dataf => \ALT_INV_LessThan1~19_combout\,
	cin => GND,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\);

-- Location: FF_X11_Y26_N1
\number_of_entered_cars[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(0));

-- Location: MLABCELL_X11_Y26_N2
\Add9~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( number_of_entered_cars(1) ) + ( GND ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( number_of_entered_cars(1) ) + ( GND ) + ( \Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(1),
	cin => \Add9~2\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\);

-- Location: FF_X11_Y26_N3
\number_of_entered_cars[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(1));

-- Location: MLABCELL_X11_Y26_N4
\Add9~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( number_of_entered_cars(2) ) + ( GND ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( number_of_entered_cars(2) ) + ( GND ) + ( \Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(2),
	cin => \Add9~6\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\);

-- Location: FF_X11_Y26_N5
\number_of_entered_cars[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(2));

-- Location: MLABCELL_X11_Y26_N6
\Add9~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( number_of_entered_cars(3) ) + ( GND ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( number_of_entered_cars(3) ) + ( GND ) + ( \Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(3),
	cin => \Add9~10\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\);

-- Location: FF_X11_Y26_N7
\number_of_entered_cars[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(3));

-- Location: MLABCELL_X11_Y26_N8
\Add9~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( number_of_entered_cars(4) ) + ( GND ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( number_of_entered_cars(4) ) + ( GND ) + ( \Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(4),
	cin => \Add9~14\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\);

-- Location: FF_X11_Y26_N9
\number_of_entered_cars[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(4));

-- Location: MLABCELL_X11_Y26_N10
\Add9~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( number_of_entered_cars(5) ) + ( GND ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( number_of_entered_cars(5) ) + ( GND ) + ( \Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(5),
	cin => \Add9~18\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\);

-- Location: FF_X11_Y26_N11
\number_of_entered_cars[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(5));

-- Location: MLABCELL_X11_Y26_N12
\Add9~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( number_of_entered_cars(6) ) + ( GND ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( number_of_entered_cars(6) ) + ( GND ) + ( \Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(6),
	cin => \Add9~22\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\);

-- Location: FF_X11_Y26_N13
\number_of_entered_cars[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(6));

-- Location: MLABCELL_X11_Y26_N14
\Add9~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( number_of_entered_cars(7) ) + ( GND ) + ( \Add9~26\ ))
-- \Add9~30\ = CARRY(( number_of_entered_cars(7) ) + ( GND ) + ( \Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(7),
	cin => \Add9~26\,
	sumout => \Add9~29_sumout\,
	cout => \Add9~30\);

-- Location: FF_X11_Y26_N15
\number_of_entered_cars[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(7));

-- Location: MLABCELL_X11_Y26_N16
\Add9~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~33_sumout\ = SUM(( number_of_entered_cars(8) ) + ( GND ) + ( \Add9~30\ ))
-- \Add9~34\ = CARRY(( number_of_entered_cars(8) ) + ( GND ) + ( \Add9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(8),
	cin => \Add9~30\,
	sumout => \Add9~33_sumout\,
	cout => \Add9~34\);

-- Location: FF_X11_Y26_N17
\number_of_entered_cars[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(8));

-- Location: MLABCELL_X11_Y26_N18
\Add9~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~37_sumout\ = SUM(( number_of_entered_cars(9) ) + ( GND ) + ( \Add9~34\ ))
-- \Add9~38\ = CARRY(( number_of_entered_cars(9) ) + ( GND ) + ( \Add9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(9),
	cin => \Add9~34\,
	sumout => \Add9~37_sumout\,
	cout => \Add9~38\);

-- Location: FF_X11_Y26_N19
\number_of_entered_cars[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(9));

-- Location: LABCELL_X10_Y26_N18
\Add13~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~37_sumout\ = SUM(( !number_of_exited_cars(9) $ (number_of_entered_cars(9)) ) + ( \Add13~35\ ) + ( \Add13~34\ ))
-- \Add13~38\ = CARRY(( !number_of_exited_cars(9) $ (number_of_entered_cars(9)) ) + ( \Add13~35\ ) + ( \Add13~34\ ))
-- \Add13~39\ = SHARE((!number_of_exited_cars(9) & number_of_entered_cars(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_cars(9),
	datad => ALT_INV_number_of_entered_cars(9),
	cin => \Add13~34\,
	sharein => \Add13~35\,
	sumout => \Add13~37_sumout\,
	cout => \Add13~38\,
	shareout => \Add13~39\);

-- Location: LABCELL_X10_Y26_N38
\LessThan9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = ( !\Add13~9_sumout\ & ( (!\Add13~5_sumout\ & (!\Add13~13_sumout\ & !\Add13~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add13~5_sumout\,
	datac => \ALT_INV_Add13~13_sumout\,
	datad => \ALT_INV_Add13~1_sumout\,
	dataf => \ALT_INV_Add13~9_sumout\,
	combout => \LessThan9~0_combout\);

-- Location: MLABCELL_X9_Y26_N32
\LessThan9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = ( \Add13~29_sumout\ & ( \LessThan9~0_combout\ ) ) # ( !\Add13~29_sumout\ & ( \LessThan9~0_combout\ & ( (((\Add13~21_sumout\) # (\Add13~33_sumout\)) # (\Add13~17_sumout\)) # (\Add13~25_sumout\) ) ) ) # ( \Add13~29_sumout\ & ( 
-- !\LessThan9~0_combout\ ) ) # ( !\Add13~29_sumout\ & ( !\LessThan9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add13~25_sumout\,
	datab => \ALT_INV_Add13~17_sumout\,
	datac => \ALT_INV_Add13~33_sumout\,
	datad => \ALT_INV_Add13~21_sumout\,
	datae => \ALT_INV_Add13~29_sumout\,
	dataf => \ALT_INV_LessThan9~0_combout\,
	combout => \LessThan9~1_combout\);

-- Location: MLABCELL_X9_Y26_N0
\Add11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( number_of_exited_cars(0) ) + ( (!\is_uni_car_exited~input_o\ & (!\Add13~41_sumout\ & ((\LessThan9~1_combout\) # (\Add13~37_sumout\)))) ) + ( !VCC ))
-- \Add11~2\ = CARRY(( number_of_exited_cars(0) ) + ( (!\is_uni_car_exited~input_o\ & (!\Add13~41_sumout\ & ((\LessThan9~1_combout\) # (\Add13~37_sumout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101110111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_exited~input_o\,
	datab => \ALT_INV_Add13~41_sumout\,
	datac => \ALT_INV_Add13~37_sumout\,
	datad => ALT_INV_number_of_exited_cars(0),
	dataf => \ALT_INV_LessThan9~1_combout\,
	cin => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\);

-- Location: MLABCELL_X9_Y26_N2
\Add11~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( number_of_exited_cars(1) ) + ( GND ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( number_of_exited_cars(1) ) + ( GND ) + ( \Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(1),
	cin => \Add11~2\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\);

-- Location: FF_X9_Y26_N3
\number_of_exited_cars[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(1));

-- Location: MLABCELL_X9_Y26_N4
\Add11~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( number_of_exited_cars(2) ) + ( GND ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( number_of_exited_cars(2) ) + ( GND ) + ( \Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(2),
	cin => \Add11~6\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\);

-- Location: FF_X9_Y26_N5
\number_of_exited_cars[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(2));

-- Location: MLABCELL_X9_Y26_N6
\Add11~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( number_of_exited_cars(3) ) + ( GND ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( number_of_exited_cars(3) ) + ( GND ) + ( \Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(3),
	cin => \Add11~10\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\);

-- Location: FF_X9_Y26_N7
\number_of_exited_cars[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(3));

-- Location: MLABCELL_X9_Y26_N8
\Add11~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( number_of_exited_cars(4) ) + ( GND ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( number_of_exited_cars(4) ) + ( GND ) + ( \Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(4),
	cin => \Add11~14\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\);

-- Location: FF_X9_Y26_N9
\number_of_exited_cars[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(4));

-- Location: MLABCELL_X9_Y26_N10
\Add11~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( number_of_exited_cars(5) ) + ( GND ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( number_of_exited_cars(5) ) + ( GND ) + ( \Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(5),
	cin => \Add11~18\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\);

-- Location: FF_X9_Y26_N11
\number_of_exited_cars[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(5));

-- Location: MLABCELL_X9_Y26_N12
\Add11~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( number_of_exited_cars(6) ) + ( GND ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( number_of_exited_cars(6) ) + ( GND ) + ( \Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(6),
	cin => \Add11~22\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\);

-- Location: FF_X9_Y26_N13
\number_of_exited_cars[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(6));

-- Location: MLABCELL_X9_Y26_N14
\Add11~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( number_of_exited_cars(7) ) + ( GND ) + ( \Add11~26\ ))
-- \Add11~30\ = CARRY(( number_of_exited_cars(7) ) + ( GND ) + ( \Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(7),
	cin => \Add11~26\,
	sumout => \Add11~29_sumout\,
	cout => \Add11~30\);

-- Location: FF_X9_Y26_N15
\number_of_exited_cars[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(7));

-- Location: MLABCELL_X9_Y26_N16
\Add11~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~33_sumout\ = SUM(( number_of_exited_cars(8) ) + ( GND ) + ( \Add11~30\ ))
-- \Add11~34\ = CARRY(( number_of_exited_cars(8) ) + ( GND ) + ( \Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(8),
	cin => \Add11~30\,
	sumout => \Add11~33_sumout\,
	cout => \Add11~34\);

-- Location: FF_X9_Y26_N17
\number_of_exited_cars[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(8));

-- Location: MLABCELL_X9_Y26_N18
\Add11~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~37_sumout\ = SUM(( number_of_exited_cars(9) ) + ( GND ) + ( \Add11~34\ ))
-- \Add11~38\ = CARRY(( number_of_exited_cars(9) ) + ( GND ) + ( \Add11~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(9),
	cin => \Add11~34\,
	sumout => \Add11~37_sumout\,
	cout => \Add11~38\);

-- Location: FF_X9_Y26_N19
\number_of_exited_cars[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(9));

-- Location: MLABCELL_X9_Y26_N20
\Add11~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~41_sumout\ = SUM(( number_of_exited_cars(10) ) + ( GND ) + ( \Add11~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_exited_cars(10),
	cin => \Add11~38\,
	sumout => \Add11~41_sumout\);

-- Location: FF_X9_Y26_N21
\number_of_exited_cars[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(10));

-- Location: MLABCELL_X11_Y26_N20
\Add9~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~41_sumout\ = SUM(( number_of_entered_cars(10) ) + ( GND ) + ( \Add9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_number_of_entered_cars(10),
	cin => \Add9~38\,
	sumout => \Add9~41_sumout\);

-- Location: FF_X11_Y26_N21
\number_of_entered_cars[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add9~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_entered_cars(10));

-- Location: LABCELL_X10_Y26_N20
\Add13~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add13~41_sumout\ = SUM(( !number_of_exited_cars(10) $ (number_of_entered_cars(10)) ) + ( \Add13~39\ ) + ( \Add13~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_number_of_exited_cars(10),
	datad => ALT_INV_number_of_entered_cars(10),
	cin => \Add13~38\,
	sharein => \Add13~39\,
	sumout => \Add13~41_sumout\);

-- Location: FF_X9_Y26_N1
\number_of_exited_cars[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add11~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number_of_exited_cars(0));

-- Location: MLABCELL_X9_Y27_N0
\Add0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\Add12~1_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !\Add12~1_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~1_sumout\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X9_Y27_N2
\Add0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\Add12~5_sumout\ ) + ( !capacity(1) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\Add12~5_sumout\ ) + ( !capacity(1) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~5_sumout\,
	dataf => ALT_INV_capacity(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X9_Y19_N20
\Add1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( VCC ) + ( \Add0~5_sumout\ ) + ( !VCC ))
-- \Add1~2\ = CARRY(( VCC ) + ( \Add0~5_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~5_sumout\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: MLABCELL_X9_Y27_N4
\Add0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\Add12~9_sumout\ ) + ( !capacity(2) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\Add12~9_sumout\ ) + ( !capacity(2) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~9_sumout\,
	dataf => ALT_INV_capacity(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X9_Y19_N22
\Add1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \Add0~9_sumout\ ) + ( VCC ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \Add0~9_sumout\ ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: MLABCELL_X9_Y27_N6
\Add0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\Add12~13_sumout\ ) + ( !capacity(3) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\Add12~13_sumout\ ) + ( !capacity(3) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~13_sumout\,
	dataf => ALT_INV_capacity(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X9_Y19_N24
\Add1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( VCC ) + ( \Add0~13_sumout\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( VCC ) + ( \Add0~13_sumout\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~13_sumout\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: MLABCELL_X9_Y27_N8
\Add0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\Add12~17_sumout\ ) + ( !capacity(4) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\Add12~17_sumout\ ) + ( !capacity(4) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add12~17_sumout\,
	datac => ALT_INV_capacity(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X9_Y19_N26
\Add1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( VCC ) + ( \Add0~17_sumout\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( VCC ) + ( \Add0~17_sumout\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~17_sumout\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: MLABCELL_X9_Y27_N10
\Add0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\Add12~21_sumout\ ) + ( !capacity(5) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\Add12~21_sumout\ ) + ( !capacity(5) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~21_sumout\,
	dataf => ALT_INV_capacity(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X9_Y19_N28
\Add1~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( VCC ) + ( \Add0~21_sumout\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( VCC ) + ( \Add0~21_sumout\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~21_sumout\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X9_Y27_N12
\Add0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\Add12~25_sumout\ ) + ( !capacity(6) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\Add12~25_sumout\ ) + ( !capacity(6) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add12~25_sumout\,
	dataf => ALT_INV_capacity(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X9_Y19_N30
\Add1~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \Add0~25_sumout\ ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \Add0~25_sumout\ ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~25_sumout\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: MLABCELL_X9_Y27_N14
\Add0~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !capacity(7) ) + ( !\Add12~29_sumout\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !capacity(7) ) + ( !\Add12~29_sumout\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(7),
	dataf => \ALT_INV_Add12~29_sumout\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X9_Y19_N32
\Add1~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( VCC ) + ( \Add0~29_sumout\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( VCC ) + ( \Add0~29_sumout\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~29_sumout\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: MLABCELL_X9_Y27_N16
\Add0~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !capacity(8) ) + ( !\Add12~33_sumout\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !capacity(8) ) + ( !\Add12~33_sumout\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_capacity(8),
	dataf => \ALT_INV_Add12~33_sumout\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X9_Y19_N34
\Add1~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( GND ) + ( \Add0~33_sumout\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( GND ) + ( \Add0~33_sumout\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~33_sumout\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: MLABCELL_X9_Y27_N18
\Add0~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !capacity(9) ) + ( !\Add12~37_sumout\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !capacity(9) ) + ( !\Add12~37_sumout\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~37_sumout\,
	datad => ALT_INV_capacity(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X9_Y19_N36
\Add1~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \Add0~37_sumout\ ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \Add0~37_sumout\ ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~37_sumout\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: MLABCELL_X9_Y27_N20
\Add0~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !capacity(10) ) + ( !\Add12~41_sumout\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_capacity(10),
	dataf => \ALT_INV_Add12~41_sumout\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\);

-- Location: MLABCELL_X9_Y19_N38
\Add1~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( GND ) + ( \Add0~41_sumout\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~41_sumout\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\);

-- Location: LABCELL_X7_Y26_N0
\Add2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( VCC ) + ( !\Add13~1_sumout\ ) + ( !VCC ))
-- \Add2~2\ = CARRY(( VCC ) + ( !\Add13~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add13~1_sumout\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X7_Y26_N2
\Add2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\Add13~5_sumout\ ) + ( capacity(1) ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !\Add13~5_sumout\ ) + ( capacity(1) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add13~5_sumout\,
	dataf => ALT_INV_capacity(1),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X7_Y26_N4
\Add2~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( capacity(2) ) + ( !\Add13~9_sumout\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( capacity(2) ) + ( !\Add13~9_sumout\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_capacity(2),
	dataf => \ALT_INV_Add13~9_sumout\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X7_Y26_N6
\Add2~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\Add13~13_sumout\ ) + ( capacity(3) ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !\Add13~13_sumout\ ) + ( capacity(3) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add13~13_sumout\,
	dataf => ALT_INV_capacity(3),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X7_Y26_N8
\Add2~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( capacity(4) ) + ( !\Add13~17_sumout\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( capacity(4) ) + ( !\Add13~17_sumout\ ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add13~17_sumout\,
	datad => ALT_INV_capacity(4),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X7_Y26_N10
\Add2~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( capacity(5) ) + ( !\Add13~21_sumout\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( capacity(5) ) + ( !\Add13~21_sumout\ ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(5),
	dataf => \ALT_INV_Add13~21_sumout\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X7_Y26_N12
\Add2~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !\Add13~25_sumout\ ) + ( capacity(6) ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !\Add13~25_sumout\ ) + ( capacity(6) ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add13~25_sumout\,
	dataf => ALT_INV_capacity(6),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: LABCELL_X7_Y26_N14
\Add2~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !\Add13~29_sumout\ ) + ( capacity(7) ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( !\Add13~29_sumout\ ) + ( capacity(7) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(7),
	datad => \ALT_INV_Add13~29_sumout\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: LABCELL_X7_Y26_N16
\Add2~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( !\Add13~33_sumout\ ) + ( capacity(8) ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( !\Add13~33_sumout\ ) + ( capacity(8) ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add13~33_sumout\,
	dataf => ALT_INV_capacity(8),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: LABCELL_X7_Y26_N18
\Add2~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( capacity(9) ) + ( !\Add13~37_sumout\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( capacity(9) ) + ( !\Add13~37_sumout\ ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity(9),
	dataf => \ALT_INV_Add13~37_sumout\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: LABCELL_X7_Y26_N20
\Add2~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( capacity(10) ) + ( !\Add13~41_sumout\ ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_capacity(10),
	dataf => \ALT_INV_Add13~41_sumout\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\);

-- Location: MLABCELL_X4_Y28_N24
\LessThan0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \Add3~13_sumout\ & ( !\Add3~21_sumout\ & ( (!\Add3~9_sumout\) # ((!\Add3~5_sumout\) # (!\Add3~17_sumout\)) ) ) ) # ( !\Add3~13_sumout\ & ( !\Add3~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111101111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~9_sumout\,
	datab => \ALT_INV_Add3~5_sumout\,
	datac => \ALT_INV_Add3~17_sumout\,
	datae => \ALT_INV_Add3~13_sumout\,
	dataf => \ALT_INV_Add3~21_sumout\,
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X4_Y28_N36
\LessThan0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !\Add3~29_sumout\ & ( \Add3~33_sumout\ & ( (!\Add3~61_sumout\ & ((!\Add3~25_sumout\) # (\LessThan0~0_combout\))) ) ) ) # ( \Add3~29_sumout\ & ( !\Add3~33_sumout\ & ( !\Add3~61_sumout\ ) ) ) # ( !\Add3~29_sumout\ & ( 
-- !\Add3~33_sumout\ & ( !\Add3~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011010000110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_Add3~25_sumout\,
	datac => \ALT_INV_Add3~61_sumout\,
	datae => \ALT_INV_Add3~29_sumout\,
	dataf => \ALT_INV_Add3~33_sumout\,
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X4_Y28_N32
\LessThan0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !\Add3~89_sumout\ & ( !\Add3~65_sumout\ & ( (!\Add3~69_sumout\ & (\LessThan0~1_combout\ & !\Add3~109_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~69_sumout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add3~109_sumout\,
	datae => \ALT_INV_Add3~89_sumout\,
	dataf => \ALT_INV_Add3~65_sumout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X5_Y27_N0
\LessThan0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !\Add3~81_sumout\ & ( (!\Add3~73_sumout\ & (!\Add3~85_sumout\ & (!\Add3~105_sumout\ & !\Add3~77_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~73_sumout\,
	datab => \ALT_INV_Add3~85_sumout\,
	datac => \ALT_INV_Add3~105_sumout\,
	datad => \ALT_INV_Add3~77_sumout\,
	dataf => \ALT_INV_Add3~81_sumout\,
	combout => \LessThan0~5_combout\);

-- Location: MLABCELL_X4_Y28_N30
\LessThan0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \Add3~117_sumout\ & ( \LessThan0~5_combout\ & ( \Add3~121_sumout\ ) ) ) # ( !\Add3~117_sumout\ & ( \LessThan0~5_combout\ & ( ((!\Add3~113_sumout\ & (\LessThan0~4_combout\ & \LessThan0~2_combout\))) # (\Add3~121_sumout\) ) ) ) # ( 
-- \Add3~117_sumout\ & ( !\LessThan0~5_combout\ & ( \Add3~121_sumout\ ) ) ) # ( !\Add3~117_sumout\ & ( !\LessThan0~5_combout\ & ( \Add3~121_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010111010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~121_sumout\,
	datab => \ALT_INV_Add3~113_sumout\,
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_LessThan0~2_combout\,
	datae => \ALT_INV_Add3~117_sumout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X10_Y27_N36
\LessThan1~18\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = ( capacity(31) & ( \LessThan1~1_combout\ & ( (capacity(30) & (\Add13~41_sumout\ & (!\LessThan1~16_combout\ & \LessThan1~17_combout\))) ) ) ) # ( !capacity(31) & ( \LessThan1~1_combout\ & ( (((!\LessThan1~16_combout\ & 
-- \LessThan1~17_combout\)) # (\Add13~41_sumout\)) # (capacity(30)) ) ) ) # ( capacity(31) & ( !\LessThan1~1_combout\ & ( (capacity(30) & (\Add13~41_sumout\ & (!\LessThan1~16_combout\ & \LessThan1~17_combout\))) ) ) ) # ( !capacity(31) & ( 
-- !\LessThan1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000001000001110111111101110000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity(30),
	datab => \ALT_INV_Add13~41_sumout\,
	datac => \ALT_INV_LessThan1~16_combout\,
	datad => \ALT_INV_LessThan1~17_combout\,
	datae => ALT_INV_capacity(31),
	dataf => \ALT_INV_LessThan1~1_combout\,
	combout => \LessThan1~18_combout\);

-- Location: MLABCELL_X9_Y1_N34
\valid~0\ : arriaii_lcell_comb
-- Equation(s):
-- \valid~0_combout\ = ( \Add1~37_sumout\ ) # ( !\Add1~37_sumout\ & ( \Add2~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add2~41_sumout\,
	datae => \ALT_INV_Add1~37_sumout\,
	combout => \valid~0_combout\);

ww_uni_parked_car(0) <= \uni_parked_car[0]~output_o\;

ww_uni_parked_car(1) <= \uni_parked_car[1]~output_o\;

ww_uni_parked_car(2) <= \uni_parked_car[2]~output_o\;

ww_uni_parked_car(3) <= \uni_parked_car[3]~output_o\;

ww_uni_parked_car(4) <= \uni_parked_car[4]~output_o\;

ww_uni_parked_car(5) <= \uni_parked_car[5]~output_o\;

ww_uni_parked_car(6) <= \uni_parked_car[6]~output_o\;

ww_uni_parked_car(7) <= \uni_parked_car[7]~output_o\;

ww_uni_parked_car(8) <= \uni_parked_car[8]~output_o\;

ww_uni_parked_car(9) <= \uni_parked_car[9]~output_o\;

ww_uni_parked_car(10) <= \uni_parked_car[10]~output_o\;

ww_parked_car(0) <= \parked_car[0]~output_o\;

ww_parked_car(1) <= \parked_car[1]~output_o\;

ww_parked_car(2) <= \parked_car[2]~output_o\;

ww_parked_car(3) <= \parked_car[3]~output_o\;

ww_parked_car(4) <= \parked_car[4]~output_o\;

ww_parked_car(5) <= \parked_car[5]~output_o\;

ww_parked_car(6) <= \parked_car[6]~output_o\;

ww_parked_car(7) <= \parked_car[7]~output_o\;

ww_parked_car(8) <= \parked_car[8]~output_o\;

ww_parked_car(9) <= \parked_car[9]~output_o\;

ww_parked_car(10) <= \parked_car[10]~output_o\;

ww_uni_vacated_space(0) <= \uni_vacated_space[0]~output_o\;

ww_uni_vacated_space(1) <= \uni_vacated_space[1]~output_o\;

ww_uni_vacated_space(2) <= \uni_vacated_space[2]~output_o\;

ww_uni_vacated_space(3) <= \uni_vacated_space[3]~output_o\;

ww_uni_vacated_space(4) <= \uni_vacated_space[4]~output_o\;

ww_uni_vacated_space(5) <= \uni_vacated_space[5]~output_o\;

ww_uni_vacated_space(6) <= \uni_vacated_space[6]~output_o\;

ww_uni_vacated_space(7) <= \uni_vacated_space[7]~output_o\;

ww_uni_vacated_space(8) <= \uni_vacated_space[8]~output_o\;

ww_uni_vacated_space(9) <= \uni_vacated_space[9]~output_o\;

ww_uni_vacated_space(10) <= \uni_vacated_space[10]~output_o\;

ww_vacated_space(0) <= \vacated_space[0]~output_o\;

ww_vacated_space(1) <= \vacated_space[1]~output_o\;

ww_vacated_space(2) <= \vacated_space[2]~output_o\;

ww_vacated_space(3) <= \vacated_space[3]~output_o\;

ww_vacated_space(4) <= \vacated_space[4]~output_o\;

ww_vacated_space(5) <= \vacated_space[5]~output_o\;

ww_vacated_space(6) <= \vacated_space[6]~output_o\;

ww_vacated_space(7) <= \vacated_space[7]~output_o\;

ww_vacated_space(8) <= \vacated_space[8]~output_o\;

ww_vacated_space(9) <= \vacated_space[9]~output_o\;

ww_vacated_space(10) <= \vacated_space[10]~output_o\;

ww_uni_is_vacated_space <= \uni_is_vacated_space~output_o\;

ww_is_vacated_space <= \is_vacated_space~output_o\;

ww_valid <= \valid~output_o\;
END structure;


