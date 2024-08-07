######################################################################
#
# File name : tb_top_flash_led_simulate.do
# Created on: Wed Jul 10 22:01:28 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.tb_top_flash_led xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {tb_top_flash_led_wave.do}

view wave
view structure
view signals

do {tb_top_flash_led.udo}

run 1000ns
