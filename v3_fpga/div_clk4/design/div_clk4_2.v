// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : div_clk4_2.v
// Create : 2024-07-10 14:29:22
// Revise : 2024-07-10 19:59:39
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module div_clk4_2(
	input	wire 			clk,
	input	wire 			rst,
	output	reg		[1:0]	po_cnt = 'd0
	);
//div counter
reg		[1:0]	div_cnt;
reg				div_flag;

always @(posedge clk)begin
	if(rst  == 1'b1)begin
		div_cnt <= 'd0;
	end
	else if(div_cnt == 2'd3)begin
		div_cnt <= 'd0;
	end
	else begin
		div_cnt <= div_cnt + 1'b1;
	end
end

always @(posedge clk) begin
	if (rst == 1'b1 ) begin
		div_flag <= 1'b0;
	end
	else if (div_cnt == 2'd1) begin
		div_flag <= 1'b1;
	end
	else begin
		div_flag <= 1'b0;
	end
end

always @(posedge clk)begin
		if(rst == 1'b1)begin
			po_cnt <= 'd0;
		end
		else if(div_flag == 1'b1) begin
			po_cnt <= po_cnt + 1'b1;
		end
		//else begin
			//po_cnt <= po_cnt;
		//end
end

endmodule