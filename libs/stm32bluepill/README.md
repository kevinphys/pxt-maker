# STM32 Blue Pill

```
hexdump -C built/dockercodal/build/STM32_BLUE_PILL.bin

openocd -f /usr/local/share/openocd/scripts/interface/stlink-v2.cfg -f /usr/local/share/openocd/scripts/target/stm32f1x.cfg

reset halt

dump_image dump.bin 0x08000000 0x1ffff

reset halt

flash write_image erase built/dockercodal/build/STM32_BLUE_PILL.bin 0x08000000

reset run

```
