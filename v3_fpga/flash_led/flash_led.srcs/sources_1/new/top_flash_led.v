//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/10 20:28:53
// Design Name: 
// Module Name: top_flash_led
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps



module top_flash_led(
	input	wire 		sclk,//50 Mhz osc input
	output	reg			led = 1'b1, // driver led flash
	output	wire 		ledg,
	output	wire 		ledb 
    );

assign ledg = 1;
assign ledb = 1;

parameter DIV_CNT_END = 5000_0000 - 1;

reg		[25:0]	div_cnt = 'd0;
reg		one_s_flag = 'd0;	


always @(posedge sclk) begin
	if (div_cnt == DIV_CNT_END) begin
		div_cnt <= 0 ;
	end
	else begin
		div_cnt <= div_cnt + 1 ;
	end
end

always @(posedge sclk) begin
	if(div_cnt == DIV_CNT_END) begin
		one_s_flag <= 1;
	end
	else begin
		one_s_flag <= 0;
	end
end

always @(posedge sclk) begin
	if(one_s_flag == 1'b1) begin
		led <= ~led;
	end
end


endmodule
