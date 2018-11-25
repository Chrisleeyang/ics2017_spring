#include "cpu/cpu.h"


void set_PF(uint32_t result);
void set_ZF(uint32_t result);
void set_SF(uint32_t result);
 
//add
void set_CF_add(uint32_t result, uint32_t src);
void set_OF_add(uint32_t result, uint32_t src, uint32_t dest);

//adc 
void set_CF_adc(uint32_t result, uint32_t src, uint32_t dest);
void set_OF_adc(uint32_t result, uint32_t src, uint32_t dest);

//sub
void set_OF_sub(uint32_t result,uint32_t src,uint32_t dest);
//sbb
void set_CF_sbb(uint32_t result,uint32_t src, uint32_t dest);

//and or xor
void set_CF();
void set_OF();

//shl sal
void set_CF_shl(uint32_t src,uint32_t dest, size_t data_size);
void set_OF_shl(uint32_t src,uint32_t dest, size_t data_size);

//shr
void set_CF_shr(uint32_t src, uint32_t dest,size_t data_size);


uint32_t alu_add(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
        uint32_t res=0;
	res =dest+src;

	set_CF_add(res,src);
	set_PF(res);
	//set_AF();
	set_ZF(res);
	set_SF(res);
	set_OF_add(res,src,dest);

	return res;
}

uint32_t alu_adc(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
        uint32_t res=0;
	res=dest+src+cpu.eflags.CF;

	set_CF_adc(res,src,dest);
	set_PF(res);
	//set_AF();
	set_ZF(res);
	set_SF(res);
	set_OF_adc(res,src,dest);

	return res;
}


uint32_t alu_sub(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
	uint32_t res=0;
//	uint32_t src_neg=~src+1;
	res=dest-src;
	set_CF_add(dest,res);
	//if(cpu.eflags.CF)
	//	cpu.eflags.CF=0;
	set_PF(res);
	set_ZF(res);
	set_SF(res);
	//set_AF();
	set_OF_sub(res,src,dest);
//	printf("%d\n",res);
//	printf("%d\n",cpu.eflags.ZF);

	return res;
}

uint32_t alu_sbb(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
	uint32_t res=0;
	res=dest-src-cpu.eflags.CF;

	if(dest<src)
		cpu.eflags.CF=1;
	else
	{
		if(dest-src<cpu.eflags.CF)
			cpu.eflags.CF=1;
		else
			cpu.eflags.CF=0;
	}

	set_PF(res);
	set_ZF(res);
	set_SF(res);
	//set_AF();
	if(sign(dest)!=sign(src+cpu.eflags.CF)){
		if(sign(res)==sign(src+cpu.eflags.CF))
			cpu.eflags.OF=1;
		else
	                cpu.eflags.OF=0;
	}
	else
		cpu.eflags.OF=0;

	return res;
}


uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
        uint64_t res=0;
	res=(uint64_t) src*(uint64_t)dest;
	if(data_size==32){
		if((res>>32)<<32==0){
			cpu.eflags.CF=cpu.eflags.OF=0;
		}
		else
			cpu.eflags.CF=cpu.eflags.OF=1;
	}
	else if(data_size==16){
		if((res>>16)<<16==0){
			cpu.eflags.CF=cpu.eflags.OF=0;
		}
		else
			cpu.eflags.CF=cpu.eflags.OF=1;
	}
	else if(data_size==8){
		if((res>>8)<<8==0)
			cpu.eflags.CF=cpu.eflags.OF=0;
		else
			cpu.eflags.CF=cpu.eflags.OF=1;
	}
	return res;
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
        int64_t res=0;
	res=(int64_t)src*(int64_t)dest;
	return res;
}

uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
        if(src==0)
		assert(0);
	else{
		uint32_t res=0;
		res=dest/src;
		return res;
	}
}

int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
        if(src==0)
		assert(0);
	else{
		int32_t res=0;
		res=dest/src;
		return res;
	}
}

uint32_t alu_mod(uint64_t src, uint64_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
	if(src==0)
		assert(0);
	else{
		uint32_t res=0;
		res=dest%src;
		return res;
	}
}

int32_t alu_imod(int64_t src, int64_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
        if(src==0)
		assert(0);
	else{
		int32_t res=0;
		res=dest%src;
		return res;
	}
}

