// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_div_clk4.v
// Create : 2024-07-10 14:46:14
// Revise : 2024-07-10 14:52:38
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module tb_div_clk4();
reg   clk,rst;
wire  clk_4;

initial begin
	clk = 0;
	rst = 1;
	#100;
	rst = 0;
end

always #10 clk = ~clk;

div_clk4 div_clk4_inst(
	.clk(clk),
	.rst_n(rst),
	.clk_4(clk_4)
	);

endmodule