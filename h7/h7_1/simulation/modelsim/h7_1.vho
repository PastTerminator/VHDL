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

-- DATE "06/26/2019 11:06:02"

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

ENTITY 	h7_1 IS
    PORT (
	q : OUT std_logic;
	clk : IN std_logic;
	aclear : IN std_logic;
	trigger : IN std_logic
	);
END h7_1;

-- Design Ports Information
-- q	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aclear	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- trigger	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF h7_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_aclear : std_logic;
SIGNAL ww_trigger : std_logic;
SIGNAL \aclear~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|divider_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst|cnt[4]~17_combout\ : std_logic;
SIGNAL \inst1|divider_clock~regout\ : std_logic;
SIGNAL \inst1|divider_clock~0_combout\ : std_logic;
SIGNAL \inst1|q[1]~0_combout\ : std_logic;
SIGNAL \inst1|q[0]~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inst1|divider_clock~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[0]~9\ : std_logic;
SIGNAL \inst|cnt[1]~11_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \aclear~combout\ : std_logic;
SIGNAL \aclear~clkctrl_outclk\ : std_logic;
SIGNAL \trigger~combout\ : std_logic;
SIGNAL \inst|cnt[2]~13_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|cnt[0]~10_combout\ : std_logic;
SIGNAL \inst|cnt[1]~12\ : std_logic;
SIGNAL \inst|cnt[2]~14\ : std_logic;
SIGNAL \inst|cnt[3]~15_combout\ : std_logic;
SIGNAL \inst|cnt[3]~16\ : std_logic;
SIGNAL \inst|cnt[4]~18\ : std_logic;
SIGNAL \inst|cnt[5]~19_combout\ : std_logic;
SIGNAL \inst|cnt[5]~20\ : std_logic;
SIGNAL \inst|cnt[6]~21_combout\ : std_logic;
SIGNAL \inst|cnt[6]~22\ : std_logic;
SIGNAL \inst|cnt[7]~23_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_Equal0~2_combout\ : std_logic;

BEGIN

q <= ww_q;
ww_clk <= clk;
ww_aclear <= aclear;
ww_trigger <= trigger;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\aclear~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \aclear~combout\);

\inst1|divider_clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|divider_clock~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst|ALT_INV_Equal0~2_combout\ <= NOT \inst|Equal0~2_combout\;

-- Location: LCFF_X27_Y6_N13
\inst|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|divider_clock~clkctrl_outclk\,
	datain => \inst|cnt[0]~8_combout\,
	sdata => \~GND~combout\,
	aclr => \aclear~clkctrl_outclk\,
	sload => \trigger~combout\,
	ena => \inst|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(0));

-- Location: LCFF_X27_Y6_N21
\inst|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|divider_clock~clkctrl_outclk\,
	datain => \inst|cnt[4]~17_combout\,
	sdata => \~GND~combout\,
	aclr => \aclear~clkctrl_outclk\,
	sload => \trigger~combout\,
	ena => \inst|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(4));

-- Location: LCCOMB_X27_Y6_N12
\inst|cnt[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~8_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|cnt[0]~9\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|cnt[0]~8_combout\,
	cout => \inst|cnt[0]~9\);

-- Location: LCCOMB_X27_Y6_N20
\inst|cnt[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[4]~17_combout\ = (\inst|cnt\(4) & ((GND) # (!\inst|cnt[3]~16\))) # (!\inst|cnt\(4) & (\inst|cnt[3]~16\ $ (GND)))
-- \inst|cnt[4]~18\ = CARRY((\inst|cnt\(4)) # (!\inst|cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|cnt[3]~16\,
	combout => \inst|cnt[4]~17_combout\,
	cout => \inst|cnt[4]~18\);

-- Location: LCFF_X27_Y7_N7
\inst1|divider_clock\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|divider_clock~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|divider_clock~regout\);

-- Location: LCFF_X27_Y7_N19
\inst1|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|q\(0));

-- Location: LCFF_X27_Y7_N1
\inst1|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|q\(1));

