// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : top_ram_ctrl.v
// Create : 2024-07-16 16:58:24
// Revise : 2024-07-16 17:32:41
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1ns / 1ps



module top_ram_ctrl(
	input 	wire	clk,
	input	wire	rst_n,
	output	wire	[7:0]	po_data	
    );

reg		[7:0]	pi_data = 0;
reg				wr_en = 0;
reg		[7:0]	wr_addr = 0;
wire	[7:0]	wr_data ;
reg		[7:0]	rd_addr = 0;
wire	[7:0]	rd_data ;
reg 			first_wr_n=0;


always @(posedge clk ) begin
	if(rst_n == 1'b0)begin
		wr_en <= 0;
	end
	else if( wr_en == 1'b0 && first_wr_n == 1'b0) begin
		wr_en <= 1'b1;
	end
	else if(rd_addr == 'd255) begin
		wr_en <= 1'b1;
	end
	else if(wr_addr == 'd255) begin
		wr_en <= 1'b0;
	end
end


always @(posedge clk ) begin
	if(rst_n == 1'b0)begin
		wr_addr <= 'd0;
	end
	else if (wr_en == 'd1 && wr_addr == 'd255) begin
		wr_addr <= 'd0;
	end
	else if (wr_en == 'd1) begin
		wr_addr <= wr_addr+ 1'b1;
	end
end

always @(posedge clk) begin
	if(rst_n == 1'b0) begin
		pi_data <= 'd0;
	end
	else if(wr_en == 1'b1 &&pi_data == 'd255) begin
		pi_data <= 'd0;
	end
	else if (wr_en == 1'b1) begin
		pi_data <= pi_data + 1'b1;
	end
end

assign wr_data = pi_data;



always @(posedge clk ) begin
	if(rst_n == 1'b0)begin
		rd_addr <= 'd0;
	end
	else if (wr_en == 'd0 && wr_addr == 'd255) begin
		rd_addr <= 'd0;
	end
	else if (wr_en == 'd0) begin
		rd_addr <= rd_addr+ 1'b1;
	end
	else if (wr_en == 1'b1) begin
		rd_addr <= 'd0;
	end
end

blk_256x8 blk_256x8_inst (
  .clka(clk),    // input wire clka
  .wea(wr_en),      // input wire [0 : 0] wea
  .addra(wr_addr),  // input wire [7 : 0] addra
  .dina(wr_data),    // input wire [7 : 0] dina
  .clkb(clk),    // input wire clkb
  .addrb(rd_addr),  // input wire [7 : 0] addrb
  .doutb(rd_data)  // output wire [7 : 0] doutb
);

assign po_data = rd_data;

always @(posedge clk) begin
	if(rst_n == 1'b0) begin
		first_wr_n <= 1'b0;
	end
	else if (wr_addr == 'd255) begin
		first_wr_n <= 1'b1;
	end
end

endmodule
