// This is a simple example.
// You can make a your own header file and set its path to settings.
// (Preferences > Package Settings > Verilog Gadget > Settings - User)
//
//		"header": "Packages/Verilog Gadget/template/verilog_header.v"
//
// -----------------------------------------------------------------------------
// Copyright (c) 2014-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_a_and_b_2.v
// Create : 2024-07-09 15:08:33
// Revise : 2024-07-09 16:02:30
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module tb_a_and_b_2();

reg  [7:0] tb_a;
reg  [7:0] tb_b;
reg  inclk;

wire [7:0] tb_c;

initial begin
	inclk = 0;
	tb_a=0;
	tb_b=0;
end

a_and_b_2 a_and_b_2_inst(
	.clk(inclk),
	.pi_a(tb_a),
	.pi_b(tb_b),
	.po_c(tb_c)
	);

always  #20  tb_a = {$random}%256;
always  #20  tb_b = {$random}%256;

always #10 inclk = ~inclk;

endmodule