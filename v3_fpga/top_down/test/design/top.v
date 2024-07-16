// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : top.v
// Create : 2024-07-11 21:12:16
// Revise : 2024-07-11 21:19:51
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module top(
	input	wire	clk,
	input 	wire	rst_n,
	input	wire	pi_a,
	input 	wire	pi_b,
	output 	wire	po_c
	);

wire flag;
wire flag_16;

div_clk1 div_clk1_inst(
	.clk(clk),
	.rst_n(rst_n),
	.po_flag(flag)
	);

div_clk2 div_clk2_inst(
	.clk(clk),
	.rst_n(rst_n),
	.pi_flag(flag),
	.po_16flag(flag_16)
	);

a_and_b a_and_b_inst(
	.clk(clk),
	.rst_n(rst_n),
	.pi_a(pi_a),
	.pi_b(pi_b),
	.po_c(po_c),
	.pi_flag(flag_16)
	);


endmodule