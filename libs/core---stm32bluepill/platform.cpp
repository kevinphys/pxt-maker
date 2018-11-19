//  Original: pxt-maker/libs/core---stm32bluepill/platform.cpp
#include "platform.h"
#include "pxt.h"

extern void wait_us(uint32_t);

int target_seed_random(uint32_t seed) {
    //  TODO
    return 2205;
}

namespace pxt {

extern "C" void target_wait_us(unsigned long us) {
    wait_us(us);
}

static void initRandomSeed() {
    //  TODO
}

void platformSendSerial(const char *data, int len) {
    //  TODO
}

void platform_init() {
    //  TODO
    initRandomSeed();
    //  setSendToUART(platformSendSerial);
}

}

void cpu_clock_init() {
    //  TODO
    // missing in Codal
}
