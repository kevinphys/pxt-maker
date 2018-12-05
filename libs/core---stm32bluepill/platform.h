//  Original: pxt-maker/libs/core---stm32bluepill/platform.h
#ifndef __PXT_PLATFORM_H
#define __PXT_PLATFORM_H

#include "CmI2C.h"
#include "CmSPI.h"
#include "CmTimer.h"
#include "CmPinName.h"
#include "STM32BluePillPin.h"
#include "MultiButton.h"

#ifdef __cplusplus
extern "C" {
#endif

// void target_wait_us(unsigned long us);
// int target_seed_random(uint32_t rand);

#ifdef __cplusplus
}
#endif

#define NOTUSED_PAGE_SIZE 1024

#define DEV_NUM_PINS 48

#define DEV_PWM_PINS 0x0000E0030FCEULL
#define DEV_AIN_PINS 0x003f000300ffULL

// Codal doesn't yet distinguish between PWM and AIN
#define DEV_ANALOG_PINS (DEV_PWM_PINS | DEV_AIN_PINS)

#define CODAL_I2C codal::_cm::I2C
#define CODAL_PIN codal::STM32BluePillPin
#define CODAL_SPI codal::_cm::SPI
#define CODAL_TIMER codal::_cm::Timer

#define IMAGE_BITS 4

// The parameters below needs tuning!

#ifdef JUST_FOR_DAL_D_TS_CPP_WILL_IGNORE

#define NOTUSED_PA_0 0x00
#define NOTUSED_PA_1 0x01
#define NOTUSED_PA_2 0x02
#define NOTUSED_PA_3 0x03
#define NOTUSED_PA_4 0x04
#define NOTUSED_PA_5 0x05
#define NOTUSED_PA_6 0x06
#define NOTUSED_PA_7 0x07
#define NOTUSED_PA_8 0x08
#define NOTUSED_PA_9 0x09
#define NOTUSED_PA_10 0x0A
#define NOTUSED_PA_11 0x0B
#define NOTUSED_PA_12 0x0C
#define NOTUSED_PA_13 0x0D
#define NOTUSED_PA_14 0x0E
#define NOTUSED_PA_15 0x0F
#define NOTUSED_PB_0 0x10
#define NOTUSED_PB_1 0x11
#define NOTUSED_PB_2 0x12
#define NOTUSED_PB_3 0x13
#define NOTUSED_PB_4 0x14
#define NOTUSED_PB_5 0x15
#define NOTUSED_PB_6 0x16
#define NOTUSED_PB_7 0x17
#define NOTUSED_PB_8 0x18
#define NOTUSED_PB_9 0x19
#define NOTUSED_PB_10 0x1A
#define NOTUSED_PB_11 0x1B
#define NOTUSED_PB_12 0x1C
#define NOTUSED_PB_13 0x1D
#define NOTUSED_PB_14 0x1E
#define NOTUSED_PB_15 0x1F
#define NOTUSED_PC_0 0x20
#define NOTUSED_PC_1 0x21
#define NOTUSED_PC_2 0x22
#define NOTUSED_PC_3 0x23
#define NOTUSED_PC_4 0x24
#define NOTUSED_PC_5 0x25
#define NOTUSED_PC_6 0x26
#define NOTUSED_PC_7 0x27
#define NOTUSED_PC_8 0x28
#define NOTUSED_PC_9 0x29
#define NOTUSED_PC_10 0x2A
#define NOTUSED_PC_11 0x2B
#define NOTUSED_PC_12 0x2C
#define NOTUSED_PC_13 0x2D
#define NOTUSED_PC_14 0x2E
#define NOTUSED_PC_15 0x2F
#endif

#endif