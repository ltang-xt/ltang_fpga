// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : a_and_b.v
// Create : 2024-07-11 20:52:07
// Revise : 2024-07-11 21:11:45
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module a_and_b(
	input 		wire 		pi_flag,
	input 		wire 		pi_a,
	input 		wire 		pi_b,
	input 		wire 		rst_n,
	input 		wire 		clk,
	output 		reg 		po_c
	);

wire rst;
assign rst = ~rst_n;

always @(posedge clk) begin
	if (rst == 1) begin
		po_c <= 'd0 ;
	end
	else if (pi_flag == 'd1) begin
		po_c <= pi_a & pi_b;
	end
end

endmodule