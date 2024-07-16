// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : fsm.v
// Create : 2024-07-16 13:14:45
// Revise : 2024-07-16 13:37:54
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module fsm(
	input 	wire 	clk,
	input 	wire	rst_n,
	input	wire	pi_money,
	output	reg		po_cola
	);

//3'b001,3'b010,3'b100  one hot
reg[2:0]	state;

parameter IDLE	= 	3'b001;
parameter ONE 	=  	3'b010;
parameter TWO 	=  	3'b100;

//state
always @(posedge clk or negedge rst_n) begin
	if (rst_n == 1'b0) begin
		// reset
		state <= IDLE;		
	end
	else  begin
		case (state)
			IDLE: if(pi_money == 1'b1) begin
					state <= ONE;
				end
			ONE: if(pi_money == 1'b1) begin
					state <= TWO;
				end
			TWO: if(pi_money == 1'b1) begin
					state <= IDLE;
				end
			default: state <= IDLE;
		endcase
	end
end


always @(posedge clk or negedge rst_n) begin
	if (rst_n == 1'b0) begin
		// reset
		po_cola <= 1'b0;
	end
	else if (state == TWO && pi_money == 1'b1) begin
		po_cola <= 1'b1;
	end
	else begin
		po_cola <= 1'b0;
	end
end


endmodule