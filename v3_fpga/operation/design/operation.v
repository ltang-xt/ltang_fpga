// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : operation.v
// Create : 2024-07-09 18:27:35
// Revise : 2024-07-09 19:06:24
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------

module operation(
	input	wire			clk,
	input 	wire 			reset,
	output 	reg 	[7:0] 	po_a
	);

// always @(posedge clk)
// 	if(reset == 1'b1)
// 		po_a <= 8'b0000_0001;
// 	else if(po_a == 8'b1000_0000)
// 		po_a <= 8'b0000_0001;
// 	else	
// 		po_a <= po_a << 1;


always @(posedge clk)
	if(reset == 1'b1)
		po_a <= 8'b0000_0001;
	// else if(po_a == 8'b1000_0000)
	// 	po_a <= 8'b0000_0001;
	else 
		po_a <= {po_a[6:0],po_a[7]};
endmodule