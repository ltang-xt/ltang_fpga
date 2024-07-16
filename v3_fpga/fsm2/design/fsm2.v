// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : fsm2.v
// Create : 2024-07-16 13:14:45
// Revise : 2024-07-16 15:52:26
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module fsm2(
	input 	wire 	clk,
	input 	wire	rst_n,
	input	wire	pi_money,
	output	reg		po_cola,
	output  reg     po_back_money
	);


reg[4:0]	state;

parameter IDLE	= 	5'b00001;
parameter S0D5 	=  	5'b00010;
parameter S1D0 	=  	5'b00100;
parameter S1D5 	=  	5'b01000;
parameter S2D0 	=  	5'b10000;

//state
always @(posedge clk or negedge rst_n) begin
	if (rst_n == 1'b0) begin
		// reset
		state <= IDLE;		
	end
	else  begin
		case (state)
			IDLE: 
				if(pi_money == 1'b0) begin
					state <= S0D5;
				end
				else if (pi_money == 1'b1) begin
					state <= S1D0;
				end
			S0D5: if(pi_money == 1'b0) begin
					state <= S1D0;
				end
				else if (pi_money == 1'b1) begin
					state <= S1D5;
				end
			S1D0: if(pi_money == 1'b0) begin
					state <= S1D5;
				end
				else if (pi_money == 1'b1) begin
					state <= S2D0;
				end
			S1D5: if(pi_money == 1'b0) begin
					state <= S2D0;
				end
				else if (pi_money == 1'b1) begin
					state <= IDLE;
				end
			S2D0: if(pi_money == 1'b0) begin
					state <= IDLE;
				end
				else if (pi_money == 1'b1) begin
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
		po_back_money <= 1'b0;
	end
	else if (state == S1D5 && pi_money == 1'b1) begin
		po_cola <= 1'b1;
		po_back_money <= 1'b0;
	end
	else if (state == S2D0 && pi_money == 1'b0) begin
		po_cola <= 1'b1;
		po_back_money <= 1'b0;
	end
	else if (state == S2D0 && pi_money == 1'b1) begin
		po_cola <= 1'b1;
		po_back_money <= 1'b1;
	end
	else begin
		po_cola <= 1'b0;
		po_back_money <= 1'b0;
	end
end


endmodule