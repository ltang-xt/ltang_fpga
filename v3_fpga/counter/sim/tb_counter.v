// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_counter.v
// Create : 2024-07-09 20:06:15
// Revise : 2024-07-09 20:31:02
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module tb_top_counter();
reg clk,rst;
wire [3:0] o_cnt;

initial begin
	clk = 0;
	rst = 1;
	#100;
	rst = 0;
end

always #10 clk = ~clk;


top_counter top_counter_inst(
	.clk(clk),
	.rst(rst),
	.po_cnt(o_cnt)
	);

endmodule