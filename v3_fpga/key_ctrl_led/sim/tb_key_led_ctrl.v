//----------------------------------------------------------------------------------
// 作          者 ：ltang
// 邮          箱 ：ltang_sh@163.com
// 创          建 : 2022.7.5
// 修          订 ：
// 开    发    板  ：
// 开  发  环  境  ：win11/64/Vivado


// Module Name   : tb_key_ctrl_led
// Project Name  : tb_key_ctrl_led
// Target Devices: 
// Description   : tb_key_ctrl_led

//----------------------------------------------------------------------------------

`timescale 1 ns / 1 ns

module tb_key_ctrl_led();
reg tb_key1;
reg tb_key2;
reg tb_key3;

wire tb_led;

always #10  tb_key1 = {$random};
always #10  tb_key2 = {$random};
always #10  tb_key3 = {$random};

key_ctrl_led key_ctrl_led_inst(
	.m_key1(tb_key1),
	.m_key2(tb_key2),
	.m_key3(tb_key3),
	.m_led(tb_led)
);



endmodule