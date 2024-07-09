// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_tri_assignment_2.v
// Create : 2024-07-09 17:18:48
// Revise : 2024-07-09 17:31:19
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------

`timescale 1 ns / 1 ns

module tb_tri_assignment_2();

reg clk;
reg tb_a;
reg tb_b;
wire tb_out_c;

initial 
	clk = 0;

initial begin
	tb_a = 0;
	#10
	tb_a = 1;
	#40
	tb_a = 0;
end

initial begin
	tb_b = 1;
	#30
	tb_b = 0;
end


tri_assignment_2 tb_tri_assignment_2_inst(
	.clk(clk),
	.ia(tb_a),
	.ib(tb_b),
	.oc(tb_out_c)
	);

always #5 clk = ~clk;

endmodule