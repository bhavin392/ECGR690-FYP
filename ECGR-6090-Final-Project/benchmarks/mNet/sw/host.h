#include "../hw/source/support.h"

#define feats       0x8f000000
#define weights     0x91000000
#define body_top    0x2F001000
#define stage       *(uint8_t *)0x8effffff
#define body_dw     0x2F00109A

void runBody(uint8_t phase, uint64_t feat_rd_addr,
		 uint64_t feat_wr_addr,
		 uint64_t pw0_weights,
		 uint64_t dw0_weights,
		 uint64_t pw1_weights);

void runDW(dType_32u isize, dType_32u osize,
            dType_32u inputchannel, dType_32u outputchannel, dType_32u stride)