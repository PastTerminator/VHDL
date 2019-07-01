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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/25/2019 12:23:18"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	freqmod60 IS
    PORT (
	clk : IN std_logic;
	divider_clock : BUFFER std_logic
	);
END freqmod60;

-- Design Ports Information
-- divider_clock	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF freqmod60 IS
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
SIGNAL ww_divider_clock : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \q[2]~2_combout\ : std_logic;
SIGNAL \q[1]~0_combout\ : std_logic;
SIGNAL \q[0]~1_combout\ : std_logic;
SIGNAL \divider_clock~0_combout\ : std_logic;
SIGNAL \divider_clock~reg0_regout\ : std_logic;
SIGNAL q : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
divider_clock <= ww_divider_clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y2_N10
\q[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[2]~2_combout\ = (q(0) & ((q(2) & (\divider_clock~reg0_regout\ & !q(1))) # (!q(2) & ((q(1)))))) # (!q(0) & (((q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_clock~reg0_regout\,
	datab => q(0),
	datac => q(2),
	datad => q(1),
	combout => \q[2]~2_combout\);

-- Location: LCFF_X27_Y2_N11
\q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => q(2));

-- Location: LCCOMB_X27_Y2_N30
\q[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[1]~0_combout\ = (q(0) & (!q(1) & !q(2))) # (!q(0) & (q(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q(0),
	datac => q(1),
	datad => q(2),
	combout => \q[1]~0_combout\);

-- Location: LCFF_X27_Y2_N31
\q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => q(1));

-- Location: LCCOMB_X27_Y2_N28
\q[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[0]~1_combout\ = ((q(2) & (!q(1) & \divider_clock~reg0_regout\))) # (!q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datab => q(1),
	datac => q(0),
	datad => \divider_clock~reg0_regout\,
	combout => \q[0]~1_combout\);

-- Location: LCFF_X27_Y2_N29
\q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => q(0));

-- Location: LCCOMB_X27_Y2_N12
\divider_clock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider_clock~0_combout\ = \divider_clock~reg0_regout\ $ (((q(2) & (q(0) & !q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q(2),
	datab => q(0),
	datac => \divider_clock~reg0_regout\,
	datad => q(1),
	combout => \divider_clock~0_combout\);

-- Location: LCFF_X27_Y2_N13
\divider_clock~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider_clock~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider_clock~reg0_regout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\divider_clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \divider_clock~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_divider_clock);
END structure;


