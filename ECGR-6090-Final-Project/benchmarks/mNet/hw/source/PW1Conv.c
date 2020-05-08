#include"body_defines.h"

void PW1Conv(dType_32u isize, dType_32u osize,
            dType_32u inputchannel, dType_32u outputchannel){
                volatile dType_32u *    PW1Input = (dType_32u*)(PW1In);
                volatile dType_32u *    PW1Filter = (dType_32u*)(PW1filter);
                volatile dType_32u *    PW1Output = (dType_32u*)(PW1Out);
                uint16_t sum =0;
                uint16_t t =0;
                #pragma clang loop unroll(full)
                for(uint32_t f=0;f<outputchannel;f++){
                    for(uint32_t i=0;i<isize;i++){
                        for(uint32_t k=0;k<inputchannel;k++){
                            sum+=PW1Input[i+(isize*k)] * PW1Filter[f];
                        }
                        if(sum<0){
                            sum=0;
                        }else if(sum>255){
                            sum=255;
                        }
                        PW1Output[t]=sum;
                        sum=0;
                        t++;
                    }
                }
            }