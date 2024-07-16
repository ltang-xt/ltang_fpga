virtual type { \
{0x1 IDLE}\
{0x2 ONE}\
{0x4 TWO}\
} abc
virtual function -install /tb_ex1_fsm/inst_fsm -env /tb_ex1_fsm { (abc)/tb_ex1_fsm/inst_fsm/state} new_state
