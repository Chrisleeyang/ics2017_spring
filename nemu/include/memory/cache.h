#include <stdint.h>

typedef struct {
    uint8_t vb;
/*	union {
		struct {
    		uint32_t addrIn: 6;
			uint32_t groupNum: 7;
			uint32_t tag: 19;
		};
		uint32_t paddr;
	};*/
    uint32_t tag;
    uint8_t block[64];
//	uint32_t data[16];
}Cacheline;


void initCache();
uint32_t cacheRead(paddr_t paddr, size_t len, Cacheline* cache);
void cacheWrite(paddr_t paddr, size_t len, uint32_t data, Cacheline* cache);