-- Location: LCCOMB_X27_Y7_N6
\inst1|divider_clock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|divider_clock~0_combout\ = \inst1|divider_clock~regout\ $ (((\inst1|q\(0) & \inst1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|q\(0),
	datac => \inst1|divider_clock~regout\,
	datad => \inst1|q\(1),
	combout => \inst1|divider_clock~0_combout\);

-- Location: LCCOMB_X27_Y7_N0
\inst1|q[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[1]~0_combout\ = \inst1|q\(1) $ (\inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|q\(1),
	datad => \inst1|q\(0),
	combout => \inst1|q[1]~0_combout\);

-- Location: LCCOMB_X27_Y7_N18
\inst1|q[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|q[0]~1_combout\ = !\inst1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|q\(0),
	combout => \inst1|q[0]~1_combout\);

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

-- Location: CLKCTRL_G5
\inst1|divider_clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|divider_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|divider_clock~clkctrl_outclk\);

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

-- Location: LCCOMB_X27_Y6_N14
\inst|cnt[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~11_combout\ = (\inst|cnt\(1) & (\inst|cnt[0]~9\ & VCC)) # (!\inst|cnt\(1) & (!\inst|cnt[0]~9\))
-- \inst|cnt[1]~12\ = CARRY((!\inst|cnt\(1) & !\inst|cnt[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|cnt[0]~9\,
	combout => \inst|cnt[1]~11_combout\,
	cout => \inst|cnt[1]~12\);

-- Location: LCCOMB_X27_Y6_N8
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\aclear~I\ : cycloneii_io
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
	padio => ww_aclear,
	combout => \aclear~combout\);

-- Location: CLKCTRL_G1
\aclear~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aclear~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aclear~clkctrl_outclk\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\trigger~I\ : cycloneii_io
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
	padio => ww_trigger,
	combout => \trigger~combout\);

-- Location: LCCOMB_X27_Y6_N16
\inst|cnt[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~13_combout\ = (\inst|cnt\(2) & ((GND) # (!\inst|cnt[1]~12\))) # (!\inst|cnt\(2) & (\inst|cnt[1]~12\ $ (GND)))
-- \inst|cnt[2]~14\ = CARRY((\inst|cnt\(2)) # (!\inst|cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|cnt[1]~12\,
	combout => \inst|cnt[2]~13_combout\,
	cout => \inst|cnt[2]~14\);

-- Location: LCFF_X27_Y6_N17
\inst|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|divider_clock~clkctrl_outclk\,
	datain => \inst|cnt[2]~13_combout\,
	sdata => VCC,
	aclr => \aclear~clkctrl_outclk\,
	sload => \trigger~combout\,
	ena => \inst|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(2));

-- Location: LCCOMB_X27_Y6_N4
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|cnt\(0) & (!\inst|cnt\(1) & (!\inst|cnt\(2) & !\inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(2),
	datad => \inst|cnt\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y6_N2
\inst|cnt[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~10_combout\ = (\trigger~combout\) # ((!\inst|Equal0~1_combout\) # (!\inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger~combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|cnt[0]~10_combout\);

-- Location: LCFF_X27_Y6_N15
\inst|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|divider_clock~clkctrl_outclk\,
	datain => \inst|cnt[1]~11_combout\,
	sdata => \~GND~combout\,
	aclr => \aclear~clkctrl_outclk\,
	sload => \trigger~combout\,
	ena => \inst|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(1));

-- Location: LCCOMB_X27_Y6_N18
\inst|cnt[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~15_combout\ = (\inst|cnt\(3) & (\inst|cnt[2]~14\ & VCC)) # (!\inst|cnt\(3) & (!\inst|cnt[2]~14\))
-- \inst|cnt[3]~16\ = CARRY((!\inst|cnt\(3) & !\inst|cnt[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~14\,
	combout => \inst|cnt[3]~15_combout\,
	cout => \inst|cnt[3]~16\);

-- Location: LCFF_X27_Y6_N19
\inst|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|divider_clock~clkctrl_outclk\,
	datain => \inst|cnt[3]~15_combout\,
	sdata => \~GND~combout\,
	aclr => \aclear~clkctrl_outclk\,
	sload => \trigger~combout\,
	ena => \inst|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(3));

-- Location: LCCOMB_X27_Y6_N22
\inst|cnt[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[5]~19_combout\ = (\inst|cnt\(5) & (\inst|cnt[4]~18\ & VCC)) # (!\inst|cnt\(5) & (!\inst|cnt[4]~18\))
-- \inst|cnt[5]~20\ = CARRY((!\inst|cnt\(5) & !\inst|cnt[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|cnt[4]~18\,
	combout => \inst|cnt[5]~19_combout\,
	cout => \inst|cnt[5]~20\);

-- Location: LCFF_X27_Y6_N23
\inst|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|divider_clock~clkctrl_outclk\,
	datain => \inst|cnt[5]~19_combout\,
	sdata => \~GND~combout\,
	aclr => \aclear~clkctrl_outclk\,
	sload => \trigger~combout\,
	ena => \inst|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(5));

-- Location: LCCOMB_X27_Y6_N24
\inst|cnt[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~21_combout\ = (\inst|cnt\(6) & ((GND) # (!\inst|cnt[5]~20\))) # (!\inst|cnt\(6) & (\inst|cnt[5]~20\ $ (GND)))
-- \inst|cnt[6]~22\ = CARRY((\inst|cnt\(6)) # (!\inst|cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|cnt[5]~20\,
	combout => \inst|cnt[6]~21_combout\,
	cout => \inst|cnt[6]~22\);

-- Location: LCFF_X27_Y6_N25
\inst|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|divider_clock~clkctrl_outclk\,
	datain => \inst|cnt[6]~21_combout\,
	sdata => \~GND~combout\,
	aclr => \aclear~clkctrl_outclk\,
	sload => \trigger~combout\,
	ena => \inst|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(6));

-- Location: LCCOMB_X27_Y6_N26
\inst|cnt[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[7]~23_combout\ = \inst|cnt\(7) $ (!\inst|cnt[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(7),
	cin => \inst|cnt[6]~22\,
	combout => \inst|cnt[7]~23_combout\);

-- Location: LCFF_X27_Y6_N27
\inst|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|divider_clock~clkctrl_outclk\,
	datain => \inst|cnt[7]~23_combout\,
	sdata => \~GND~combout\,
	aclr => \aclear~clkctrl_outclk\,
	sload => \trigger~combout\,
	ena => \inst|cnt[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(7));

-- Location: LCCOMB_X27_Y6_N30
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|cnt\(4) & (!\inst|cnt\(5) & (!\inst|cnt\(6) & !\inst|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst|cnt\(5),
	datac => \inst|cnt\(6),
	datad => \inst|cnt\(7),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y6_N28
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q);
END structure;


