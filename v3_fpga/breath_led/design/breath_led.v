// This is a simple comment.
// You can make a your own file comments here.
// -----------------------------------------------------------------------------
// Copyright (c) 2020-2024 All rights reserved
// -----------------------------------------------------------------------------
// Author : ltang  ltang_sh@163.com
// File   : breath_led.v
// Create : 2024-07-10 13:30:28
// Revise : 2024-07-10 13:57:36
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module breathing_led(
	input	wire 			clk,
	input	wire 			rst_n,
	output	wire 			led,
	output	wire 			ledg,
	output	wire 			ledb 
	);
wire 				rst;
reg		[6:0]	clk50mcnt;
reg 	[9:0]	clk50mcnt_1000;
reg		[9:0]	pwm_cyc_cnt;
reg				pwm_flag;

assign ledg = 1;
assign ledb = 1;

assign  rst = ~rst_n;

always @(posedge clk)begin
	if(rst == 1'b1)begin
		clk50mcnt <= 'd0;
	end
	else if (clk50mcnt == 'd99) begin
		clk50mcnt <= 'd0;
	end
	else begin
		clk50mcnt <= clk50mcnt + 1'b1;
	end
end

always @(posedge clk)begin
	if(rst == 1'b1)begin
		clk50mcnt_1000 <= 'd0;
	end
	else if(clk50mcnt == 'd99 && clk50mcnt_1000=='d999)begin
		clk50mcnt_1000 <= 'd0;
	end
	else if (clk50mcnt == 'd99) begin
		clk50mcnt_1000 <= clk50mcnt_1000 + 1'b1;
	end
end

always @(posedge clk) begin
	if(rst == 1'b1)begin
		pwm_cyc_cnt <='d0;
	end
	else if (clk50mcnt == 'd99 && clk50mcnt_1000=='d999 && pwm_cyc_cnt == 'd999) begin
		pwm_cyc_cnt <= 'd0;
	end
	else if (clk50mcnt == 'd99 && clk50mcnt_1000=='d999) begin
		pwm_cyc_cnt <= pwm_cyc_cnt + 1'b1;
	end
end

always @(posedge clk )begin
	if (rst == 1'b1) begin
		pwm_flag <= 1'b0;
	end
	else if (clk50mcnt == 'd99 && clk50mcnt_1000=='d999 && pwm_cyc_cnt == 'd999) begin
		pwm_flag <= ~pwm_flag;
	end
end

assign led = (pwm_flag==1'b0)?((clk50mcnt_1000<pwm_cyc_cnt)?1'b0:1'b1):((clk50mcnt_1000<pwm_cyc_cnt)?1'b1:1'b0);

endmodule