#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val = alu_sub(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val);
	operand_write(&opr_dest);
}

/*make_instr_func(sub_i2rm_bv) {
	OPERAND imm, rm;
	int len = 1;
	
	imm.data_size = 8;
	rm.data_size = data_size;

	len += modrm_opcode_rm(eip + len, &opcode, &rm);
	operand_read(&rm);

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += 1;
	operand_read(&imm);
	
	imm.data_size = data_size;
	if(data_size == 16) {
		imm.val = (int16_t)(imm.val << 8) >> 8;
	}
	else if(data_size == 32) {
		imm.val = (int32_t)(imm.val << 24) >> 24;
	}

	rm.val = alu_sub(imm.val, rm.val);
	operand_write(&rm);
	print_asm_2("sub", "", len, &imm, &rm);

	return len;
}*/

make_instr_func(sub_i2eax_v) {
	OPERAND imm, opr_eax;
	int len = 1;

	imm.data_size = data_size;
	opr_eax.data_size = data_size;

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);
	len += data_size/8;

	opr_eax.type = OPR_REG;
	opr_eax.addr = REG_EAX;
	operand_read(&opr_eax);
	opr_eax.val = alu_sub(imm.val, opr_eax.val);
	operand_write(&opr_eax);

	return len;
}
make_instr_impl_2op(sub,i,rm,bv)
make_instr_impl_2op(sub, rm, r, v)
make_instr_impl_2op(sub, r, rm, v)
make_instr_impl_2op(sub, i, rm, v)
