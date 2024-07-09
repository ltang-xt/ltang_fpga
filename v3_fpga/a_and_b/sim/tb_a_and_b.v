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
// File   : tb_a_and_b.v
// Create : 2024-07-09 14:04:44
// Revise : 2024-07-09 14:31:07
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module tb_a_and_b();

reg  tb_a,tb_b;
reg  inclk;
wire tb_c1,tb_c2;

initial begin
	inclk = 0;
end

a_and_b a_and_b_inst(
	.clk(inclk),
	.pi_a(tb_a),
	.pi_b(tb_b),
	.po_c1(tb_c1),
	.po_c2(tb_c2)
	);

always  #10  tb_a = {$random};
always  #15  tb_b = {$random};

always #10 inclk = ~inclk;

endmodule