virtual type { \
{0x1 IDLE}\
{0x2 S0D5}\
{0x4 S1D0}\
{0x8 S1D5}\
{0x10 S2D0}\
} abc
virtual function -install /tb_fsm2/inst_fsm2 -env /tb_fsm2 { (abc)/tb_fsm2/inst_fsm2/state} new_state