uint32_t alu_and(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
	uint32_t res=0;
	res=src & dest;
	set_CF();
	set_PF(res);
	set_ZF(res);
	set_SF(res);
	set_OF(res);
	//set_AF();
	
	return res;
}

uint32_t alu_xor(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
	uint32_t res;
	res=src ^ dest;
	set_CF();
	set_PF(res);
	set_SF(res);
	set_ZF(res);
	set_OF();
	//set_AF();
	
	return res;
}

uint32_t alu_or(uint32_t src, uint32_t dest) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
	uint32_t res;
	res=src | dest;
	set_CF();
	set_PF(res);
	set_ZF(res);
	set_SF(res);
	set_OF();
	//set_AF();
	
	return res;
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
        uint32_t res=0;
	int temp=1;
	for(int i=0;i<src;i++)
		temp=temp*2;
        uint32_t lef=0,rem=0;
	if(data_size == 32){
		res=dest*temp;
		set_SF(res);
		set_ZF(res);
	}
	else if(data_size ==16){
		rem=dest & 0xffff;
	        lef=dest & 0xffff0000;
		res=lef+((rem * temp)& 0xffff);
		set_SF((rem*temp)*65536);
		set_ZF((rem*temp)*65536);
	}
	else if(data_size == 8){
		rem=dest & 0xff;
		lef=dest & 0xffffff00;
		res=lef+((rem * temp)& 0xff);
		set_SF((rem*temp)*16777216);
		set_ZF((rem*temp)*16777216);
	}
	set_CF_shl( src, dest, data_size);
	set_PF(res);
        //set_AF();
	set_OF_shl( src, dest,data_size);

	return res;
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//      return 0;
        uint32_t res=0;
	int temp=0;
	for(int i=0;i<src;i++)
		temp=temp*2;
	uint32_t lef=0,rem=0;
	if(data_size==32){
		res=dest>>src;
		set_SF(res);
		set_ZF(res);
	}
	else if(data_size==16){
		rem=dest&0xffff;
		lef=dest&0xffff0000;
		res=lef+((rem>>src)&0xffff);
		set_SF((rem>>src)*65536);
		set_ZF((rem>>src)*65536);
	}
	else if(data_size==8){
		rem=dest&0xff;
		lef=dest&0xffffff00;
		res=lef+((rem>>src)&0xff);
		set_SF((rem>>src)*16777216);
		set_ZF((rem>>src)*16777216);
	}
	set_CF_shr(src,dest,data_size);
	set_PF(res);
	//set_AF();
	//SET_OF_shr();
	
	return res;
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
        uint32_t res =0;
	if(data_size == 32){
		for(int i=0;i<src;i++){
			cpu.eflags.CF=dest%2;
			if(sign(dest)==1){
				dest=dest>>1;
				dest=dest+2147483648;
			}
		        else if(sign(dest)==0){
			        dest=dest>>1;
			}
		}
		res=dest;
		set_PF(res);
		set_SF(res);
		set_ZF(res);
	//	set_AF()
	//	set_OF();
	}
       else if(data_size==16){
		uint32_t temp=0, rem=0;
		temp=(dest<<16)>>16;
		rem=dest-temp;
		for(int i=0;i<src;i++){
			cpu.eflags.CF=temp%2;
			if(sign((temp)<<16)==1){
				temp=temp>>1;
				temp=temp+32768;
			}
			else if(sign((temp)<<16)==0){
				temp=temp>>1;
			}
		}
		set_ZF(temp<<16);
		set_SF(temp<<16);
		set_PF(temp);
		//set_AF();
		//set_OF();

		res=rem+temp;
	}
	else if(data_size ==8){
        	uint32_t temp=0, rem=0;
		temp=(dest<<24)>>24;
		rem=dest-temp;
		for(int i=0;i<src;i++){
			cpu.eflags.CF=temp%2;
			if(sign((temp)<<24)==1){
				temp=temp>>1;
				temp=temp+128;
			}
			else if(sign((temp)<<24)==0){
				temp=temp>>1;
			}
		}
		set_ZF(temp<<24);
		set_SF(temp<<24);
		set_PF(temp);
		//set_AF();
		//set_OF();

		res=rem+temp;
	}

	return res;	
}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size) {
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
//	return 0;
         uint32_t res=0;
	int temp=1;
	for(int i=0;i<src;i++)
		temp=temp*2;
        uint32_t lef=0,rem=0;
	if(data_size == 32){
		res=dest*temp;
		set_SF(res);
		set_ZF(res);
	}
	else if(data_size ==16){
		rem=dest & 0xffff;
	        lef=dest & 0xffff0000;
		res=lef+((rem * temp)& 0xffff);
		set_SF((rem*temp)*65536);
		set_ZF((rem*temp)*65536);
	}
	else if(data_size == 8){
		rem=dest & 0xff;
		lef=dest & 0xffffff00;
		res=lef+((rem * temp)& 0xff);
		set_SF((rem*temp)*16777216);
		set_ZF((rem*temp)*16777216);
	}
	set_CF_shl( src, dest, data_size);
	set_PF(res);
        //set_AF();
	set_OF_shl( src, dest,data_size);

	return res;

}

