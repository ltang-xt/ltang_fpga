// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_operation.v
// Create : 2024-07-09 18:28:29
// Revise : 2024-07-09 18:53:21
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module tb_operation();
reg clk,rst;
wire	[7:0]	oa;

initial begin
	clk = 0;
	rst = 1;
	#100;
	rst = 0 ;
end

always #10 clk = ~clk;

operation operation_inst(
	.clk(clk),
	.reset(rst),
	.po_a(oa)
	);

endmodule