//  TODO: Sync with codal-libopencm3
declare namespace pins {
    //% fixedInstance shim=pxt::getPin(CM_PIN_PA0)
    const PA0: PwmPin;
    //% fixedInstance shim=pxt::getPin(CM_PIN_PA1)
    const PA1: PwmPin;
    //% fixedInstance shim=pxt::getPin(CM_PIN_PA2)
    const PA2: PwmPin;
    //% fixedInstance shim=pxt::getPin(CM_PIN_PA3)
    const PA3: PwmPin;
    //% fixedInstance shim=pxt::getPin(CM_PIN_PA4)
    const PA4: PwmPin;
    
    //% fixedInstance shim=pxt::getPin(CM_PIN_LED)
    const LED: DigitalInOutPin;

    //% fixedInstance shim=pxt::getPin(CM_PIN_I2C_SCL1)
    const SCL1: DigitalInOutPin;
    //% fixedInstance shim=pxt::getPin(CM_PIN_I2C_SDA1)
    const SDA1: DigitalInOutPin;

    //% fixedInstance shim=pxt::getPin(CM_PIN_SPI_NSS1)
    const NSS1: DigitalInOutPin;
    //% fixedInstance shim=pxt::getPin(CM_PIN_SPI_SCK1)
    const SCK1: DigitalInOutPin;
    //% fixedInstance shim=pxt::getPin(CM_PIN_SPI_MISO1)
    const MISO1: DigitalInOutPin;
    //% fixedInstance shim=pxt::getPin(CM_PIN_SPI_MOSI1)
    const MOSI1: DigitalInOutPin;

    //% fixedInstance shim=pxt::getPin(CM_PIN_USART_TX2)
    const TX2: DigitalInOutPin;
    //% fixedInstance shim=pxt::getPin(CM_PIN_USART_RX2)
    const RX2: DigitalInOutPin;
}

declare namespace input {
}

