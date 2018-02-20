You may build cyz_rgb for either BlinkM (attiny45) or BlinkM MaxM (attiny44) hardware.
The default is to build for attiny45, but you may specify the MCU environment variable
to build for attiny44. The output hex files will be appended with the name of the MCU,
for example "slave-attiny45.hex" or "master-attiny44.hex"

Use the following command to build for BlinkM MaxM (attiny44):
MCU=attiny44 make

master-attiny45.hex: every about 3 seconds chaneges color and broadcasts a fadeToColor command
slave-attiny45.hex: this will listen for incoming fadeToRGB and goToRGB commands and behave accordingly

I'm currently flashing blinkms using an atmel AVRISP programmer with avrdude and this command line:
avrdude -pt45 -cavrispmkII -Pusb -b115200 -Uflash:w:make/out/master-attiny45.hex:a 

The project is being developed with eclipse 3.4, avr plugin and avr-gcc on mac. Anyway, the makefile 
works well also from the console.
