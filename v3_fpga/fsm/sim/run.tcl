quit -sim  

.main clear 

vlib work

vlog ./tb_ex1_fsm.v 
vlog ./../design/*.v

vsim -voptargs=+acc work.tb_ex1_fsm

virtual type {
	{3'b001  IDLE}
	{3'b010  ONE}
	{3'b100  TWO}
} abc;

virtual function {(abc)/tb_ex1_fsm/inst_fsm/state} new_state

add wave  /tb_ex1_fsm/inst_fsm/*

run 1us