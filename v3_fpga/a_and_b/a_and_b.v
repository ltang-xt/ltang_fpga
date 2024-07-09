// This is a simple study example.
// You can make a your own header file and set its path to settings.
// (Preferences > Package Settings > Verilog Gadget > Settings - User)
//
//		"header": "Packages/Verilog Gadget/template/verilog_header.v"
//
// -----------------------------------------------------------------------------
// Copyright (c) 2014-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang ltang_sh@163.com
// File   : a_and_b.v
// Create : 2024-07-09 13:52
// Revise : {RDATE} {RTIME}
// Editor : sublime text3,tab size(4)
// -----------------------------------------------------------------------------

module a_and_b(
	input wire  clk,
	input wire  pi_a,
	input wire  pi_b,

	output reg  po_c1,
	output wire  po_c2

);


always @(posedge clk) 
	begin
		po_c1 <= pi_a & pi_b;
	end


assign po_c2 = pi_a & pi_b;

endmodule