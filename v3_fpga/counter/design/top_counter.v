// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : top_counter.v
// Create : 2024-07-09 20:06:12
// Revise : 2024-07-09 20:33:53
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module top_counter(
	input	wire			clk,
	input 	wire			rst,
	output 	reg		[3:0]	po_cnt
	);


always @(posedge clk) begin
	if(rst == 1) begin
		po_cnt <= 4'b0000;
	end
	// else if(po_cnt == 4'b1111) begin
	// 	po_cnt <= 4'b0000;
	// end
	else begin
		po_cnt <= po_cnt + 4'b0001;
	end

end

endmodule