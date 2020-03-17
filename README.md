# ESP-AHT10-Extra

Minimalist/compact ESP-8266 environmental sensor/programmer.

![Sensor Front](https://github.com/c-/ESP-AHT10-Extra/blob/master/Images/front_1.6.jpg)

This is a Kicad design which uses a PCB USB connector and integrates a
ESP-12 (or 07), CH330N USB controller, a small voltage regulator
(HT7233), an AHT-10 temperature/humidity sensor, and a VEML-7700
ambient light sensor. Flash and reset buttons are also included.

![Sensor Back](https://github.com/c-/ESP-AHT10-Extra/blob/master/Images/back_1.6.jpg)

My prototype was done on a PCB mill (0.3mm 30 degree V-bit), so things
like trace sizes and clearances reflect that. 0805 passives are used since
that's as small as I can go and still be able to route a trace between
the pads.

![Milled
Back](https://github.com/c-/ESP-AHT10-Extra/blob/master/Images/bare_1.6.jpg)

If you don't want to roll your own PCB's, [Oshpark does a nice job on these
at a great price](https://oshpark.com/shared_projects/kst87h07). The PCB is
approx 39mm x 21mm.

![OSHPark PCB](https://github.com/c-/ESP-AHT10-Extra/blob/master/Images/boards_1.5.jpg)

# Assembly

This PCB is designed for reflow soldering of the SMD components (I use
hot air). I'm sure someone *can* hand solder it, but it wouldn't be me.

Either or both sensors can be left off entirely, as the application
dictates.

R3 should be left out if the ESP modules being used have an
internal pullup between RST and 3V3 (which most newer ones seem to
have). Otherwise, you end up with a combined pullup resistance near 5k,
and GPIO16 though a 1k resistor seems to struggle to pulse that long
enough to perform a proper wake. With the modules I've tested (ESP-12E,
ESP-12F, ESP-07) there's been no issues with deep sleep wake and R3
unpopulated.

I usually mount my ESP modules on 2mm pin headers. It's not really
necessary unless you screw up designs as often as I do. However, doing so
technically makes all the USB stuff optional for some boards since I can
just remove the module for programming. On the other hand, I'm keeping the
USB stuff as I'm finding these boards are an extremely convenient programmers
for my pluggable modules.

The standard 1.6mm PCB is too thin to solidly fit most USB ports. I use
a thin (0.5mm) 3D printed shim on the front to bring the thickness up.
I've milled my latest from 2.17mm thick FR4 and it fits a port perfectly.

# Usage

The temperature sensor is mounted to the backside of the board from the
ESP-8266. Practically speaking, this means that unless you want to monitor
the temperature of the MCU, you need the device to spend as much time in
deep sleep as needed to bring the temperature down to ambient. When waking
up, it's best to take the temperature reading ASAP during startup,
prior to doing something like a DHCP connect, during which the
ESP starts to ramp up the temperatures. Testing shows that this sort of
delay can spike the temperature reading by 0.5C or more. I expect that
a combination of deep sleep and ESP-NOW would be ideal.

I still not sure what I'm going to use the ambient light sensor,
but it fits the design nicely. Unfortunately, orientation matters and not
all USB jacks are going to cooperate with that.

A minimal example sketch is included. It requires an AHT10 library (I
rolled my own, at https://github.com/c-/SnoutnetAHT10/, but others exists,
YYMV, etc) and the VEML-7700 library at
https://github.com/tedyapo/arduino-VEML7700.

v1.5 of the board used the LTR-303 ambient light sensor. I haven't been a
fan of the stability of that device. The VEML-7700 Just Works.

# Design Notes

The CH330N is running off the 5V rail, which *technically* means it's
driving the ESP UART at (allowing for a 0.3v drop from D1) approx 4.2V,
which is clearly above the 3.6V rated max for the ESP. In practice, the
ESP-8266 is quite 5V tolerant on GPIO's, and the CH330N only drives at
something like 4mA, so this probably isn't worth worrying about.

I've found that 10K pullups on the I2C sensors works in most cases, but
4.7K might be better. Still testing that.

The HT7233 is a perfectly fine regulator, but most similar
SOT-23-3 regulators rated for at least 250mA should work. Just check the
pinout.

No auto-reset/program circuit is included; you'll have to use buttons like
some kind of caveman.

# Bill of Materials

Most parts are from LCSC. Some of these choices aren't ideal, but I had
them on hand and they work.  A design based around one of the more common
DFN-6 sensors like the Si70xx series might happen down the road. I'm also
seriously considering a design based on a SOT-23-6 temperature sensor like
the LM73, as humidity isn't quite so critical for most of my applications.
Note that the photos show 1% resistors; that precision is not *necessary*,
it's just what I usually buy.

* ESP-12 (I *usually* mount mine on 2mm pin headers)
* [Aosong AHT-10 Temperature/Humidity Sensor](https://lcsc.com/product-detail/Temperature-Humidity-Sensors_Aosong-Guangzhou-Elec-AHT10_C368909.html)
* [VEML7700 Ambient Light Sensor](https://www.digikey.ca/product-detail/en/vishay-semiconductor-opto-division/VEML7700-TT/751-VEML7700-TTCT-ND/10817048)
* [CH330N USB Controller](https://lcsc.com/product-detail/USB-ICs_Jiangsu-Qin-Heng-CH330N_C108996.html)
* [Holtek HT-7233 SOT-23-3](https://lcsc.com/product-detail/Low-Dropout-Regulators-LDO_Holtek-Semicon-HT7233_C47970.html)
* [STMicroelectronics USBLC6-2SC6 SOT-23-6](https://lcsc.com/product-detail/Diodes-ESD_STMicroelectronics_USBLC6-2SC6_USBLC6-2SC6_C7519.html)
* 100nF 0805 capacitors
* 10uF 0805 capacitors
* 10k 0805 resistors
* 1k 0805 resistor
* 470R 0805 resistor
* [B5817W SOD-123F Schottky barrier diode](https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_Shikues-B5817WL_C122853.html)
* [350mA (hold) 0805 fuse](https://lcsc.com/product-detail/PTC-Resettable-Fuses_BOURNS-MF-PSMF035X-2_C116172.html)
* [SPST Tactile Switches](https://lcsc.com/product-detail/Tactile-Switches_HYP-Hongyuan-Precision-1TS002A-2300-5000_C318817.html)

Strictly speaking, most of the USB protection components aren't
*necessary* for a simple sensor device, but I had the parts and the
space...
