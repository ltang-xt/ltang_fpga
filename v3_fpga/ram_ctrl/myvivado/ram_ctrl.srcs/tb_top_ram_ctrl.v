// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_top_ram_ctrl.v
// Create : 2024-07-16 17:34:53
// Revise : 2024-07-16 17:42:21
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1ns / 1ps



module tb_top_ram_ctrl();


	reg clk;
	reg srst;	


	// clock
	initial begin
		clk = 0;
		forever #(10) clk = ~clk;
	end

	// reset

	initial begin
		srst <= 0;
		#20
		repeat(5)@(posedge clk);
		srst <= 1;
	end

	wire [7:0] po_data;

	top_ram_ctrl inst_top_ram_ctrl (.clk(clk), .rst_n(srst), .po_data(po_data));


endmodule
