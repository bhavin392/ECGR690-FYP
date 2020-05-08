#include "support.h"
#include<stdio.h>


#define padding 2
#define PWFILTERSIZE        1
#define DWFILTERSIZE        3
extern uint8_t  Stage;


//Layer 1
#define PW0INPUTSIZE_1      80
#define PW0INPUTC_1         16
#define PW0OUTPUTSIZE_1     80
#define PW0OUTPUTC_1        96
#define DWINPUTSIZE_1       80
#define DWINPUTC_1          96
#define DWOUTPUTSIZE_1      40
#define DWOUTPUTC_1         96
#define PW1INPUTSIZE_1      40
#define PW1INPUTC_1         96
#define PW1OUTPUTSIZE_1     40
#define PW1OUTPUTC_1        24 

//Layer 2
#define PW0INPUTSIZE_2      40
#define PW0INPUTC_2         24
#define PW0OUTPUTSIZE_2     40
#define PW0OUTPUTC_2        144
#define DWINPUTSIZE_2       40
#define DWINPUTC_2          144
#define DWOUTPUTSIZE_2      40
#define DWOUTPUTC_2         144
#define PW1INPUTSIZE_2      40
#define PW1INPUTC_2         144
#define PW1OUTPUTSIZE_2     40
#define PW1OUTPUTC_2        24

//Layer 3
#define PW0INPUTSIZE_3      40
#define PW0INPUTC_3         24
#define PW0OUTPUTSIZE_3     40
#define PW0OUTPUTC_3        144
#define DWINPUTSIZE_3       40
#define DWINPUTC_3          144
#define DWOUTPUTSIZE_3      20
#define DWOUTPUTC_3         144
#define PW1INPUTSIZE_3      20
#define PW1INPUTC_3         144
#define PW1OUTPUTSIZE_3     20
#define PW1OUTPUTC_3        24

//Layer 4
#define PW0INPUTSIZE_4      20
#define PW0INPUTC_4         24
#define PW0OUTPUTSIZE_4     20
#define PW0OUTPUTC_4        144
#define DWINPUTSIZE_4       20
#define DWINPUTC_4          144
#define DWOUTPUTSIZE_4      20
#define DWOUTPUTC_4         144
#define PW1INPUTSIZE_4      20
#define PW1INPUTC_4         144
#define PW1OUTPUTSIZE_4     20
#define PW1OUTPUTC_4        24

//Layer 5
#define PW0INPUTSIZE_5      20
#define PW0INPUTC_5         24
#define PW0OUTPUTSIZE_5     20
#define PW0OUTPUTC_5        144
#define DWINPUTSIZE_5       20
#define DWINPUTC_5          144
#define DWOUTPUTSIZE_5      20
#define DWOUTPUTC_5         144
#define PW1INPUTSIZE_5      20
#define PW1INPUTC_5         144
#define PW1OUTPUTSIZE_5     20
#define PW1OUTPUTC_5        24

//Layer 6
#define PW0INPUTSIZE_6      20
#define PW0INPUTC_6         24
#define PW0OUTPUTSIZE_6     20
#define PW0OUTPUTC_6        144
#define DWINPUTSIZE_6       20
#define DWINPUTC_6          144
#define DWOUTPUTSIZE_6      10
#define DWOUTPUTC_6         144
#define PW1INPUTSIZE_6      10
#define PW1INPUTC_6         144
#define PW1OUTPUTSIZE_6     10
#define PW1OUTPUTC_6        48

//Layer 7
#define PW0INPUTSIZE_7      10
#define PW0INPUTC_7         48
#define PW0OUTPUTSIZE_7     10
#define PW0OUTPUTC_7        288
#define DWINPUTSIZE_7       10
#define DWINPUTC_7          288
#define DWOUTPUTSIZE_7      10
#define DWOUTPUTC_7         288
#define PW1INPUTSIZE_7      10
#define PW1INPUTC_7         288
#define PW1OUTPUTSIZE_7     10
#define PW1OUTPUTC_7        48

//Layer 8
#define PW0INPUTSIZE_8      10
#define PW0INPUTC_8         48
#define PW0OUTPUTSIZE_8     10
#define PW0OUTPUTC_8        288
#define DWINPUTSIZE_8       10
#define DWINPUTC_8          288
#define DWOUTPUTSIZE_8      10
#define DWOUTPUTC_8         288
#define PW1INPUTSIZE_8      10
#define PW1INPUTC_8         288
#define PW1OUTPUTSIZE_8     10
#define PW1OUTPUTC_8        48

//Layer 9
#define PW0INPUTSIZE_9      10
#define PW0INPUTC_9         48
#define PW0OUTPUTSIZE_9     10
#define PW0OUTPUTC_9        288
#define DWINPUTSIZE_9       10
#define DWINPUTC_9          288
#define DWOUTPUTSIZE_9      10
#define DWOUTPUTC_9         288
#define PW1INPUTSIZE_9      10
#define PW1INPUTC_9         288
#define PW1OUTPUTSIZE_9     10
#define PW1OUTPUTC_9        48

