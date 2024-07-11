// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : div_clk4_1.v
// Create : 2024-07-10 14:29:22
// Revise : 2024-07-10 19:40:42
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module div_clk4_1(
	input wire clk,
	input wire rst_n,

	output reg 	[1:0]	po_cnt = 'd0

	);

reg 	[1:0]	div_cnt;
reg 			clk_4;


always @(posedge clk) begin
	if(rst_n == 1'b1)begin
		div_cnt <= 'd0;
	end
	else if(div_cnt == 'd3)begin
		div_cnt <= 'd0;
	end
	else begin
		div_cnt <= div_cnt + 'b1;
	end
end


always @(posedge clk) begin
	if (rst_n == 1'b1)begin
		clk_4 <= 1'b0;
	end
	else if(div_cnt == 2'd1) begin
		clk_4 <= 1'b1;
	end
	else if(div_cnt == 2'd3) begin
		clk_4 <= 1'b0;
	end
end

always @(posedge clk_4) begin
	if(rst_n == 1'b1) begin
		po_cnt <= 'd0;
	end
	else if(po_cnt == 2'd3)begin
		po_cnt <= 'd0;
	end
	else begin
		po_cnt <= po_cnt + 1'b1;
	end
end

endmodule