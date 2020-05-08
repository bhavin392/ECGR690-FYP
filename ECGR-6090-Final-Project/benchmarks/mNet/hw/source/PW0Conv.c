#include"body_defines.h"

void PW0Conv(dType_32u isize, dType_32u osize,
            dType_32u inputchannel, dType_32u outputchannel){
                volatile dType_32u *    PW0Input = (dType_32u*)(PW0In);
                volatile dType_32u *    PW0Filter = (dType_32u*)(PW0filter);
                volatile dType_32u *    PW0Output = (dType_32u*)(PW0Out);
                uint16_t sum =0;
                uint16_t t =0;
                #pragma clang loop unroll(full)
                for(uint32_t f=0;f<outputchannel;f++){
                    for(uint32_t i=0;i<isize;i++){
                        for(uint32_t k=0;k<inputchannel;k++){
                            sum+=PW0Input[i+(isize*k)] * PW0Filter[f];
                        }
                        if(sum<0){
                            sum=0;
                        }else if(sum>255){
                            sum=255;
                        }
                        PW0Output[t]=sum;
                        sum=0;
                        t++;
                    }
                } 
            

            }