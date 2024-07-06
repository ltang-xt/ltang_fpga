//----------------------------------------------------------------------------------
// 作          者 ：ltang
// 邮          箱 ：ltang_sh@163.com
// 创          建 : 2024.7.5
// 修          订 ：
// 开    发    板  ：CGD100
// 开  发  环  境  ：win11/64/GOWIN FPGA Designer 1.9.8.07


// Module Name   : waterlight
// Project Name  : waterlight
// Target Devices: GW1N-UV4LQ144C6/I5
// Description   : 点灯实验

//----------------------------------------------------------------------------------

module waterlight(
    input clk50m,
    input rst_n,
    output reg [7:0] led
);

    reg [29:0] cn=0;
    always @(posedge clk50m or negedge rst_n)
        if(!rst_n) begin
            cn <=0;
            led <= 8'hff;
            end
        else begin
            if(cn > 30'd8000_0000) cn<=0;
            else cn <= cn +1;
            if(cn <30'd1000_0000) led <= 8'b0000_0001;
            else if(cn <30'd2000_0000) led <= 8'b0000_0010;
            else if(cn <30'd3000_0000) led <= 8'b0000_0100;
            else if(cn <30'd4000_0000) led <= 8'b0000_1000;
            else if(cn <30'd5000_0000) led <= 8'b0001_0000;
            else if(cn <30'd6000_0000) led <= 8'b0010_0000;
            else if(cn <30'd7000_0000) led <= 8'b0100_0000;
            else led <= 8'b1000_0000;
            end
endmodule









