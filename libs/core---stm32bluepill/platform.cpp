//  Original: pxt-maker/libs/core---stm32bluepill/platform.cpp
#include "platform.h"
#include "pxt.h"

extern "C" void debug_print(const char *s);    //  TODO: Write a string to the buffered debug log.
extern "C" void debug_println(const char *s);  //  TODO: Write a string plus newline to the buffered debug log.
extern "C" void debug_flush(void);             //  TODO: Flush the buffer of the debug log so that buffered data will appear.
extern "C" void debug_force_flush(void);       //  TODO: Flush the buffer of the debug log so that buffered data will appear.
extern "C" int start_background_tasks(void);

namespace pxt {
    extern CODAL_TIMER devTimer;

    static void initRandomSeed() {
        //  TODO
    }

    void platformSendSerial(const char *data, int len) {
        debug_println("---pxt::platformSendSerial"); 
    }

    void platform_init() {
        //   This is called after cpu_clock_init.  CODAL scheduler is already started.
        debug_println("---pxt::platform_init");

        //  Start the background tasks to flush the log and wait for restart requests.
        start_background_tasks();

        initRandomSeed();
        debug_force_flush(); ////
        //  TODO: setSendToUART(platformSendSerial);
    }
}

void cpu_clock_init() {
    //  This is called before platform_init().  CODAL scheduler is not started yet.  Starting background tasks will fail.
    debug_println("---pxt::cpu_clock_init");

    //  Init the CODAL timer.
    devTimer.init();
}

/* Log:
platform_start_timer
rtc awake...
rtc awake ok
----bootloader
boot_target_get_serial_number
usb_set_serial_number
app exists
----application mode
usb_setup
flash allow 08006800 to 08010000
sync! sync! sync! sync! ---pxt::cpu_clock_init
timer init
start bg tasks 0
*** ERROR: create fibre failed
set restart callback 0800bb71
start bg tasks 0
*** ERROR: create fibre failed
*** ERROR: unable to listen for restart event fffffc16
pin 0
---pxt::platform_init
---pxt::initRandomSeed
pin 0
wt <4> pin 1
wt <1> pin 0
wt <4> pin 1
wt <1> pin 0
wt <4> pin 1
wt <1> pin 0
wt <4.SET_ADR
u{ ........bos typ 80, req 06, val 0f00, idx 0000, len 0005, GET_DES_BOS t 0f i 00
bos typ 80, req 06, val 0f00, idx 0000, len 0039, GET_DES_BOS t 0f i 00
...weburl typ c0, req 22, val 0001, idx 0002, len 00ff
.>>  typ 00, req 09, val 0001, idx 0000, len 0000, SET_CFG     t 00 i 01
HF2 config
.......>>  typ 80, req 08, val 0000, idx 0000, len ,restart callback
hf2 >> bininfo
hf2 << 25 / 58 68 56 00 00 02 00 00 00 00 01 00 00 00 01 00 00 40 04 00 00 72 10 e2 5e
} > pin 1
wt <1> restart handler
restarting...
pin 0
wt <4> pin 1
wt <1> done
----platform_setup
*/
