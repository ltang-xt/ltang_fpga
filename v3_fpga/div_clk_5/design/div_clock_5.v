// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : div_clock_5.v
// Create : 2024-07-11 12:28:01
// Revise : 2024-07-11 13:46:42
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module div_clock_5(
	input 	wire 	clk,
	input 	wire 	rst,
	output 	wire 	clk_5

	);

reg		[2:0]	pos_cnt;
reg				pos_clk;
reg		[2:0]	neg_cnt;
reg				neg_clk;

always  @(posedge clk) begin
	if (rst == 1'b1) begin
		pos_cnt <= 0;
	end
	else if (pos_cnt == 'd6) begin
		pos_cnt <= 0;
	end
	else begin
		pos_cnt <= pos_cnt + 'd1;
	end
end

always @(posedge clk) begin
	if(rst == 1'b1) begin
		pos_clk <=0;
	end
	else if(pos_cnt == 'd3) begin
		pos_clk <=1;
	end
	else if(pos_cnt == 'd6) begin
		pos_clk <= 0;
	end
end


always  @(negedge clk) begin
	if (rst == 1'b1) begin
		neg_cnt <= 0;
	end
	else if (neg_cnt == 'd6) begin
		neg_cnt <= 0;
	end
	else begin
		neg_cnt <= neg_cnt + 'd1;
	end
end

always @(negedge clk) begin
	if(rst == 1'b1) begin
		neg_clk <=0;
	end
	else if(neg_cnt == 'd3) begin
		neg_clk <=1;
	end
	else if(neg_cnt == 'd6) begin
		neg_clk <= 0;
	end
end


assign clk_5 = neg_clk | pos_clk;

endmodule