// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : div_clk1.v
// Create : 2024-07-11 20:39:51
// Revise : 2024-07-11 22:13:56
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module div_clk1(
	input wire clk,
	input wire rst_n,
	output reg po_flag
	);

wire rst;
reg [1:0]	div_cnt;
assign rst = ~rst_n;


//div cnt

always @(posedge clk) begin
	if(rst == 1'b1) begin
		div_cnt <=0;
	end
	else if (div_cnt == 'd3) begin
		div_cnt <= 'd0 ;
	end
	else begin
		div_cnt <= div_cnt + 'd1 ;
	end
end

//po_flag

always @(posedge clk) begin
	if(rst == 1'b1) begin
		po_flag <= 'd0;
	end
	else if (div_cnt == 'd2) begin
		po_flag <= 'd1;
	end
	else begin
		po_flag <= 'd0;
	end
end

endmodule