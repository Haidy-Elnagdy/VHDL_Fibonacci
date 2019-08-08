-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/30/2019 12:55:58"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fibo IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	go : IN std_logic;
	i : IN std_logic_vector(3 DOWNTO 0);
	fib : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END fibo;

-- Design Ports Information
-- fib[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fib[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fibo IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL ww_i : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fib : std_logic_vector(7 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fib[0]~output_o\ : std_logic;
SIGNAL \fib[1]~output_o\ : std_logic;
SIGNAL \fib[2]~output_o\ : std_logic;
SIGNAL \fib[3]~output_o\ : std_logic;
SIGNAL \fib[4]~output_o\ : std_logic;
SIGNAL \fib[5]~output_o\ : std_logic;
SIGNAL \fib[6]~output_o\ : std_logic;
SIGNAL \fib[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \f2|current_state.s0~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \f2|current_state.s0~q\ : std_logic;
SIGNAL \f2|next_state.s2~0_combout\ : std_logic;
SIGNAL \f2|current_state.s2~q\ : std_logic;
SIGNAL \f2|next_state.s1~combout\ : std_logic;
SIGNAL \f2|current_state.s1~q\ : std_logic;
SIGNAL \f2|next_state.s3~0_combout\ : std_logic;
SIGNAL \f2|current_state.s3~feeder_combout\ : std_logic;
SIGNAL \f2|current_state.s3~q\ : std_logic;
SIGNAL \f2|current_state.s7~feeder_combout\ : std_logic;
SIGNAL \f2|current_state.s7~q\ : std_logic;
SIGNAL \f2|current_state.s8~feeder_combout\ : std_logic;
SIGNAL \f2|current_state.s8~q\ : std_logic;
SIGNAL \i[0]~input_o\ : std_logic;
SIGNAL \f1|dp5|temp~4_combout\ : std_logic;
SIGNAL \f1|dp5|temp[0]~1_combout\ : std_logic;
SIGNAL \i[1]~input_o\ : std_logic;
SIGNAL \f1|dp5|temp~5_combout\ : std_logic;
SIGNAL \i[2]~input_o\ : std_logic;
SIGNAL \f1|dp5|temp~2_combout\ : std_logic;
SIGNAL \f1|dp5|temp~3_combout\ : std_logic;
SIGNAL \f1|dp5|Add0~0_combout\ : std_logic;
SIGNAL \i[3]~input_o\ : std_logic;
SIGNAL \f1|dp5|temp~0_combout\ : std_logic;
SIGNAL \f2|Selector0~0_combout\ : std_logic;
SIGNAL \f2|Selector0~1_combout\ : std_logic;
SIGNAL \f2|current_state.s4~q\ : std_logic;
SIGNAL \f2|next_state.s5~0_combout\ : std_logic;
SIGNAL \f2|current_state.s5~q\ : std_logic;
SIGNAL \f2|current_state.s6~feeder_combout\ : std_logic;
SIGNAL \f2|current_state.s6~q\ : std_logic;
SIGNAL \f1|dp4|y[0]~0_combout\ : std_logic;
SIGNAL \f2|b_ld~combout\ : std_logic;
SIGNAL \f1|dp3|y[0]~0_combout\ : std_logic;
SIGNAL \f1|dp2|reg_out[0]~8_combout\ : std_logic;
SIGNAL \f1|dp4|y[1]~1_combout\ : std_logic;
SIGNAL \f1|dp3|y[1]~1_combout\ : std_logic;
SIGNAL \f1|dp2|reg_out[0]~9\ : std_logic;
SIGNAL \f1|dp2|reg_out[1]~10_combout\ : std_logic;
SIGNAL \f1|dp4|y[2]~2_combout\ : std_logic;
SIGNAL \f1|dp3|y[2]~2_combout\ : std_logic;
SIGNAL \f1|dp2|reg_out[1]~11\ : std_logic;
SIGNAL \f1|dp2|reg_out[2]~12_combout\ : std_logic;
SIGNAL \f1|dp4|y[3]~3_combout\ : std_logic;
SIGNAL \f1|dp3|y[3]~3_combout\ : std_logic;
SIGNAL \f1|dp2|reg_out[2]~13\ : std_logic;
SIGNAL \f1|dp2|reg_out[3]~14_combout\ : std_logic;
SIGNAL \f1|dp4|y[4]~4_combout\ : std_logic;
SIGNAL \f1|dp3|y[4]~4_combout\ : std_logic;
SIGNAL \f1|dp2|reg_out[3]~15\ : std_logic;
SIGNAL \f1|dp2|reg_out[4]~16_combout\ : std_logic;
SIGNAL \f1|dp4|y[5]~5_combout\ : std_logic;
SIGNAL \f1|dp3|y[5]~5_combout\ : std_logic;
SIGNAL \f1|dp2|reg_out[4]~17\ : std_logic;
SIGNAL \f1|dp2|reg_out[5]~18_combout\ : std_logic;
SIGNAL \f1|dp4|y[6]~6_combout\ : std_logic;
SIGNAL \f1|dp3|y[6]~6_combout\ : std_logic;
SIGNAL \f1|dp2|reg_out[5]~19\ : std_logic;
SIGNAL \f1|dp2|reg_out[6]~20_combout\ : std_logic;
SIGNAL \f1|dp4|y[7]~7_combout\ : std_logic;
SIGNAL \f1|dp3|y[7]~7_combout\ : std_logic;
SIGNAL \f1|dp2|reg_out[6]~21\ : std_logic;
SIGNAL \f1|dp2|reg_out[7]~22_combout\ : std_logic;
SIGNAL \f1|dp2|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f1|dp1|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f1|dp|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f1|dp5|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_go <= go;
ww_i <= i;
fib <= ww_fib;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\fib[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|dp2|reg_out\(0),
	devoe => ww_devoe,
	o => \fib[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\fib[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|dp2|reg_out\(1),
	devoe => ww_devoe,
	o => \fib[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\fib[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|dp2|reg_out\(2),
	devoe => ww_devoe,
	o => \fib[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\fib[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|dp2|reg_out\(3),
	devoe => ww_devoe,
	o => \fib[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\fib[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|dp2|reg_out\(4),
	devoe => ww_devoe,
	o => \fib[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\fib[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|dp2|reg_out\(5),
	devoe => ww_devoe,
	o => \fib[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\fib[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|dp2|reg_out\(6),
	devoe => ww_devoe,
	o => \fib[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\fib[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1|dp2|reg_out\(7),
	devoe => ww_devoe,
	o => \fib[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y14_N1
\go~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go,
	o => \go~input_o\);

-- Location: LCCOMB_X32_Y25_N8
\f2|current_state.s0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|current_state.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \f2|current_state.s0~feeder_combout\);

-- Location: IOIBUF_X0_Y16_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X32_Y25_N9
\f2|current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2|current_state.s0~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|current_state.s0~q\);

-- Location: LCCOMB_X32_Y25_N2
\f2|next_state.s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|next_state.s2~0_combout\ = (!\go~input_o\ & \f2|current_state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \go~input_o\,
	datad => \f2|current_state.s1~q\,
	combout => \f2|next_state.s2~0_combout\);

-- Location: FF_X32_Y25_N3
\f2|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2|next_state.s2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|current_state.s2~q\);

-- Location: LCCOMB_X32_Y25_N12
\f2|next_state.s1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|next_state.s1~combout\ = (\f2|current_state.s2~q\) # (!\f2|current_state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f2|current_state.s0~q\,
	datad => \f2|current_state.s2~q\,
	combout => \f2|next_state.s1~combout\);

-- Location: FF_X32_Y25_N13
\f2|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2|next_state.s1~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|current_state.s1~q\);

-- Location: LCCOMB_X32_Y25_N22
\f2|next_state.s3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|next_state.s3~0_combout\ = (\go~input_o\ & \f2|current_state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \go~input_o\,
	datad => \f2|current_state.s1~q\,
	combout => \f2|next_state.s3~0_combout\);

-- Location: LCCOMB_X31_Y25_N24
\f2|current_state.s3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|current_state.s3~feeder_combout\ = \f2|next_state.s3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|next_state.s3~0_combout\,
	combout => \f2|current_state.s3~feeder_combout\);

-- Location: FF_X31_Y25_N25
\f2|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2|current_state.s3~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|current_state.s3~q\);

-- Location: LCCOMB_X32_Y25_N20
\f2|current_state.s7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|current_state.s7~feeder_combout\ = \f2|current_state.s6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|current_state.s6~q\,
	combout => \f2|current_state.s7~feeder_combout\);

-- Location: FF_X32_Y25_N21
\f2|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2|current_state.s7~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|current_state.s7~q\);

-- Location: LCCOMB_X32_Y25_N16
\f2|current_state.s8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|current_state.s8~feeder_combout\ = \f2|current_state.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|current_state.s7~q\,
	combout => \f2|current_state.s8~feeder_combout\);

-- Location: FF_X32_Y25_N17
\f2|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2|current_state.s8~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|current_state.s8~q\);

-- Location: IOIBUF_X0_Y16_N22
\i[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(0),
	o => \i[0]~input_o\);

-- Location: LCCOMB_X32_Y25_N6
\f1|dp5|temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp5|temp~4_combout\ = (\f2|current_state.s3~q\ & (\i[0]~input_o\)) # (!\f2|current_state.s3~q\ & ((!\f1|dp5|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i[0]~input_o\,
	datac => \f1|dp5|temp\(0),
	datad => \f2|current_state.s3~q\,
	combout => \f1|dp5|temp~4_combout\);

-- Location: LCCOMB_X32_Y25_N14
\f1|dp5|temp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp5|temp[0]~1_combout\ = \f2|current_state.s7~q\ $ (\f2|current_state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f2|current_state.s7~q\,
	datad => \f2|current_state.s3~q\,
	combout => \f1|dp5|temp[0]~1_combout\);

-- Location: FF_X32_Y25_N7
\f1|dp5|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp5|temp~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|dp5|temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp5|temp\(0));

-- Location: IOIBUF_X27_Y0_N15
\i[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(1),
	o => \i[1]~input_o\);

-- Location: LCCOMB_X32_Y25_N4
\f1|dp5|temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp5|temp~5_combout\ = (\f2|current_state.s3~q\ & (((\i[1]~input_o\)))) # (!\f2|current_state.s3~q\ & (\f1|dp5|temp\(0) $ (((!\f1|dp5|temp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp5|temp\(0),
	datab => \i[1]~input_o\,
	datac => \f1|dp5|temp\(1),
	datad => \f2|current_state.s3~q\,
	combout => \f1|dp5|temp~5_combout\);

-- Location: FF_X32_Y25_N5
\f1|dp5|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp5|temp~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|dp5|temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp5|temp\(1));

-- Location: IOIBUF_X25_Y34_N8
\i[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(2),
	o => \i[2]~input_o\);

-- Location: LCCOMB_X32_Y25_N28
\f1|dp5|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp5|temp~2_combout\ = (!\f2|current_state.s3~q\ & (\f1|dp5|temp\(2) $ (((!\f1|dp5|temp\(0) & !\f1|dp5|temp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp5|temp\(0),
	datab => \f1|dp5|temp\(2),
	datac => \f1|dp5|temp\(1),
	datad => \f2|current_state.s3~q\,
	combout => \f1|dp5|temp~2_combout\);

-- Location: LCCOMB_X32_Y25_N24
\f1|dp5|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp5|temp~3_combout\ = (\f1|dp5|temp~2_combout\) # ((\f2|current_state.s3~q\ & \i[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f2|current_state.s3~q\,
	datac => \i[2]~input_o\,
	datad => \f1|dp5|temp~2_combout\,
	combout => \f1|dp5|temp~3_combout\);

-- Location: FF_X32_Y25_N25
\f1|dp5|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp5|temp~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|dp5|temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp5|temp\(2));

-- Location: LCCOMB_X32_Y25_N10
\f1|dp5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp5|Add0~0_combout\ = \f1|dp5|temp\(3) $ (((\f1|dp5|temp\(0)) # ((\f1|dp5|temp\(1)) # (\f1|dp5|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp5|temp\(0),
	datab => \f1|dp5|temp\(1),
	datac => \f1|dp5|temp\(3),
	datad => \f1|dp5|temp\(2),
	combout => \f1|dp5|Add0~0_combout\);

-- Location: IOIBUF_X53_Y17_N15
\i[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(3),
	o => \i[3]~input_o\);

-- Location: LCCOMB_X32_Y25_N30
\f1|dp5|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp5|temp~0_combout\ = (\f2|current_state.s3~q\ & ((\i[3]~input_o\))) # (!\f2|current_state.s3~q\ & (!\f1|dp5|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp5|Add0~0_combout\,
	datab => \i[3]~input_o\,
	datad => \f2|current_state.s3~q\,
	combout => \f1|dp5|temp~0_combout\);

-- Location: FF_X32_Y25_N31
\f1|dp5|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp5|temp~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f1|dp5|temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp5|temp\(3));

-- Location: LCCOMB_X32_Y25_N18
\f2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Selector0~0_combout\ = (!\f1|dp5|temp\(0) & (!\f1|dp5|temp\(1) & (!\f1|dp5|temp\(3) & !\f1|dp5|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp5|temp\(0),
	datab => \f1|dp5|temp\(1),
	datac => \f1|dp5|temp\(3),
	datad => \f1|dp5|temp\(2),
	combout => \f2|Selector0~0_combout\);

-- Location: LCCOMB_X32_Y25_N0
\f2|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|Selector0~1_combout\ = (\f2|current_state.s3~q\) # ((\f2|current_state.s8~q\) # ((\f2|current_state.s4~q\ & \f2|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f2|current_state.s3~q\,
	datab => \f2|current_state.s8~q\,
	datac => \f2|current_state.s4~q\,
	datad => \f2|Selector0~0_combout\,
	combout => \f2|Selector0~1_combout\);

-- Location: FF_X32_Y25_N1
\f2|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2|Selector0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|current_state.s4~q\);

-- Location: LCCOMB_X31_Y25_N16
\f2|next_state.s5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|next_state.s5~0_combout\ = (\f2|current_state.s4~q\ & !\f2|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f2|current_state.s4~q\,
	datad => \f2|Selector0~0_combout\,
	combout => \f2|next_state.s5~0_combout\);

-- Location: FF_X31_Y25_N17
\f2|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2|next_state.s5~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|current_state.s5~q\);

-- Location: LCCOMB_X31_Y25_N14
\f2|current_state.s6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|current_state.s6~feeder_combout\ = \f2|current_state.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \f2|current_state.s5~q\,
	combout => \f2|current_state.s6~feeder_combout\);

-- Location: FF_X31_Y25_N15
\f2|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2|current_state.s6~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2|current_state.s6~q\);

-- Location: LCCOMB_X30_Y25_N0
\f1|dp4|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp4|y[0]~0_combout\ = (\f1|dp2|reg_out\(0)) # (!\f2|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f2|current_state.s6~q\,
	datad => \f1|dp2|reg_out\(0),
	combout => \f1|dp4|y[0]~0_combout\);

-- Location: LCCOMB_X31_Y25_N22
\f2|b_ld\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2|b_ld~combout\ = (\f2|current_state.s6~q\) # (\f2|current_state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f2|current_state.s6~q\,
	datad => \f2|current_state.s3~q\,
	combout => \f2|b_ld~combout\);

