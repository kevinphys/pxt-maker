# USB

When you plug in your @boardname@ with a [USB](/device/usb) cable, it will appear as new storage device called ``@drivename@``.
If not, you might have to install a [UF2](https://github.com/Microsoft/uf2)-compatible bootloader on it.

* For SAMD21 based micro-controllers, go to https://github.com/Microsoft/uf2-samd21
* For other boards, you will need to implement UF2 support in the bootloader as specified in https://github.com/Microsoft/uf2

