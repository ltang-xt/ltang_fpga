// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tri_assignment_2.v
// Create : 2024-07-09 17:15:50
// Revise : 2024-07-09 17:33:42
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module tri_assignment_2(
	input wire clk,
	input wire ia,
	input wire ib,
	output reg oc = 1
	);

always @(posedge clk) begin
	oc <= ia | ib;
end


endmodule