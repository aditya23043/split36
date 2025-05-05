#pragma once

#define VENDOR_ID 0xFEED
#define PRODUCT_ID 0x6060
#define DEVICE_VER 0x0001
#define MANUFACTURER your_name
#define PRODUCT split36

#define MATRIX_ROWS 8
#define MATRIX_COLS 5

#define DIODE_DIRECTION COL2ROW

#define SOFT_SERIAL_PIN GP1
#define SPLIT_HAND_PIN GP0

#define MASTER_LEFT
// #define MASTER_RIGHT
// #define EE_HANDS

#define USE_SERIAL
// #define USE_I2C

#define RP2040_BOOTLOADER_DOUBLE_TAP_RESET
#define RP2040_BOOTLOADER_DOUBLE_TAP_RESET_LED GP25

#define DIRECT_PINS                                                                                                                                                                      \
    {                                                                                                                                                                                    \
        {GP19, GP5, GP4, GP3, GP2}, {GP18, GP9, GP8, GP7, GP6}, {GP17, GP13, GP12, GP11, GP10}, {NO_PIN, GP16, GP15, GP14, NO_PIN}, {GP2, GP3, GP4, GP5, GP19}, /* right side flipped */ \
            {GP6, GP7, GP8, GP9, GP18}, {GP10, GP11, GP12, GP13, GP17}, {                                                                                                                \
            NO_PIN, GP14, GP15, GP16, NO_PIN                                                                                                                                             \
        }                                                                                                                                                                                \
    }
