# ESP-AHT10-Extra

Minimalist ESP-8266 temperature/humidity sensor.

This is a Kicad design which uses a PCB USB connector and integrates an ESP-12 (or 07),
CH330N USB controller, a small voltage regulator (HT7233), and a AHT-10
temperature/humidity sensor. Flash and reset buttons are also included.

![PCB Front](https://github.com/c-/ESP-AHT10-Extra/blob/master/Images/front.jpg)

My prototype was done on a PCB mill (0.3mm 30 degree V-bit), so things like trace sizes
and clearances reflect that.

![PCB Back](https://github.com/c-/ESP-AHT10-Extra/blob/master/Images/back.jpg)

# Bill of Materials

Most parts are purchased from LCSC. Some of these choices aren't ideal, but I had them on hand and they work.
The only things I plan on doing differently is replacing the fuse with a 300mA and changing the HT-7233 out for a
SOT-23-3 version. A design based around one of the more common DFN-6 sensors like the Si70xx series might happen down the road.

* ESP-12 (I mount mine on 2mm pin headers)
* [Aosong AHT-10](https://lcsc.com/product-detail/Temperature-Humidity-Sensors_Aosong-Guangzhou-Elec-AHT10_C368909.html)
* [CH330N USB Controller](https://lcsc.com/product-detail/USB-ICs_Jiangsu-Qin-Heng-CH330N_C108996.html)
* [Holtek HT-7233 SOT-23-5](https://lcsc.com/product-detail/Low-Dropout-Regulators-LDO_HT7233_C77938.html)
* [STMicroelectronics USBLC6-2SC6 SOT-23-6](https://lcsc.com/product-detail/Diodes-ESD_STMicroelectronics_USBLC6-2SC6_USBLC6-2SC6_C7519.html)
* 100nF 0805 capacitors
* 10uF 0805 capacitors
* 10k 0805 resistors
* 1k 0805 resistor
* 330R 0805 resistor (should really be a 470)
* [B5817W SOD-123F Schottky barrier diode](https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_Shikues-B5817WL_C122853.html)
* [200mA (hold) 0805 fuse](https://lcsc.com/product-detail/PTC-Resettable-Fuses_BOURNS-MF-PSMF020X-2_C89657.html) (should probably be more like 300mA)
* [SPST Tactile Switches](https://lcsc.com/product-detail/Tactile-Switches_HYP-Hongyuan-Precision-1TS002A-2300-5000_C318817.html)

Strictly speaking, most of the USB protection components aren't *necessary* for a simple sensor
device and definitely complicated the build.
