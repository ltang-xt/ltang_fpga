// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_div_clk4_2.v
// Create : 2024-07-10 14:29:22
// Revise : 2024-07-10 20:02:26
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1ns/1ns
module tb_div_clk4_2();
reg 	clk,rst;
wire [1:0]	po_cnt;

initial begin
	clk = 0;
	rst = 1;
	#100 ;
	rst = 0;
end

always #10 clk = ~clk;

div_clk4_2 div_clk4_2_inst(
	.clk(clk),
	.rst(rst),
	.po_cnt(po_cnt)
	);
endmodule