#include"cpu/instr.h"
#include "cpu/alu.h"

static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
        opr_dest.val=alu_add(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(add,i,rm,v) 
make_instr_impl_2op(add,i,rm,bv)
make_instr_impl_2op(add,r,rm,v)
make_instr_impl_2op(add,rm,r,b)
make_instr_impl_2op(add,rm,r,v)
make_instr_impl_2op(add,i,a,v)

