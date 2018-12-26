//  Original: pxt-maker/libs/core---stm32bluepill/platform.h
#ifndef __PXT_PLATFORM_H
#define __PXT_PLATFORM_H

#include "CmI2C.h"
#include "CmSPI.h"
#include "CmTimer.h"
#include "CmPinName.h"
#include "STM32BluePillPin.h"
#include "MultiButton.h"

#define PAGE_SIZE 1024

//  How many pins this device has.
#define DEV_NUM_PINS 128

#define DEV_PWM_PINS 0x0000E0030FCEULL
#define DEV_AIN_PINS 0x003f000300ffULL

// Codal doesn't yet distinguish between PWM and AIN
#define DEV_ANALOG_PINS (DEV_PWM_PINS | DEV_AIN_PINS)

#define CODAL_I2C codal::_cm::I2C
#define CODAL_PIN codal::STM32BluePillPin
#define CODAL_SPI codal::_cm::SPI
#define CODAL_TIMER codal::_cm::Timer

#define IMAGE_BITS 4

// From pxt-common-packages/libs/base/pxtbase.h:
// #define PXT_IN_ISR() (SCB->ICSR & SCB_ICSR_VECTACTIVE_Msk)

extern "C" uint32_t target_in_isr(void);
#define PXT_IN_ISR() target_in_isr()

// The parameters below needs tuning!

//  TODO: Sync with pxt-common-packages/libs/core/pins.h and codal-libopencm3/stm32/cm/CmPinName.h
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