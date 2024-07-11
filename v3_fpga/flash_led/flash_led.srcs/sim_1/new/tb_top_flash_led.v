// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_top_flash_led.v
// Create : 2024-07-10 21:08:28
// Revise : 2024-07-10 21:15:17
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------

`timescale 1ns / 1ps

module tb_top_flash_led (); /* this is automatically generated */

	// clock
	reg sclk;

	initial begin
		sclk = 0;
		forever #(10) sclk = ~sclk;
	end

	wire  led;

	top_flash_led inst_top_flash_led (.sclk(sclk), .led(led));


endmodule