-- Location: FF_X30_Y25_N1
\f1|dp1|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp4|y[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp1|reg_out\(0));

-- Location: LCCOMB_X30_Y25_N22
\f1|dp3|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp3|y[0]~0_combout\ = (\f2|current_state.s6~q\ & \f1|dp1|reg_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f2|current_state.s6~q\,
	datac => \f1|dp1|reg_out\(0),
	combout => \f1|dp3|y[0]~0_combout\);

-- Location: FF_X30_Y25_N23
\f1|dp|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp3|y[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp|reg_out\(0));

-- Location: LCCOMB_X30_Y25_N6
\f1|dp2|reg_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp2|reg_out[0]~8_combout\ = (\f1|dp|reg_out\(0) & (\f1|dp1|reg_out\(0) $ (VCC))) # (!\f1|dp|reg_out\(0) & (\f1|dp1|reg_out\(0) & VCC))
-- \f1|dp2|reg_out[0]~9\ = CARRY((\f1|dp|reg_out\(0) & \f1|dp1|reg_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp|reg_out\(0),
	datab => \f1|dp1|reg_out\(0),
	datad => VCC,
	combout => \f1|dp2|reg_out[0]~8_combout\,
	cout => \f1|dp2|reg_out[0]~9\);

-- Location: FF_X30_Y25_N7
\f1|dp2|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp2|reg_out[0]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|current_state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp2|reg_out\(0));

