#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	uint32_t res=0;
	res=opr_src.val & opr_dest.val;
	cpu.eflags.CF=cpu.eflags.OF=0;
	cpu.eflags.ZF=(res==0);
	cpu.eflags.SF=sign(res);
	int count=0,rem=0,rest=0;
	for(int i=0;i<8;i++){
		rest=res>>1;
		rem=res%2;
		if(rem==1)
			count++;
		res=rest;
	}
	if(count%2==0)
		cpu.eflags.PF=1;
	else
		cpu.eflags.PF=0;
} 

make_instr_impl_2op(test,r,rm,b)
make_instr_impl_2op(test,r,rm,v)
make_instr_impl_2op(test,i,rm,v)
make_instr_impl_2op(test,i,rm,b)
make_instr_impl_2op(test,i,a,v)
make_instr_impl_2op(test,i,a,b)

/*static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val = alu_and(opr_src.val, opr_dest.val);
} 

make_instr_impl_2op(test, r, rm, b)
make_instr_impl_2op(test, i, rm, v)
make_instr_impl_2op(test, i, rm, b)

make_instr_func(test_r2rm_v) {
	OPERAND r, rm;
	int len = 1;

	r.data_size = data_size;
	rm.data_size = data_size;

	len += modrm_r_rm(eip + len, &r, &rm);

	operand_read(&r);
	operand_read(&rm);
	alu_and(r.val, rm.val);

	print_asm_2("test", "", len, &r, &rm);
	return len;
}

make_instr_func(test_i2ax_v) {
	OPERAND imm, ax;
	int len = 1;

	imm.data_size = data_size;
	ax.data_size = data_size;

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += data_size/8;
	operand_read(&imm);

	ax.type = OPR_REG;
	ax.addr = REG_EAX;
	operand_read(&ax);

	ax.val = alu_and(imm.val, ax.val);
	//	the result of the operation is discarded,
	 // 	and only the flags are modified.
	 //
	
	return len;
}

make_instr_func(test_i2al_b) {
	OPERAND imm, al;
	int len = 1;
	
	imm.data_size = 8;
	al.data_size = 8;

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += 1;
	operand_read(&imm);

	al.type = OPR_REG;
	al.addr = REG_AL;
	operand_read(&al);

	al.val = alu_and(imm.val, al.val);
	
	return len;
}*/
