quit -sim  

.main clear 

vlib work

vlog ./tb_fsm2.v 
vlog ./../design/*.v

vsim -voptargs=+acc work.tb_fsm2

virtual type {
	{5'b00001  IDLE}
	{5'b00010  S0D5}
	{5'b00100  S1D0}
	{5'b01000  S1D5}
	{5'b10000  S2D0}
} abc;

virtual function {(abc)/tb_fsm2/inst_fsm2/state} new_state

add wave  /tb_fsm2/inst_fsm2/*

run 1us