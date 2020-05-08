#include"body_defines.h"

void top(uint8_t stage, uint64_t feat_rd_addr,
		 uint64_t feat_wr_addr,
		 uint64_t pw0_weights,
		 uint64_t dw0_weights,
		 uint64_t pw1_weights){
    uint8_t Stage=stage;

    uint32_t InputSize;
    uint32_t OutputSize;
    
    // Initialize Accelerators
    // PW0
    volatile uint8_t *PW0_FLAG       =  (uint8_t *)(PW0_MMR);
    volatile uint32_t *PW0_ISIZE     =  (uint32_t *)(PW0_MMR+1);
    volatile uint32_t *PW0_OSIZE     =  (uint32_t *)(PW0_MMR+5);
    volatile uint32_t *PW0_ICSIZE     =  (uint32_t *)(PW0_MMR+9);
    volatile uint32_t *PW0_OCSIZE     =  (uint32_t *)(PW0_MMR+13);
    
    //DW0 
    volatile uint8_t *DW0_FLAG       =  (uint8_t *)(DW0_MMR);
    volatile uint32_t *DW0_ISIZE     =  (uint32_t *)(DW0_MMR+1);
    volatile uint32_t *DW0_OSIZE     =  (uint32_t *)(DW0_MMR+5);
    volatile uint32_t *DW0_ICSIZE     =  (uint32_t *)(DW0_MMR+9);
    volatile uint32_t *DW0_OCSIZE     =  (uint32_t *)(DW0_MMR+13);
    volatile uint8_t *DW0_STRIDE       =  (uint8_t *)(DW0_MMR+17);

    // PW1
     volatile uint8_t *PW1_FLAG       =  (uint8_t *)(PW1_MMR);
    volatile uint32_t *PW1_ISIZE     =  (uint32_t *)(PW1_MMR+1);
    volatile uint32_t *PW1_OSIZE     =  (uint32_t *)(PW1_MMR+5);
    volatile uint32_t *PW1_ICSIZE     =  (uint32_t *)(PW1_MMR+9);
    volatile uint32_t *PW1_OCSIZE     =  (uint32_t *)(PW1_MMR+13);

    switch(stage){
        case 0:
            InputSize= PW0INPUTSIZE_1 * PW0INPUTSIZE_1 *PW0INPUTC_1;
            OutputSize=PW0OUTPUTSIZE_1 * PW0OUTPUTSIZE_1 *PW0OUTPUTC_1;
            *PW0_OSIZE= PW0OUTPUTSIZE_1 ;
            *PW0_ISIZE=PW0INPUTSIZE_1;
            *PW0_ICSIZE=PW0INPUTC_1;
            *PW0_OCSIZE=PW0OUTPUTC_1;
            *DW0_OSIZE=DWOUTPUTSIZE_1;
            *DW0_ISIZE=DWINPUTSIZE_1;
            *DW0_ICSIZE=DWINPUTC_1;
            *DW0_OCSIZE=DWOUTPUTC_1;
            *DW0_STRIDE=2;
            *PW1_OSIZE=PW1OUTPUTSIZE_1;
            *PW1_ISIZE=PW1INPUTSIZE_1;
            *PW1_ICSIZE=PW1INPUTC_1;
            *PW1_OCSIZE=PW1OUTPUTC_1;
            break;
         case 1:
            InputSize= PW0INPUTSIZE_2 * PW0INPUTSIZE_2 *PW0INPUTC_2;
            OutputSize=PW0OUTPUTSIZE_2 * PW0OUTPUTSIZE_2 *PW0OUTPUTC_2;
            *PW0_OSIZE= PW0OUTPUTSIZE_2 ;
            *PW0_ISIZE=PW0INPUTSIZE_2;
            *PW0_ICSIZE=PW0INPUTC_2;
            *PW0_OCSIZE=PW0OUTPUTC_2;
            *DW0_OSIZE=DWOUTPUTSIZE_2;
            *DW0_ISIZE=DWINPUTSIZE_2;
            *DW0_ICSIZE=DWINPUTC_2;
            *DW0_OCSIZE=DWOUTPUTC_2;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_2;
            *PW1_ISIZE=PW1INPUTSIZE_2;
            *PW1_ICSIZE=PW1INPUTC_2;
            *PW1_OCSIZE=PW1OUTPUTC_2;
            break;
        case 2:
            InputSize= PW0INPUTSIZE_3 * PW0INPUTSIZE_3 *PW0INPUTC_3;
            OutputSize=PW0OUTPUTSIZE_3 * PW0OUTPUTSIZE_3 *PW0OUTPUTC_3;
            *PW0_OSIZE= PW0OUTPUTSIZE_3 ;
            *PW0_ISIZE=PW0INPUTSIZE_3;
            *PW0_ICSIZE=PW0INPUTC_3;
            *PW0_OCSIZE=PW0OUTPUTC_3;
            *DW0_OSIZE=DWOUTPUTSIZE_3;
            *DW0_ISIZE=DWINPUTSIZE_3;
            *DW0_ICSIZE=DWINPUTC_3;
            *DW0_OCSIZE=DWOUTPUTC_3;
            *DW0_STRIDE=2;
            *PW1_OSIZE=PW1OUTPUTSIZE_3;
            *PW1_ISIZE=PW1INPUTSIZE_3;
            *PW1_ICSIZE=PW1INPUTC_3;
            *PW1_OCSIZE=PW1OUTPUTC_3;
            break;

        case 3:
            InputSize= PW0INPUTSIZE_4 * PW0INPUTSIZE_4 *PW0INPUTC_4;
            OutputSize=PW0OUTPUTSIZE_4 * PW0OUTPUTSIZE_4 *PW0OUTPUTC_4;
            *PW0_OSIZE= PW0OUTPUTSIZE_4 ;
            *PW0_ISIZE=PW0INPUTSIZE_4;
            *PW0_ICSIZE=PW0INPUTC_4;
            *PW0_OCSIZE=PW0OUTPUTC_4;
            *DW0_OSIZE=DWOUTPUTSIZE_4;
            *DW0_ISIZE=DWINPUTSIZE_4;
            *DW0_ICSIZE=DWINPUTC_4;
            *DW0_OCSIZE=DWOUTPUTC_4;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_4;
            *PW1_ISIZE=PW1INPUTSIZE_4;
            *PW1_ICSIZE=PW1INPUTC_4;
            *PW1_OCSIZE=PW1OUTPUTC_4;
            break;

        case 4:
            InputSize= PW0INPUTSIZE_5 * PW0INPUTSIZE_5 *PW0INPUTC_5;
            OutputSize=PW0OUTPUTSIZE_5 * PW0OUTPUTSIZE_5 *PW0OUTPUTC_5;
            *PW0_OSIZE= PW0OUTPUTSIZE_5 ;
            *PW0_ISIZE=PW0INPUTSIZE_5;
            *PW0_ICSIZE=PW0INPUTC_5;
            *PW0_OCSIZE=PW0OUTPUTC_5;
            *DW0_OSIZE=DWOUTPUTSIZE_5;
            *DW0_ISIZE=DWINPUTSIZE_5;
            *DW0_ICSIZE=DWINPUTC_5;
            *DW0_OCSIZE=DWOUTPUTC_5;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_5;
            *PW1_ISIZE=PW1INPUTSIZE_5;
            *PW1_ICSIZE=PW1INPUTC_5;
            *PW1_OCSIZE=PW1OUTPUTC_5;
            break;

        case 5:
            InputSize= PW0INPUTSIZE_6 * PW0INPUTSIZE_6 *PW0INPUTC_6;
            OutputSize=PW0OUTPUTSIZE_6 * PW0OUTPUTSIZE_6 *PW0OUTPUTC_6;
            *PW0_OSIZE= PW0OUTPUTSIZE_6 ;
            *PW0_ISIZE=PW0INPUTSIZE_6;
            *PW0_ICSIZE=PW0INPUTC_6;
            *PW0_OCSIZE=PW0OUTPUTC_6;
            *DW0_OSIZE=DWOUTPUTSIZE_6;
            *DW0_ISIZE=DWINPUTSIZE_6;
            *DW0_ICSIZE=DWINPUTC_6;
            *DW0_OCSIZE=DWOUTPUTC_6;
            *DW0_STRIDE=2;
            *PW1_OSIZE=PW1OUTPUTSIZE_6;
            *PW1_ISIZE=PW1INPUTSIZE_6;
            *PW1_ICSIZE=PW1INPUTC_6;
            *PW1_OCSIZE=PW1OUTPUTC_6;
            break;
        case 6:
            InputSize= PW0INPUTSIZE_7 * PW0INPUTSIZE_7 *PW0INPUTC_7;
            OutputSize=PW0OUTPUTSIZE_7 * PW0OUTPUTSIZE_7 *PW0OUTPUTC_7;
            *PW0_OSIZE= PW0OUTPUTSIZE_7 ;
            *PW0_ISIZE=PW0INPUTSIZE_7;
            *PW0_ICSIZE=PW0INPUTC_7;
            *PW0_OCSIZE=PW0OUTPUTC_7;
            *DW0_OSIZE=DWOUTPUTSIZE_7;
            *DW0_ISIZE=DWINPUTSIZE_7;
            *DW0_ICSIZE=DWINPUTC_7;
            *DW0_OCSIZE=DWOUTPUTC_7;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_7;
            *PW1_ISIZE=PW1INPUTSIZE_7;
            *PW1_ICSIZE=PW1INPUTC_7;
            *PW1_OCSIZE=PW1OUTPUTC_7;
            break;
        case 7:
            InputSize= PW0INPUTSIZE_8 * PW0INPUTSIZE_8 *PW0INPUTC_8;
            OutputSize=PW0OUTPUTSIZE_8 * PW0OUTPUTSIZE_8 *PW0OUTPUTC_8;
            *PW0_OSIZE= PW0OUTPUTSIZE_8 ;
            *PW0_ISIZE=PW0INPUTSIZE_8;
            *PW0_ICSIZE=PW0INPUTC_8;
            *PW0_OCSIZE=PW0OUTPUTC_8;
            *DW0_OSIZE=DWOUTPUTSIZE_8;
            *DW0_ISIZE=DWINPUTSIZE_8;
            *DW0_ICSIZE=DWINPUTC_8;
            *DW0_OCSIZE=DWOUTPUTC_8;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_8;
            *PW1_ISIZE=PW1INPUTSIZE_8;
            *PW1_ICSIZE=PW1INPUTC_8;
            *PW1_OCSIZE=PW1OUTPUTC_8;
            break;
        case 8:
            InputSize= PW0INPUTSIZE_9 * PW0INPUTSIZE_9 *PW0INPUTC_9;
            OutputSize=PW0OUTPUTSIZE_9 * PW0OUTPUTSIZE_9 *PW0OUTPUTC_9;
            *PW0_OSIZE= PW0OUTPUTSIZE_9 ;
            *PW0_ISIZE=PW0INPUTSIZE_9;
            *PW0_ICSIZE=PW0INPUTC_9;
            *PW0_OCSIZE=PW0OUTPUTC_9;
            *DW0_OSIZE=DWOUTPUTSIZE_9;
            *DW0_ISIZE=DWINPUTSIZE_9;
            *DW0_ICSIZE=DWINPUTC_9;
            *DW0_OCSIZE=DWOUTPUTC_9;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_9;
            *PW1_ISIZE=PW1INPUTSIZE_9;
            *PW1_ICSIZE=PW1INPUTC_9;
            *PW1_OCSIZE=PW1OUTPUTC_9;
            break;
        
        case 9:
            InputSize= PW0INPUTSIZE_10 * PW0INPUTSIZE_10 *PW0INPUTC_10;
            OutputSize=PW0OUTPUTSIZE_10 * PW0OUTPUTSIZE_10 *PW0OUTPUTC_10;
            *PW0_OSIZE= PW0OUTPUTSIZE_10 ;
            *PW0_ISIZE=PW0INPUTSIZE_10;
            *PW0_ICSIZE=PW0INPUTC_10;
            *PW0_OCSIZE=PW0OUTPUTC_10;
            *DW0_OSIZE=DWOUTPUTSIZE_10;
            *DW0_ISIZE=DWINPUTSIZE_10;
            *DW0_ICSIZE=DWINPUTC_10;
            *DW0_OCSIZE=DWOUTPUTC_10;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_10;
            *PW1_ISIZE=PW1INPUTSIZE_10;
            *PW1_ICSIZE=PW1INPUTC_10;
            *PW1_OCSIZE=PW1OUTPUTC_10;
            break;

        case 10:
            InputSize= PW0INPUTSIZE_11 * PW0INPUTSIZE_11 *PW0INPUTC_11;
            OutputSize=PW0OUTPUTSIZE_11 * PW0OUTPUTSIZE_11 *PW0OUTPUTC_11;
            *PW0_OSIZE= PW0OUTPUTSIZE_11 ;
            *PW0_ISIZE=PW0INPUTSIZE_11;
            *PW0_ICSIZE=PW0INPUTC_11;
            *PW0_OCSIZE=PW0OUTPUTC_11;
            *DW0_OSIZE=DWOUTPUTSIZE_11;
            *DW0_ISIZE=DWINPUTSIZE_11;
            *DW0_ICSIZE=DWINPUTC_11;
            *DW0_OCSIZE=DWOUTPUTC_11;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_11;
            *PW1_ISIZE=PW1INPUTSIZE_11;
            *PW1_ICSIZE=PW1INPUTC_11;
            *PW1_OCSIZE=PW1OUTPUTC_11;
            break;
        case 11:
            InputSize= PW0INPUTSIZE_12 * PW0INPUTSIZE_12 *PW0INPUTC_12;
            OutputSize=PW0OUTPUTSIZE_12 * PW0OUTPUTSIZE_12 *PW0OUTPUTC_12;
            *PW0_OSIZE= PW0OUTPUTSIZE_12 ;
            *PW0_ISIZE=PW0INPUTSIZE_12;
            *PW0_ICSIZE=PW0INPUTC_12;
            *PW0_OCSIZE=PW0OUTPUTC_12;
            *DW0_OSIZE=DWOUTPUTSIZE_12;
            *DW0_ISIZE=DWINPUTSIZE_12;
            *DW0_ICSIZE=DWINPUTC_12;
            *DW0_OCSIZE=DWOUTPUTC_12;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_12;
            *PW1_ISIZE=PW1INPUTSIZE_12;
            *PW1_ICSIZE=PW1INPUTC_12;
            *PW1_OCSIZE=PW1OUTPUTC_12;
            break;
        case 12:
            InputSize= PW0INPUTSIZE_13 * PW0INPUTSIZE_13 *PW0INPUTC_13;
            OutputSize=PW0OUTPUTSIZE_13 * PW0OUTPUTSIZE_13 *PW0OUTPUTC_13;
            *PW0_OSIZE= PW0OUTPUTSIZE_13 ;
            *PW0_ISIZE=PW0INPUTSIZE_13;
            *PW0_ICSIZE=PW0INPUTC_13;
            *PW0_OCSIZE=PW0OUTPUTC_13;
            *DW0_OSIZE=DWOUTPUTSIZE_13;
            *DW0_ISIZE=DWINPUTSIZE_13;
            *DW0_ICSIZE=DWINPUTC_13;
            *DW0_OCSIZE=DWOUTPUTC_13;
            *DW0_STRIDE=2;
            *PW1_OSIZE=PW1OUTPUTSIZE_13;
            *PW1_ISIZE=PW1INPUTSIZE_13;
            *PW1_ICSIZE=PW1INPUTC_13;
            *PW1_OCSIZE=PW1OUTPUTC_13;
            break;
        
        case 13:
            InputSize= PW0INPUTSIZE_14 * PW0INPUTSIZE_14 *PW0INPUTC_14;
            OutputSize=PW0OUTPUTSIZE_14 * PW0OUTPUTSIZE_14 *PW0OUTPUTC_14;
            *PW0_OSIZE= PW0OUTPUTSIZE_14 ;
            *PW0_ISIZE=PW0INPUTSIZE_14;
            *PW0_ICSIZE=PW0INPUTC_14;
            *PW0_OCSIZE=PW0OUTPUTC_14;
            *DW0_OSIZE=DWOUTPUTSIZE_14;
            *DW0_ISIZE=DWINPUTSIZE_14;
            *DW0_ICSIZE=DWINPUTC_14;
            *DW0_OCSIZE=DWOUTPUTC_14;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_14;
            *PW1_ISIZE=PW1INPUTSIZE_14;
            *PW1_ICSIZE=PW1INPUTC_14;
            *PW1_OCSIZE=PW1OUTPUTC_14;
            break;

        case 14:
            InputSize= PW0INPUTSIZE_15 * PW0INPUTSIZE_15 *PW0INPUTC_15;
            OutputSize=PW0OUTPUTSIZE_15 * PW0OUTPUTSIZE_15 *PW0OUTPUTC_15;
            *PW0_OSIZE= PW0OUTPUTSIZE_15 ;
            *PW0_ISIZE=PW0INPUTSIZE_15;
            *PW0_ICSIZE=PW0INPUTC_15;
            *PW0_OCSIZE=PW0OUTPUTC_15;
            *DW0_OSIZE=DWOUTPUTSIZE_15;
            *DW0_ISIZE=DWINPUTSIZE_15;
            *DW0_ICSIZE=DWINPUTC_15;
            *DW0_OCSIZE=DWOUTPUTC_15;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_15;
            *PW1_ISIZE=PW1INPUTSIZE_15;
            *PW1_ICSIZE=PW1INPUTC_15;
            *PW1_OCSIZE=PW1OUTPUTC_15;
            break;

        case 15:
            InputSize= PW0INPUTSIZE_16 * PW0INPUTSIZE_16 *PW0INPUTC_16;
            OutputSize=PW0OUTPUTSIZE_16 * PW0OUTPUTSIZE_16 *PW0OUTPUTC_16;
            *PW0_OSIZE= PW0OUTPUTSIZE_16 ;
            *PW0_ISIZE=PW0INPUTSIZE_16;
            *PW0_ICSIZE=PW0INPUTC_16;
            *PW0_OCSIZE=PW0OUTPUTC_16;
            *DW0_OSIZE=DWOUTPUTSIZE_16;
            *DW0_ISIZE=DWINPUTSIZE_16;
            *DW0_ICSIZE=DWINPUTC_16;
            *DW0_OCSIZE=DWOUTPUTC_16;
            *DW0_STRIDE=1;
            *PW1_OSIZE=PW1OUTPUTSIZE_16;
            *PW1_ISIZE=PW1INPUTSIZE_16;
            *PW1_ICSIZE=PW1INPUTC_16;
            *PW1_OCSIZE=PW1OUTPUTC_16;
            break;

        default:
            InputSize= 0;
            OutputSize=0;
            *PW0_OSIZE= 0;
            *PW0_ISIZE=0;
            *PW0_ICSIZE=0;
            *PW0_OCSIZE=0;
            *DW0_OSIZE=0;
            *DW0_ISIZE=0;
            *DW0_ICSIZE=0;
            *DW0_OCSIZE=0;
            *DW0_STRIDE=0;
            *PW1_OSIZE=0;
            *PW1_ISIZE=0;
            *PW1_ICSIZE=0;
            *PW1_OCSIZE=0;
        
    }



	//Start PW Conv 0
	*PW0_FLAG = 0x01;
	//Start DW Conv
	*DW0_FLAG = 0x01;
	//Start PW Conv 1
	*PW1_FLAG = 0x01;

    //Initialize DMAs
	//StreamDma0
	volatile uint8_t  * StrDma0Flags			= (uint8_t  *)(STREAM_DMA0_MMR);
	volatile uint64_t * StrDma0RdAddr			= (uint64_t *)(STREAM_DMA0_MMR+4);
	volatile uint64_t * StrDma0WrAddr			= (uint64_t *)(STREAM_DMA0_MMR+12);
	volatile uint32_t * StrDma0RdFrameSize		= (uint32_t *)(STREAM_DMA0_MMR+20);
	volatile uint8_t  * StrDma0NumRdFrames		= (uint8_t  *)(STREAM_DMA0_MMR+24);
	volatile uint8_t  * StrDma0RdFrameBuffSize	= (uint8_t  *)(STREAM_DMA0_MMR+25);
	volatile uint32_t * StrDma0WrFrameSize		= (uint32_t *)(STREAM_DMA0_MMR+26);
	volatile uint8_t  * StrDma0NumWrFrames		= (uint8_t  *)(STREAM_DMA0_MMR+30);
	volatile uint8_t  * StrDma0WrFrameBuffSize	= (uint8_t  *)(STREAM_DMA0_MMR+31);
	//StreamDma1
	volatile uint8_t  * StrDma1Flags			= (uint8_t  *)(STREAM_DMA1_MMR);
	volatile uint64_t * StrDma1RdAddr			= (uint64_t *)(STREAM_DMA1_MMR+4);
	volatile uint64_t * StrDma1WrAddr			= (uint64_t *)(STREAM_DMA1_MMR+12);
	volatile uint32_t * StrDma1RdFrameSize		= (uint32_t *)(STREAM_DMA1_MMR+20);
	volatile uint8_t  * StrDma1NumRdFrames		= (uint8_t  *)(STREAM_DMA1_MMR+24);
	volatile uint8_t  * StrDma1RdFrameBuffSize	= (uint8_t  *)(STREAM_DMA1_MMR+25);
	volatile uint32_t * StrDma1WrFrameSize		= (uint32_t *)(STREAM_DMA1_MMR+26);
	volatile uint8_t  * StrDma1NumWrFrames		= (uint8_t  *)(STREAM_DMA1_MMR+30);
	volatile uint8_t  * StrDma1WrFrameBuffSize	= (uint8_t  *)(STREAM_DMA1_MMR+31);
	//MemDma
	volatile uint8_t  * MemDmaFlags				= (uint8_t  *)(CLUSTER_DMA_MMR);
	volatile uint64_t * MemDmaRdAddr			= (uint64_t *)(CLUSTER_DMA_MMR+1);
	volatile uint64_t * MemDmaWrAddr			= (uint64_t *)(CLUSTER_DMA_MMR+9);
	volatile uint32_t * MemDmaCopyLen			= (uint32_t *)(CLUSTER_DMA_MMR+17);
    
	//Initialize DRAM-Stream DMA
	*StrDma0RdAddr = feat_rd_addr;
	*StrDma0RdFrameSize = InputSize;
	*StrDma0NumRdFrames = 1;
	*StrDma0RdFrameBuffSize = 1;
	//Initialize Stream-DRAM DMA
	*StrDma0WrAddr = StreamIn1;
	*StrDma0WrFrameSize = OutputSize;
	*StrDma0NumWrFrames = 1;
	*StrDma0WrFrameBuffSize = 1;

    	//Start Stream DMAs
	*StrDma0Flags = STR_DMA_INIT_RD | STR_DMA_INIT_WR;

    	//Transfer Weights and Quantization Params from DRAM to SPMs
	//Start PW0 Conv Weight Xfer
	*MemDmaRdAddr  = pw0_weights;
	*MemDmaWrAddr  = PW0filter;
	*MemDmaCopyLen = PWFILTERSIZE;
	*MemDmaFlags   = MEM_DMA_INIT;
	//Poll DMA for finish
	while ((*MemDmaFlags & MEM_DMA_INTR) != MEM_DMA_INTR);
    	//Start DW0 Conv Weight Xfer
	*MemDmaRdAddr  = dw0_weights;
	*MemDmaWrAddr  = DW0filter;
	*MemDmaCopyLen = DWFILTERSIZE;
	*MemDmaFlags   = MEM_DMA_INIT;
	//Poll DMA for finish
	while ((*MemDmaFlags & MEM_DMA_INTR) != MEM_DMA_INTR);
    	//Start PW1 Conv Weight Xfer
	*MemDmaRdAddr  = pw1_weights;
	*MemDmaWrAddr  = PW1filter;
	*MemDmaCopyLen = PWFILTERSIZE;
	*MemDmaFlags   = MEM_DMA_INIT;
	//Poll DMA for finish
	while ((*MemDmaFlags & MEM_DMA_INTR) != MEM_DMA_INTR);
    return;
}