#include"body_defines.h"
#include<stdio.h>

void DW0Conv(dType_32u isize, dType_32u osize,
            dType_32u inputchannel, dType_32u outputchannel, dType_32u stride){
                volatile dType_32u *    DW0Input = (dType_32u*)(DW0In);
                volatile dType_32u *    DW0Filter = (dType_32u*)(DW0filter);
                volatile dType_32u *    DW0Output = (dType_32u*)(DW0Out);
            uint16_t sum =0;
            uint16_t i=0;
            uint16_t j =0;
            uint16_t op=0;
            if(stride ==1){
                i=0;
                j=0;
            }else if(stride ==2){
                i=1;
                j=1;
            }else{
                return;
            }
            for(uint32_t ch=0;ch<outputchannel;ch++){
                
                for(;i<(isize-2);i=i+stride){
                    for(;j<(isize-2);j=j+stride){
                        for(uint32_t k=0;k<DWFILTERSIZE;k++){
                            for(uint32_t l=0;l<DWFILTERSIZE;l++){
                                sum+=DW0Input[(ch*isize*isize)+((k*isize)+ 1)+j+(i*isize)] * DW0Filter[(k*DWFILTERSIZE)+1];
                            }
                        }
                    
                    if(sum>255){
                        sum =255;
                    }else if(sum<0){
                        sum=0;
                    }
                    DW0Output[op]=sum;
                    sum=0;
                    op++;
                    }
                    if(stride ==1){
                        j=0;
                    }else if(stride ==2){
                        j=1;
                    }
                }
                if(stride ==1){
                    i=0;
                }else if(stride==2){
                    i=1;
                }
            }
            
            }