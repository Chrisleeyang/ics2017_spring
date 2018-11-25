#include <time.h>
#include <stdlib.h>
#include <assert.h>
#include "nemu.h"
#include "memory/cache.h"
#include "memory/memory.h"

#define Random(x) (rand() % (x))

extern uint32_t hw_mem_read(paddr_t paddr, size_t len);
extern uint32_t hw_mem_write(paddr_t paddr, size_t len, uint32_t data);

Cacheline cache[1024];

void initCache() {
	for(int i = 0; i < 1024; i++) {
		cache[i].vb = 0;
	}
}

uint32_t cacheRead(paddr_t paddr, size_t len, Cacheline *cache) {
	uint32_t res=0;
	if(paddr%64 + len >64)
	{
		memcpy(&res,hw_mem+paddr,len);
		return res;
	}
	uint32_t group_num=(paddr>>6)%128;
	bool hit=false;
	uint32_t line=group_num*8;
	for(uint32_t i=0;i < 8;i++){
		if(cache[line+i].tag==(paddr>>13) && cache[line+i].vb==1){
			//hit
			hit=true;
			memcpy(&res,cache[line+i].block+(paddr%64),len);
			break;
		}
	}
	if(hit==false){		
		//miss && load
		bool is_full=true;
		for(uint32_t i=0;i < 8;i++){
			if(cache[line+i].vb==0){
				is_full=false;
				memcpy(cache[line+i].block,hw_mem+(paddr & 0xffffffc0),64);
				cache[line+i].vb=1;
				cache[line+i].tag=paddr>>13;
				memcpy(&res,cache[line+i].block+(paddr%64),len);
				break;
			}
		}
		if(is_full==true){
			srand((int)time(NULL));
			uint32_t number=(rand()%8);
			line+=number;
			memcpy(cache[line].block,hw_mem+(paddr & 0xffffffc0),64);
			cache[line].vb=1;
		        cache[line].tag=paddr>>13;
			memcpy(&res,cache[line].block+(paddr%64),len);
		}
	}
	return res;
}

void cacheWrite(paddr_t paddr, size_t len, uint32_t data, Cacheline *cache) {
uint32_t group_num=(paddr>>6)%128;
	bool hit=false;
	uint32_t line=group_num*8;
	for(uint32_t i=0;i<8;i++){
		if(cache[line+i].tag==(paddr>>13) && cache[line+i].vb==1){
			//hit
			hit=true;
			if(paddr%64 + len > 64)
			{
				memcpy(hw_mem+paddr,&data,len);
				cache[line+i].vb=0;
                paddr_t paddr1=paddr+len;
				uint32_t tag1=paddr1>>13;
				uint32_t group1=(paddr1>>6)%128;
				for(int j=group1*8;j<group_num*8+8;j++)
				{
					if(cache[j].tag==tag1&&cache[j].vb==1)
						cache[j].vb=0;
				}
			}
			else{
			memcpy(hw_mem+paddr,&data,len);
			memcpy(cache[line+i].block,hw_mem+(paddr & 0xffffffc0),64);
			}
			break;
		}
	}
	if(hit==false){
		memcpy(hw_mem + paddr,&data,len);
	}
}
