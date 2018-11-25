#include "cpu/instr.h"

//int times = 0;

make_instr_func(call_rel_v) {

	OPERAND opr_eip, imm;
	int len = 1 + data_size/8;
	cpu.esp -= data_size/8;
	
	opr_eip.type = OPR_MEM;
	opr_eip.data_size = data_size;
	opr_eip.val = eip + len;
	opr_eip.addr = cpu.esp;
	opr_eip.sreg = SREG_SS;
	operand_write(&opr_eip);

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + 1;
	operand_read(&imm);
	print_asm_1("call", "", len, &imm);

	assert(data_size == 16 || data_size == 32);
	if(data_size == 16) {
		imm.val = (int32_t)(imm.val << 16) >> 16;
	}
	
	len += (int32_t)imm.val;
	return len;
}

make_instr_func(call_rm_v) {
	OPERAND rm, opr_eip;
	int len = 1;
	cpu.esp -= data_size/8;
	
	rm.data_size = data_size;
	len += modrm_opcode_rm(eip + len, &opcode, &rm);
	operand_read(&rm);

	opr_eip.data_size = data_size;
	opr_eip.type = OPR_MEM;
	opr_eip.addr = cpu.esp;
	opr_eip.val = eip + len; 
	opr_eip.sreg = SREG_SS;
	operand_write(&opr_eip);

	print_asm_1("call	", "", len, &rm);
	assert(data_size == 16 || data_size == 32);
	cpu.eip=(data_size==16)?(rm.val & 0xffff):rm.val;
	return 0;
}

make_instr_func(leave_v) {

    OPERAND pop;
	pop.type=OPR_IMM;
	pop.data_size=data_size;

	cpu.esp=cpu.ebp;

	pop.addr=cpu.esp;
	operand_read(&pop);

    cpu.esp += data_size/8;
	cpu.ebp=sign_ext(pop.val,data_size);

	return 1;
}

make_instr_func(ret_v) {

    OPERAND dest;
    dest.data_size=data_size;
    dest.type=OPR_MEM;
    dest.addr=cpu.esp;
    operand_read(&dest);
    cpu.esp+=4;

    cpu.eip=sign_ext(dest.val,data_size);

    return 0;
}

make_instr_func(ret_imm_v) {
	OPERAND imm, m;
	int len = 1;

	imm.type = OPR_IMM;
	m.type = OPR_IMM;

	imm.data_size = 16;
	m.data_size = data_size;

	m.addr = cpu.esp;
	operand_read(&m);
	cpu.esp += data_size/8;

	imm.addr = eip + len;
	len += 1;
	operand_read(&imm);
	cpu.esp += sign_ext(imm.val, 32);

	print_asm_1("ret", "", len, &imm);
	cpu.eip = m.val;

	return 0;
}

make_instr_func(lea_v) {

      OPERAND src,dest;
      int len=1;

      src.data_size=data_size;
      dest.data_size=data_size;
      len+=modrm_r_rm(eip+1,&dest,&src);
      
      dest.val=src.addr;
      operand_write(&dest);
      print_asm_2("lea","",len,&src,&dest);
      return len;
}
