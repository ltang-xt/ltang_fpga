onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib blk_256x8_opt

do {wave.do}

view wave
view structure
view signals

do {blk_256x8.udo}

run -all

quit -force
