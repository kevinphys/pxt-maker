forever(function () {
    pins.LED.digitalWrite(false)
    control.waitMicros(1000000)
    pins.LED.digitalWrite(true)
    control.waitMicros(1000000)
})
