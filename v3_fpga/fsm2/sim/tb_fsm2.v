// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : tb_fsm2.v
// Create : 2024-07-16 13:43:10
// Revise : 2024-07-16 15:40:15
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------

`timescale 1ns/1ns


module tb_fsm2();


reg		rst_n,clk,tb_i_money;
wire 	tb_o_cola;
wire 	tb_o_money;

initial begin
	
	rst_n 	= 0;
	clk 	= 0;
	tb_i_money = 0;
	#100;
	rst_n	= 1;
end


always #10 clk = ~clk;

always #20 tb_i_money = {$random};

fsm2 inst_fsm2 (
			.clk           (clk),
			.rst_n         (rst_n),
			.pi_money      (tb_i_money),
			.po_cola       (tb_o_cola),
			.po_back_money (tb_o_money)
		);
	


endmodule