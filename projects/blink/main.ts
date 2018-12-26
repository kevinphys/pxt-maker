forever(function () {
    pins.LED.digitalWrite(false)
    control.waitMicros(10)
    pins.LED.digitalWrite(true)
    control.waitMicros(10)
})
