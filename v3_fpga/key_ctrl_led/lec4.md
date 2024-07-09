//----------------------------------------------------------------------------------

//Lec4 answer Source Code :

// Auther                 ：ltang
// Email                   ：ltang_sh@163.com
// Created by          : 2022.7.5

// Module Name    : key_ctrl_led
// Project Name     : key_ctrl_led
// Target Devices   : 
// Description         : key_ctrl_led

//----------------------------------------------------------------------------------

module key_ctrl_led(
input wire m_key1,
input wire m_key2,
input wire m_key3,

output wire m_led
);

//assign  led = key1 & key2;
assign  m_led = m_key1 & m_key2 & m_key3 ;

endmodule 



//----------------------------------------------------------------------------------

//Lec4 answer Test bench

// Auther                 ：ltang
// Email                   ：ltang_sh@163.com
// Created by          : 2022.7.5



// Module Name    : key_ctrl_led
// Project Name     : key_ctrl_led
// Target Devices   : 
// Description         : key_ctrl_led

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