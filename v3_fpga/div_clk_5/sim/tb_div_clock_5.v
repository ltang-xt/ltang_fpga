// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_div_clock_5.v
// Create : 2024-07-11 13:30:25
// Revise : 2024-07-11 13:31:45
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 10ns / 10ns


module tb_div_clock_5();
reg 	clk,rst;
wire 	clk_5;

initial begin
	clk = 0;
	rst = 1;
	#100 ;
	rst = 0;
end

always #10 clk = ~clk;

div_clock_5 div_clock_5_inst(
	.clk(clk),
	.rst(rst),
	.clk_5(clk_5)
	);
endmodule