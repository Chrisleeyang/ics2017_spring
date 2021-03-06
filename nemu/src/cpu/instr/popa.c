#include "cpu/instr.h"

make_instr_func(popa_v) {
	/*OPERAND reg[8];
	int len = 1;

	for(int i = 0; i < 8; i++) {
		reg[i].data_size = data_size;
		reg[i].type = OPR_MEM;
		reg[i].sreg = SREG_SS;
	}
	
	for(int i = 7; i >= 0; i--) {
		reg[i].addr = cpu.esp;
		cpu.esp += data_size/8;
		operand_read(&reg[i]);
	}

	for(int i = 0; i < 8; i++) {
		reg[i].type = OPR_REG;
		reg[i].addr = i;
		if(i != REG_ESP)
			operand_write(&reg[i]);
	}

	return len;*/
    cpu.edi=vaddr_read(cpu.esp,2,4);
	cpu.esp+=4;
	cpu.esi=vaddr_read(cpu.esp,2,4);
	cpu.esp+=4;
	cpu.ebp=vaddr_read(cpu.esp,2,4);
	cpu.esp+=4;
	cpu.esp+=4;
	cpu.ebx=vaddr_read(cpu.esp,2,4);
	cpu.esp+=4;
	cpu.edx=vaddr_read(cpu.esp,2,4);
	cpu.esp+=4;
	cpu.ecx=vaddr_read(cpu.esp,2,4);
	cpu.esp+=4;
	cpu.eax=vaddr_read(cpu.esp,2,4);
	cpu.esp+=4;
	return 1;
}
