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

#define PAGE_SIZE 1024

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

//  TODO: Sync with pxt-common-packages/libs/core/pins.h and codal-libopencm3
#define CFG_PIN_PA0 100
#define CFG_PIN_PA1 101
#define CFG_PIN_PA2 102
#define CFG_PIN_PA3 103
#define CFG_PIN_PA4 104
#define CFG_PIN_SCL1 105
#define CFG_PIN_SDA1 106
#define CFG_PIN_NSS1 107
#define CFG_PIN_SCK1 108
#define CFG_PIN_MISO1 109
#define CFG_PIN_MOSI1 110
#define CFG_PIN_TX2 111
#define CFG_PIN_RX2 112

#ifdef JUST_FOR_DAL_D_TS_CPP_WILL_IGNORE
#define NOTUSED_PA_0 0x00
#endif

#endif