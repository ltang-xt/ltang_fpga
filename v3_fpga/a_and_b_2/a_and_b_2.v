// -----------------------------------------------------------------------------
// Copyright (c) 2014-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang ltang_sh@163.com
// File   : a_and_b_2.v
// Create : 2024-07-09 13:52
// Revise : {RDATE} {RTIME}
// Editor : sublime text3,tab size(4)
// -----------------------------------------------------------------------------


module a_and_b_2(
	input wire  clk,
	input wire    [7:0] pi_a,
	input wire    [7:0] pi_b,

	output reg    [7:0] po_c
);

//parameter WIDTH = 7;

always @(posedge clk) 
	begin
		po_c <= pi_a & pi_b;
	end

endmodule