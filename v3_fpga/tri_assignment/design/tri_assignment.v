// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tri_assignment.v
// Create : 2024-07-09 16:38:47
// Revise : 2024-07-09 16:46:25
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module tri_assignment(
	input wire	clk,
	input wire	a,
	input wire	b,
	output wire	c1,
	output reg	c2,
	output reg	c3
	);

assign c1 = a&b;

always @(posedge clk)
	begin
		c2 <= a&b;
	end

//always @(a or b) begin
always @(*) begin
	c3 <= a&b;
end

endmodule