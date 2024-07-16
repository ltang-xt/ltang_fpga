// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_top.v
// Create : 2024-07-11 21:23:40
// Revise : 2024-07-11 22:26:21
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1ns / 1ns


module tb_top();

reg rst_n,clk,a,b;
wire c;

initial begin
	rst_n = 0;
	clk =0;
	a = 0;
	b = 0;
	#100;
	rst_n = 1;

end


always #10 clk = ~clk;
always #20 a = {$random};
always #20 b = {$random};



top top_inst(
	.clk(clk),
	.rst_n(rst_n),
	.pi_a(a),
	.pi_b(b),
	.po_c(c)
	);


endmodule