// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_breath_led.v
// Create : 2024-07-10 13:58:41
// Revise : 2024-07-10 13:58:44
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1ns/1ns
module tb_breathing_led();
reg 	clk,rst_n;
wire 	led;

initial begin
	rst_n =0;
	clk =0;
	#100;
	rst_n =1;
end
always #10 clk = ~clk;

breathing_led breathing_led_inst(
	.clk(clk),
	.rst_n(rst_n),
	.led(led)
	);
endmodule