#include <assert.h>
#include "cpu/instr.h"

make_instr_func(lgdt_v) {
//	printf("111111111111111111111\n");
	int len = 1;
	OPERAND res1,res2;
	res1.data_size=16;
	res2.data_size=32;
  //      printf("!!!!!!!!!!!!!!!!!!\n");
	len+=modrm_rm(eip+1,&res1);
	modrm_rm(eip+1,&res2);
	res2.addr=res1.addr+2;
	operand_read(&res1);
	operand_read(&res2);
    assert(data_size == 16 || data_size == 32);
//	printf("????????????????\n");
	if(data_size==16){
		cpu.gdtr.base = res2.val & 0x00ffffff;
        	cpu.gdtr.limit =res1.val ;
	}
	else{
		cpu.gdtr.base=res2.val;
		cpu.gdtr.limit=res1.val;
	}
//        printf("...................\n");
	return len;
}

