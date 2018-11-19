ls -l projects/blink/built/dockercodal/build/STM32_BLUE_PILL.bin
pkill openocd
openocd -f interface/stlink-v2.cfg -f target/stm32f1x.cfg -f scripts/flash.ocd
