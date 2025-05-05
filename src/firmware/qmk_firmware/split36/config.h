#pragma once

#define NUM_ROWS 4
#define NUM_COLS 5

#define SOFT_SERIAL_PIN GP1

#define MASTER_LEFT

#define DIRECT_PINS_LEFT                                                                          \
    {                                                                                             \
        {GP2, GP3, GP4, GP5, GP19}, {GP6, GP7, GP8, GP9, GP18}, {GP10, GP11, GP12, GP13, GP17}, { \
            GP16, GP15, GP14                                                                      \
        }                                                                                         \
    }

#define DIRECT_PINS_RIGHT                                                                         \
    {                                                                                             \
        {GP19, GP5, GP4, GP3, GP2}, {GP18, GP9, GP8, GP7, GP6}, {GP17, GP13, GP12, GP10, GP11}, { \
            GP14, GP15, GP16                                                                      \
        }                                                                                         \
    }
