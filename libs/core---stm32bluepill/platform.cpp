//  Original: pxt-maker/libs/core---stm32bluepill/platform.cpp
#include "platform.h"
#include "pxt.h"

// extern void wait_us(uint32_t);
// int target_seed_random(uint32_t seed) { return 2205; } //  TODO

extern "C" void target_init(void);
extern "C" void debug_print(const char *s);    //  TODO: Write a string to the buffered debug log.
extern "C" void debug_println(const char *s);  //  TODO: Write a string plus newline to the buffered debug log.
extern "C" void debug_flush(void);             //  TODO: Flush the buffer of the debug log so that buffered data will appear.

namespace pxt {

    // extern "C" void target_wait_us(unsigned long us) { wait_us(us); }

    static void initRandomSeed() {
        //  TODO
    }

    void platformSendSerial(const char *data, int len) {
        //  TODO
    }

    void platform_init() {
        target_init();
        debug_println("---pxt::platform_init"); debug_flush();  //// TODO
        initRandomSeed();
        //  setSendToUART(platformSendSerial);
    }

}

void cpu_clock_init() {
    //  TODO
    // missing in Codal
}
