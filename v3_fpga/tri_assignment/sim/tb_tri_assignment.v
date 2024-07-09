// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_tri_assignment.v
// Create : 2024-07-09 16:48:27
// Revise : 2024-07-09 16:58:34
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1 ns / 1 ns

module tb_tri_assignment();

reg clk;
reg tb_a;
reg tb_b;
wire tb_out_c1;
wire tb_out_c2;
wire tb_out_c3;

initial begin
	clk = 0;

end

always #5 clk = ~clk;

always #15 tb_a = {$random};
always #20 tb_b = {$random};

tri_assignment tri_assignment_inst(
	.clk(clk),
	.a(tb_a),
	.b(tb_b),
	.c1(tb_out_c1),
	.c2(tb_out_c2),
	.c3(tb_out_c3)
	);

endmodule