#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val=alu_or(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(or, r, rm, v)
make_instr_impl_2op(or, rm, r, b)
make_instr_impl_2op(or, i, rm, b)
make_instr_impl_2op(or, i, rm, v)
make_instr_impl_2op(or, rm, r, v)
make_instr_impl_2op(or, i, rm, bv)

/*make_instr_func(or_i2rm_bv) {
	OPERAND imm, rm;
	int len = 1;

	imm.data_size = 8;
	rm.data_size = data_size;

	len += modrm_opcode_rm(eip + 1, &opcode, &rm);
	operand_read(&rm);

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += 1;
	operand_read(&imm);

	assert(data_size == 16 || data_size == 32);
	if(data_size == 16) 
		imm.val = (imm.val << 8) >> 8;
	else 
		imm.val = (imm.val << 24) >> 24;
	
	print_asm_2("or", "", len + 1, &imm, &rm);
	rm.val = alu_or(imm.val, rm.val);

	operand_write(&rm);
	return len;
}	*/