//for all function
void set_PF(uint32_t result){
	int count=0,rem=0,res=0;//rem==reminder, res=result
	for(int i=0;i<8;i++){
		res=result>>1;
		rem=result%2;
		if(rem==1)
			count++;
		result=res;
	}
		if((count%2)==0)
			cpu.eflags.PF=1;
		else
			cpu.eflags.PF=0;
}

void set_ZF(uint32_t result){
	cpu.eflags.ZF=(result==0);
}

void set_SF(uint32_t result){
	cpu.eflags.SF=sign(result);
}

//for function_add
void set_CF_add(uint32_t result,uint32_t src){
	cpu.eflags.CF=result<src;
}

void set_OF_add(uint32_t result, uint32_t src, uint32_t dest){
	if(sign(src)==sign(dest)){
		if(sign(src)!=sign(result))
			cpu.eflags.OF=1;
		else
			cpu.eflags.OF=0;
	}else{
		cpu.eflags.OF=0;
	}
}

//for function_adc
void set_CF_adc(uint32_t result, uint32_t src, uint32_t dest){
	if(result<src)
		cpu.eflags.CF=1;
        else if(result==src){
		if(dest==0)//11111111+1  possibile
			cpu.eflags.CF=0;
		else
			cpu.eflags.CF=1;
	}
	else if(result>src)
		cpu.eflags.CF=0;
}

void set_OF_adc(uint32_t result, uint32_t src, uint32_t dest){
	if(sign(src)==sign(dest)){
		if(sign(src)!=sign(result))
			cpu.eflags.OF=1;
		else
			cpu.eflags.OF=0;
	}else
		cpu.eflags.OF=0;
}

//for function_sbb
void set_CF_sbb(uint32_t result, uint32_t src,uint32_t dest){
	if(cpu.eflags.CF==0)
		set_CF_add(dest,result);
	else if(cpu.eflags.CF==1){
		if(src==-1)
			cpu.eflags.CF=1;
		else if(dest==result)
			cpu.eflags.CF=1;
		else
			set_CF_add(dest,result);
	}

}

//for function_and/or/xor
void set_CF(){
	cpu.eflags.CF=0;
}

void set_OF(){
	cpu.eflags.OF=0;
}

//for function_shl/sal
void set_CF_shl(uint32_t src, uint32_t dest, size_t data_size){
	int temp=1;
	int sign=0;
	for(int j=1;j<data_size;j++){
		temp=temp*2;
	}
	for(int i=0;i<src;i++){
		sign=dest/temp;
		cpu.eflags.CF=sign%2;
		dest=dest*2;
	}
}

void set_OF_shl(uint32_t src, uint32_t dest, size_t data_size){
	set_CF_shl(src,dest,data_size);
}

//for function_shr
void set_CF_shr(uint32_t src, uint32_t dest, size_t data_size){
	for(int i=0;i<src;i++){
		cpu.eflags.CF=dest%2;
		dest=dest/2;
	}
}
void set_OF_sub(uint32_t result,uint32_t src,uint32_t dest){
	if(sign(src)!=sign(dest)){
		if(sign(src)==sign(result))
			cpu.eflags.OF=1;
		else
			cpu.eflags.OF=0;
	}else
		cpu.eflags.OF=0;
}
