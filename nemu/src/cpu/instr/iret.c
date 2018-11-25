#include "cpu/instr.h"

make_instr_func(iret) {

	OPERAND r;
	r.type=OPR_MEM;
	r.data_size=32;
	r.sreg=SREG_SS;

	r.addr=cpu.esp;
	operand_read(&r);
	cpu.eip=r.val;
	cpu.esp+=4;

	r.addr=cpu.esp;
	operand_read(&r);
	cpu.cs.val=(uint16_t)r.val;
	cpu.esp+=4;

	r.addr=cpu.esp;
	operand_read(&r);
	cpu.eflags.val=r.val;
	cpu.esp+=4;
	return 0;
}