-- Location: LCCOMB_X30_Y25_N4
\f1|dp4|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp4|y[1]~1_combout\ = (\f2|current_state.s6~q\ & \f1|dp2|reg_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f2|current_state.s6~q\,
	datac => \f1|dp2|reg_out\(1),
	combout => \f1|dp4|y[1]~1_combout\);

-- Location: FF_X30_Y25_N5
\f1|dp1|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp4|y[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp1|reg_out\(1));

-- Location: LCCOMB_X30_Y25_N30
\f1|dp3|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp3|y[1]~1_combout\ = (\f2|current_state.s6~q\ & \f1|dp1|reg_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f2|current_state.s6~q\,
	datac => \f1|dp1|reg_out\(1),
	combout => \f1|dp3|y[1]~1_combout\);

-- Location: FF_X30_Y25_N31
\f1|dp|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp3|y[1]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp|reg_out\(1));

-- Location: LCCOMB_X30_Y25_N8
\f1|dp2|reg_out[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp2|reg_out[1]~10_combout\ = (\f1|dp|reg_out\(1) & ((\f1|dp1|reg_out\(1) & (\f1|dp2|reg_out[0]~9\ & VCC)) # (!\f1|dp1|reg_out\(1) & (!\f1|dp2|reg_out[0]~9\)))) # (!\f1|dp|reg_out\(1) & ((\f1|dp1|reg_out\(1) & (!\f1|dp2|reg_out[0]~9\)) # 
-- (!\f1|dp1|reg_out\(1) & ((\f1|dp2|reg_out[0]~9\) # (GND)))))
-- \f1|dp2|reg_out[1]~11\ = CARRY((\f1|dp|reg_out\(1) & (!\f1|dp1|reg_out\(1) & !\f1|dp2|reg_out[0]~9\)) # (!\f1|dp|reg_out\(1) & ((!\f1|dp2|reg_out[0]~9\) # (!\f1|dp1|reg_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp|reg_out\(1),
	datab => \f1|dp1|reg_out\(1),
	datad => VCC,
	cin => \f1|dp2|reg_out[0]~9\,
	combout => \f1|dp2|reg_out[1]~10_combout\,
	cout => \f1|dp2|reg_out[1]~11\);

-- Location: FF_X30_Y25_N9
\f1|dp2|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp2|reg_out[1]~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|current_state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp2|reg_out\(1));

-- Location: LCCOMB_X31_Y25_N30
\f1|dp4|y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp4|y[2]~2_combout\ = (\f2|current_state.s6~q\ & \f1|dp2|reg_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f2|current_state.s6~q\,
	datad => \f1|dp2|reg_out\(2),
	combout => \f1|dp4|y[2]~2_combout\);

-- Location: FF_X31_Y25_N31
\f1|dp1|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp4|y[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp1|reg_out\(2));

-- Location: LCCOMB_X31_Y25_N12
\f1|dp3|y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp3|y[2]~2_combout\ = (\f1|dp1|reg_out\(2) & \f2|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|dp1|reg_out\(2),
	datad => \f2|current_state.s6~q\,
	combout => \f1|dp3|y[2]~2_combout\);

-- Location: FF_X31_Y25_N13
\f1|dp|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp3|y[2]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp|reg_out\(2));

-- Location: LCCOMB_X30_Y25_N10
\f1|dp2|reg_out[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp2|reg_out[2]~12_combout\ = ((\f1|dp1|reg_out\(2) $ (\f1|dp|reg_out\(2) $ (!\f1|dp2|reg_out[1]~11\)))) # (GND)
-- \f1|dp2|reg_out[2]~13\ = CARRY((\f1|dp1|reg_out\(2) & ((\f1|dp|reg_out\(2)) # (!\f1|dp2|reg_out[1]~11\))) # (!\f1|dp1|reg_out\(2) & (\f1|dp|reg_out\(2) & !\f1|dp2|reg_out[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp1|reg_out\(2),
	datab => \f1|dp|reg_out\(2),
	datad => VCC,
	cin => \f1|dp2|reg_out[1]~11\,
	combout => \f1|dp2|reg_out[2]~12_combout\,
	cout => \f1|dp2|reg_out[2]~13\);

-- Location: FF_X30_Y25_N11
\f1|dp2|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp2|reg_out[2]~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|current_state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp2|reg_out\(2));

-- Location: LCCOMB_X31_Y25_N2
\f1|dp4|y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp4|y[3]~3_combout\ = (\f2|current_state.s6~q\ & \f1|dp2|reg_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f2|current_state.s6~q\,
	datad => \f1|dp2|reg_out\(3),
	combout => \f1|dp4|y[3]~3_combout\);

-- Location: FF_X31_Y25_N3
\f1|dp1|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp4|y[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp1|reg_out\(3));

-- Location: LCCOMB_X30_Y25_N28
\f1|dp3|y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp3|y[3]~3_combout\ = (\f1|dp1|reg_out\(3) & \f2|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp1|reg_out\(3),
	datac => \f2|current_state.s6~q\,
	combout => \f1|dp3|y[3]~3_combout\);

-- Location: FF_X30_Y25_N29
\f1|dp|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp3|y[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp|reg_out\(3));

-- Location: LCCOMB_X30_Y25_N12
\f1|dp2|reg_out[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp2|reg_out[3]~14_combout\ = (\f1|dp1|reg_out\(3) & ((\f1|dp|reg_out\(3) & (\f1|dp2|reg_out[2]~13\ & VCC)) # (!\f1|dp|reg_out\(3) & (!\f1|dp2|reg_out[2]~13\)))) # (!\f1|dp1|reg_out\(3) & ((\f1|dp|reg_out\(3) & (!\f1|dp2|reg_out[2]~13\)) # 
-- (!\f1|dp|reg_out\(3) & ((\f1|dp2|reg_out[2]~13\) # (GND)))))
-- \f1|dp2|reg_out[3]~15\ = CARRY((\f1|dp1|reg_out\(3) & (!\f1|dp|reg_out\(3) & !\f1|dp2|reg_out[2]~13\)) # (!\f1|dp1|reg_out\(3) & ((!\f1|dp2|reg_out[2]~13\) # (!\f1|dp|reg_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp1|reg_out\(3),
	datab => \f1|dp|reg_out\(3),
	datad => VCC,
	cin => \f1|dp2|reg_out[2]~13\,
	combout => \f1|dp2|reg_out[3]~14_combout\,
	cout => \f1|dp2|reg_out[3]~15\);

-- Location: FF_X30_Y25_N13
\f1|dp2|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp2|reg_out[3]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|current_state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp2|reg_out\(3));

-- Location: LCCOMB_X30_Y25_N2
\f1|dp4|y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp4|y[4]~4_combout\ = (\f2|current_state.s6~q\ & \f1|dp2|reg_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f2|current_state.s6~q\,
	datac => \f1|dp2|reg_out\(4),
	combout => \f1|dp4|y[4]~4_combout\);

-- Location: FF_X30_Y25_N3
\f1|dp1|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp4|y[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp1|reg_out\(4));

-- Location: LCCOMB_X30_Y25_N24
\f1|dp3|y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp3|y[4]~4_combout\ = (\f2|current_state.s6~q\ & \f1|dp1|reg_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f2|current_state.s6~q\,
	datad => \f1|dp1|reg_out\(4),
	combout => \f1|dp3|y[4]~4_combout\);

-- Location: FF_X30_Y25_N25
\f1|dp|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp3|y[4]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp|reg_out\(4));

-- Location: LCCOMB_X30_Y25_N14
\f1|dp2|reg_out[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp2|reg_out[4]~16_combout\ = ((\f1|dp|reg_out\(4) $ (\f1|dp1|reg_out\(4) $ (!\f1|dp2|reg_out[3]~15\)))) # (GND)
-- \f1|dp2|reg_out[4]~17\ = CARRY((\f1|dp|reg_out\(4) & ((\f1|dp1|reg_out\(4)) # (!\f1|dp2|reg_out[3]~15\))) # (!\f1|dp|reg_out\(4) & (\f1|dp1|reg_out\(4) & !\f1|dp2|reg_out[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp|reg_out\(4),
	datab => \f1|dp1|reg_out\(4),
	datad => VCC,
	cin => \f1|dp2|reg_out[3]~15\,
	combout => \f1|dp2|reg_out[4]~16_combout\,
	cout => \f1|dp2|reg_out[4]~17\);

-- Location: FF_X30_Y25_N15
\f1|dp2|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp2|reg_out[4]~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|current_state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp2|reg_out\(4));

-- Location: LCCOMB_X30_Y25_N26
\f1|dp4|y[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp4|y[5]~5_combout\ = (\f2|current_state.s6~q\ & \f1|dp2|reg_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f2|current_state.s6~q\,
	datad => \f1|dp2|reg_out\(5),
	combout => \f1|dp4|y[5]~5_combout\);

-- Location: FF_X30_Y25_N27
\f1|dp1|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp4|y[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp1|reg_out\(5));

-- Location: LCCOMB_X31_Y25_N28
\f1|dp3|y[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp3|y[5]~5_combout\ = (\f1|dp1|reg_out\(5) & \f2|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp1|reg_out\(5),
	datad => \f2|current_state.s6~q\,
	combout => \f1|dp3|y[5]~5_combout\);

-- Location: FF_X31_Y25_N29
\f1|dp|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp3|y[5]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp|reg_out\(5));

-- Location: LCCOMB_X30_Y25_N16
\f1|dp2|reg_out[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp2|reg_out[5]~18_combout\ = (\f1|dp1|reg_out\(5) & ((\f1|dp|reg_out\(5) & (\f1|dp2|reg_out[4]~17\ & VCC)) # (!\f1|dp|reg_out\(5) & (!\f1|dp2|reg_out[4]~17\)))) # (!\f1|dp1|reg_out\(5) & ((\f1|dp|reg_out\(5) & (!\f1|dp2|reg_out[4]~17\)) # 
-- (!\f1|dp|reg_out\(5) & ((\f1|dp2|reg_out[4]~17\) # (GND)))))
-- \f1|dp2|reg_out[5]~19\ = CARRY((\f1|dp1|reg_out\(5) & (!\f1|dp|reg_out\(5) & !\f1|dp2|reg_out[4]~17\)) # (!\f1|dp1|reg_out\(5) & ((!\f1|dp2|reg_out[4]~17\) # (!\f1|dp|reg_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp1|reg_out\(5),
	datab => \f1|dp|reg_out\(5),
	datad => VCC,
	cin => \f1|dp2|reg_out[4]~17\,
	combout => \f1|dp2|reg_out[5]~18_combout\,
	cout => \f1|dp2|reg_out[5]~19\);

-- Location: FF_X30_Y25_N17
\f1|dp2|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp2|reg_out[5]~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|current_state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp2|reg_out\(5));

-- Location: LCCOMB_X31_Y25_N10
\f1|dp4|y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp4|y[6]~6_combout\ = (\f2|current_state.s6~q\ & \f1|dp2|reg_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f2|current_state.s6~q\,
	datad => \f1|dp2|reg_out\(6),
	combout => \f1|dp4|y[6]~6_combout\);

-- Location: FF_X31_Y25_N11
\f1|dp1|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp4|y[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp1|reg_out\(6));

-- Location: LCCOMB_X31_Y25_N8
\f1|dp3|y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp3|y[6]~6_combout\ = (\f2|current_state.s6~q\ & \f1|dp1|reg_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f2|current_state.s6~q\,
	datad => \f1|dp1|reg_out\(6),
	combout => \f1|dp3|y[6]~6_combout\);

-- Location: FF_X31_Y25_N9
\f1|dp|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp3|y[6]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp|reg_out\(6));

-- Location: LCCOMB_X30_Y25_N18
\f1|dp2|reg_out[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp2|reg_out[6]~20_combout\ = ((\f1|dp1|reg_out\(6) $ (\f1|dp|reg_out\(6) $ (!\f1|dp2|reg_out[5]~19\)))) # (GND)
-- \f1|dp2|reg_out[6]~21\ = CARRY((\f1|dp1|reg_out\(6) & ((\f1|dp|reg_out\(6)) # (!\f1|dp2|reg_out[5]~19\))) # (!\f1|dp1|reg_out\(6) & (\f1|dp|reg_out\(6) & !\f1|dp2|reg_out[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp1|reg_out\(6),
	datab => \f1|dp|reg_out\(6),
	datad => VCC,
	cin => \f1|dp2|reg_out[5]~19\,
	combout => \f1|dp2|reg_out[6]~20_combout\,
	cout => \f1|dp2|reg_out[6]~21\);

-- Location: FF_X30_Y25_N19
\f1|dp2|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp2|reg_out[6]~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|current_state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp2|reg_out\(6));

-- Location: LCCOMB_X31_Y25_N26
\f1|dp4|y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp4|y[7]~7_combout\ = (\f2|current_state.s6~q\ & \f1|dp2|reg_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f2|current_state.s6~q\,
	datad => \f1|dp2|reg_out\(7),
	combout => \f1|dp4|y[7]~7_combout\);

-- Location: FF_X31_Y25_N27
\f1|dp1|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp4|y[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp1|reg_out\(7));

-- Location: LCCOMB_X31_Y25_N20
\f1|dp3|y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp3|y[7]~7_combout\ = (\f1|dp1|reg_out\(7) & \f2|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp1|reg_out\(7),
	datad => \f2|current_state.s6~q\,
	combout => \f1|dp3|y[7]~7_combout\);

-- Location: FF_X31_Y25_N21
\f1|dp|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp3|y[7]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|b_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp|reg_out\(7));

-- Location: LCCOMB_X30_Y25_N20
\f1|dp2|reg_out[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|dp2|reg_out[7]~22_combout\ = \f1|dp|reg_out\(7) $ (\f1|dp2|reg_out[6]~21\ $ (\f1|dp1|reg_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|dp|reg_out\(7),
	datad => \f1|dp1|reg_out\(7),
	cin => \f1|dp2|reg_out[6]~21\,
	combout => \f1|dp2|reg_out[7]~22_combout\);

-- Location: FF_X30_Y25_N21
\f1|dp2|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1|dp2|reg_out[7]~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \f2|current_state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|dp2|reg_out\(7));

ww_fib(0) <= \fib[0]~output_o\;

ww_fib(1) <= \fib[1]~output_o\;

ww_fib(2) <= \fib[2]~output_o\;

ww_fib(3) <= \fib[3]~output_o\;

ww_fib(4) <= \fib[4]~output_o\;

ww_fib(5) <= \fib[5]~output_o\;

ww_fib(6) <= \fib[6]~output_o\;

ww_fib(7) <= \fib[7]~output_o\;
END structure;