//Layer 10
#define PW0INPUTSIZE_10      10
#define PW0INPUTC_10         48
#define PW0OUTPUTSIZE_10     10
#define PW0OUTPUTC_10        288
#define DWINPUTSIZE_10       10
#define DWINPUTC_10          288
#define DWOUTPUTSIZE_10      10
#define DWOUTPUTC_10         288
#define PW1INPUTSIZE_10      10
#define PW1INPUTC_10         288
#define PW1OUTPUTSIZE_10     10
#define PW1OUTPUTC_10        72

//Layer 11
#define PW0INPUTSIZE_11      10
#define PW0INPUTC_11         72
#define PW0OUTPUTSIZE_11     10
#define PW0OUTPUTC_11        432
#define DWINPUTSIZE_11       10
#define DWINPUTC_11          432
#define DWOUTPUTSIZE_11      10
#define DWOUTPUTC_11         432
#define PW1INPUTSIZE_11      10
#define PW1INPUTC_11         432
#define PW1OUTPUTSIZE_11     10
#define PW1OUTPUTC_11        72

//Layer 12
#define PW0INPUTSIZE_12      10
#define PW0INPUTC_12         72
#define PW0OUTPUTSIZE_12     10
#define PW0OUTPUTC_12        432
#define DWINPUTSIZE_12       10
#define DWINPUTC_12          432
#define DWOUTPUTSIZE_12      10
#define DWOUTPUTC_12         432
#define PW1INPUTSIZE_12      10
#define PW1INPUTC_12         432
#define PW1OUTPUTSIZE_12     10
#define PW1OUTPUTC_12        72

//Layer 13
#define PW0INPUTSIZE_13      10
#define PW0INPUTC_13         72
#define PW0OUTPUTSIZE_13     10
#define PW0OUTPUTC_13        432
#define DWINPUTSIZE_13       10
#define DWINPUTC_13          432
#define DWOUTPUTSIZE_13      5
#define DWOUTPUTC_13         432
#define PW1INPUTSIZE_13      5
#define PW1INPUTC_13         432
#define PW1OUTPUTSIZE_13     5
#define PW1OUTPUTC_13        120

//Layer 14
#define PW0INPUTSIZE_14      5
#define PW0INPUTC_14         120
#define PW0OUTPUTSIZE_14     5
#define PW0OUTPUTC_14        720
#define DWINPUTSIZE_14       5
#define DWINPUTC_14          720
#define DWOUTPUTSIZE_14      5
#define DWOUTPUTC_14         720
#define PW1INPUTSIZE_14      5
#define PW1INPUTC_14         720
#define PW1OUTPUTSIZE_14     5
#define PW1OUTPUTC_14        120

//Layer 15
#define PW0INPUTSIZE_15      5
#define PW0INPUTC_15         120
#define PW0OUTPUTSIZE_15     5
#define PW0OUTPUTC_15        720
#define DWINPUTSIZE_15       5
#define DWINPUTC_15          720
#define DWOUTPUTSIZE_15      5
#define DWOUTPUTC_15         720
#define PW1INPUTSIZE_15      5
#define PW1INPUTC_15         720
#define PW1OUTPUTSIZE_15     5
#define PW1OUTPUTC_15        120

//Layer 16
#define PW0INPUTSIZE_16      5
#define PW0INPUTC_16         120
#define PW0OUTPUTSIZE_16     5
#define PW0OUTPUTC_16        720
#define DWINPUTSIZE_16       5
#define DWINPUTC_16          720
#define DWOUTPUTSIZE_16      5
#define DWOUTPUTC_16         720
#define PW1INPUTSIZE_16      5
#define PW1INPUTC_16         720
#define PW1OUTPUTSIZE_16     5
#define PW1OUTPUTC_16        240




// Cluster Base Address
#define BASE                 0x2F001000

// MMR Address
#define TOP_MMR			BASE + 0x000000
#define STREAM_DMA0_MMR	BASE + 0x00002A
#define STREAM_DMA1_MMR	BASE + 0x000052
#define CLUSTER_DMA_MMR	BASE + 0x00007A 
// #define RES_MMR			BASE + 0x0000AF
#define PW0_MMR			BASE + 0x00008C
#define DW0_MMR			BASE + 0x00009A
#define PW1_MMR			BASE + 0x0000AC


// Memory Buffer and SPM address
#define StreamIn0		BASE + 0x00004B
#define StreamOut		BASE + 0x00004B
#define StreamIn1       BASE + 0x000073


// PW0 Arguments
#define PW0In           BASE + 0x0000FA
#define PW0filter       BASE + 0x00011A 
#define PW0Out          BASE + 0x00013A 

// Dw0 Arguments
#define DW0In           PW0Out 
#define DW0filter       BASE + 0x00015A
#define DW0Out          BASE + 0x00015C

// PW1 Arguments
#define PW1In           DW0Out
#define PW1filter       BASE + 0x00017C
#define PW1Out          BASE + 0x00019C

