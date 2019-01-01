//  Original: pxt-maker/libs/core---stm32bluepill/platform.cpp
#include "platform.h"
#include "pxt.h"

extern "C" void debug_print(const char *s);    //  TODO: Write a string to the buffered debug log.
extern "C" void debug_println(const char *s);  //  TODO: Write a string plus newline to the buffered debug log.
extern "C" void debug_flush(void);             //  TODO: Flush the buffer of the debug log so that buffered data will appear.

namespace pxt {
    extern CODAL_TIMER devTimer;

    static void initRandomSeed() {
        debug_println("---pxt::initRandomSeed"); //// 
        //  TODO
    }

    void platformSendSerial(const char *data, int len) {
        debug_println("---pxt::platformSendSerial"); //// 
    }

    void platform_init() {
        debug_println("---pxt::platform_init"); //// 
        initRandomSeed();
        //  setSendToUART(platformSendSerial);
    }
}

void cpu_clock_init() {
    debug_println("---pxt::cpu_clock_init"); ////
    devTimer.init();
}
