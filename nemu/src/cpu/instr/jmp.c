#include "cpu/instr.h"

make_instr_func(jmp_near) {
        OPERAND rel;
        rel.type = OPR_IMM;
		rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

	int offset = sign_ext(rel.val, data_size);
	print_asm_1("jmp", "", 1 + data_size/8, &rel);

	cpu.eip += offset;

        return 1 + data_size / 8;
}

make_instr_func(jmp_r_v) {
	OPERAND imm;
	
	int len = 1;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += data_size/8;
	imm.data_size = data_size;
	print_asm_1("jmp rel", "", len, &imm);
	operand_read(&imm);
	
	assert(imm.data_size == 32 || imm.data_size == 16);
	if(imm.data_size == 16)
		len += (int32_t)(imm.val << 16) >> 16;
	else
		len += imm.val;
	return len;
}

make_instr_func(jmp_r_b){
	OPERAND rel;
	rel.type=OPR_IMM;
//	rel.sreg=SREG_CS;
	rel.data_size=8;
	rel.addr=eip+1;

	operand_read(&rel);

	int offset =sign_ext(rel.val,8);
	print_asm_1("jmp","",2,&rel);

	cpu.eip+=offset;

	return 2;
}

make_instr_func(jmp_rm_v){
	OPERAND src;
	src.type=OPR_MEM;
	src.data_size=data_size;
	modrm_rm(eip+1,&src);

	operand_read(&src);

	if(data_size==16)
		cpu.eip=src.val & 0xffff;
	else
		cpu.eip=src.val;

	return 0;
}

make_instr_func(ljmp_v) {
    OPERAND imm,sreg_cs;
	imm.type=OPR_IMM;
	imm.sreg=SREG_CS;
	imm.addr=eip+1;
	imm.data_size=data_size;
	operand_read(&imm);

	sreg_cs.type=OPR_IMM;
	sreg_cs.sreg=SREG_CS;
	sreg_cs.addr=eip+5;
	sreg_cs.data_size=16;
	operand_read(&sreg_cs);
	cpu.cs.val=sreg_cs.val;

	load_sreg(SREG_CS);
	cpu.eip=imm.val;
	return 0;
}




