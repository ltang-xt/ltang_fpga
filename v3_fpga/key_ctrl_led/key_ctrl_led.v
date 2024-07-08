//----------------------------------------------------------------------------------
// 作          者 ：ltang
// 邮          箱 ：ltang_sh@163.com
// 创          建 : 2022.7.5
// 修          订 ：
// 开    发    板  ：
// 开  发  环  境  ：win11/64/Vivado


// Module Name   : key_ctrl_led
// Project Name  : key_ctrl_led
// Target Devices: 
// Description   : key_ctrl_led

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