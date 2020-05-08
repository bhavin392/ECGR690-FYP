#include<cstdio>
#include<cstdlib>
#include<cstring>
#include "host.h"
#include "../../common/m5ops.h"

int main(void){
    m5_reset_stats();
    int exitCond =0;
    unsigned phase, rs_offset, rd_offset, wr_offset;
    while(!exitCond){
        uint8_t currStage= stage;
        switch(currStage){
            case 0:
                stage+=1;
                break;
            case 1:
                stage+=1;
                break;
            case 3:
                phase = 0;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);
            case 5:
                phase = 1;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);

            case 7:
                phase = 2;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);

            case 9:
                phase = 3;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);
            case 11:
                phase = 4;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);

            case 13:
                phase = 5;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);
            case 15:
                phase = 6;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);
            case 17:
                phase = 7;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);
            case 19:
                phase = 8;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);

            case 21:
                phase = 9;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);
            case 23:
                phase = 10;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);
            case 25:
                phase = 11;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);
            
            case 27:
                phase = 12;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);

            case 29:
                phase = 13;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);

            case 31:
                phase = 13;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);

            case 33:
                phase = 15;
                rd_offset = (phase + 1) * 0x00100000;
                wr_offset = (phase + 2) * 0x00100000;
                runBody(phase,
                        feats+rd_offset,
                        feats+wr_offset,
                        weights,weights,weights);

            case 35:
                break;
            case 37:
                break;
            case 39:
                // Finished
                exitCond = 1;
                break;
            default:
                // Waiting for accelerator to finish
                exitCond = 0;
        }
    }
    m5_dump_stats();
    m5_exit();
    return 0;
}
void runBody(uint8_t phase, uint64_t feat_rd_addr,
            uint64_t feat_wr_addr,
             uint64_t pw0_weights,
             uint64_t dw0_weights,
             uint64_t pw1_weights) {
    uint8_t  * MMR  = (uint8_t  *)(body_top);
    uint64_t * ARGS = (uint64_t *)(body_top+2);
    printf("Setting args for BODY\n");
    MMR[1]  = phase;
    ARGS[0] = feat_rd_addr;
    ARGS[1] = feat_wr_addr;
    ARGS[2] = pw0_weights;
    ARGS[3] = dw0_weights;
    ARGS[4] = pw1_weights;
    printf("Running BODY\n");
    MMR[0]  = 0x01;

    stage += 1;
}