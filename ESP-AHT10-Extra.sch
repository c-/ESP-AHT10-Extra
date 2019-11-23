EESchema Schematic File Version 4
LIBS:ESP-AHT10-Extra-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev "1.4"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP8266:ESP-12 U3
U 1 1 5DBDB353
P 2650 6200
F 0 "U3" H 2650 7278 50  0000 C CNN
F 1 "ESP-12" H 2650 7187 50  0000 C CNN
F 2 "CPB:ESP-12Emin" H 2650 6200 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 2650 6200 50  0001 C CNN
	1    2650 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5DBDB3F6
P 5400 3400
F 0 "J1" V 5480 3392 50  0000 L CNN
F 1 "USB" H 5480 3301 50  0000 L CNN
F 2 "CPB:usb-PCB" H 5400 3400 50  0001 C CNN
F 3 "~" H 5400 3400 50  0001 C CNN
	1    5400 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DBDCD7D
P 2650 7450
F 0 "#PWR03" H 2650 7200 50  0001 C CNN
F 1 "GND" H 2655 7277 50  0000 C CNN
F 2 "" H 2650 7450 50  0001 C CNN
F 3 "" H 2650 7450 50  0001 C CNN
	1    2650 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5DBDCDFF
P 3650 6900
F 0 "R4" H 3709 6946 50  0000 L CNN
F 1 "10K" H 3709 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3650 6900 50  0001 C CNN
F 3 "~" H 3650 6900 50  0001 C CNN
	1    3650 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6500 3650 6500
Wire Wire Line
	3650 6500 3650 6800
Wire Wire Line
	3650 7000 3650 7100
Wire Wire Line
	3650 7100 2650 7100
Wire Wire Line
	2650 7100 2650 7450
Connection ~ 2650 7100
$Comp
L Device:R_Small R1
U 1 1 5DBDCEB6
P 1100 5800
F 0 "R1" H 1159 5846 50  0000 L CNN
F 1 "10K" H 1159 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1100 5800 50  0001 C CNN
F 3 "~" H 1100 5800 50  0001 C CNN
	1    1100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6100 1100 6100
Wire Wire Line
	1100 6100 1100 5900
Wire Wire Line
	1100 5700 1100 5300
Wire Wire Line
	1100 5300 1700 5300
Text GLabel 1100 5150 1    50   Input ~ 0
3V3
Wire Wire Line
	1100 5150 1100 5300
Connection ~ 1100 5300
$Comp
L Device:C_Small C1
U 1 1 5DBDD191
P 950 6250
F 0 "C1" H 1042 6296 50  0000 L CNN
F 1 "100n" H 1042 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 950 6250 50  0001 C CNN
F 3 "~" H 950 6250 50  0001 C CNN
	1    950  6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5300 950  5300
Wire Wire Line
	950  5300 950  6150
Wire Wire Line
	950  6350 950  7100
Wire Wire Line
	950  7100 1450 7100
$Comp
L Device:R_Small R5
U 1 1 5DBDD45B
P 3700 5650
F 0 "R5" H 3759 5696 50  0000 L CNN
F 1 "10K" H 3759 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3700 5650 50  0001 C CNN
F 3 "~" H 3700 5650 50  0001 C CNN
	1    3700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5750 3700 6300
Wire Wire Line
	3700 6300 3550 6300
Wire Wire Line
	2650 5300 3700 5300
Wire Wire Line
	3700 5300 3700 5550
Connection ~ 2650 5300
Text GLabel 3800 6100 2    50   Input ~ 0
SCL
Text GLabel 3800 6200 2    50   Input ~ 0
SDA
Wire Wire Line
	3550 6100 3800 6100
Wire Wire Line
	3550 6200 3800 6200
$Comp
L Device:R_Small R2
U 1 1 5DBDDC75
P 1550 5900
F 0 "R2" V 1354 5900 50  0000 C CNN
F 1 "1K" V 1445 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1550 5900 50  0001 C CNN
F 3 "~" H 1550 5900 50  0001 C CNN
	1    1550 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 5900 1700 5900
Wire Wire Line
	1450 5900 1450 6200
Wire Wire Line
	1450 6200 1750 6200
NoConn ~ 1750 6000
NoConn ~ 1750 6400
NoConn ~ 1750 6500
NoConn ~ 3550 6400
$Comp
L Holtek:HT7233 U2
U 1 1 5DBE1C35
P 2600 1400
F 0 "U2" H 2600 1715 50  0000 C CNN
F 1 "HT7233" H 2600 1624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1900 1150 50  0001 C CNN
F 3 "" H 2600 1550 50  0001 C CNN
	1    2600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1450 2050 1450
Wire Wire Line
	2050 1450 2050 1350
Connection ~ 2050 1350
Wire Wire Line
	2050 1350 2150 1350
$Comp
L Device:C_Small C2
U 1 1 5DBE3E3F
P 1800 1600
F 0 "C2" H 1892 1646 50  0000 L CNN
F 1 "10u" H 1892 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1800 1600 50  0001 C CNN
F 3 "~" H 1800 1600 50  0001 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5DBE3E90
P 3200 1600
F 0 "C4" H 3292 1646 50  0000 L CNN
F 1 "10u" H 3292 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3200 1600 50  0001 C CNN
F 3 "~" H 3200 1600 50  0001 C CNN
	1    3200 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DBE476D
P 2600 1900
F 0 "#PWR02" H 2600 1650 50  0001 C CNN
F 1 "GND" H 2605 1727 50  0000 C CNN
F 2 "" H 2600 1900 50  0001 C CNN
F 3 "" H 2600 1900 50  0001 C CNN
	1    2600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1750 2600 1850
Text GLabel 3350 1350 2    50   Output ~ 0
3V3
Wire Wire Line
	3050 1350 3200 1350
Wire Wire Line
	3200 1350 3200 1500
Connection ~ 3200 1350
Wire Wire Line
	3200 1350 3350 1350
Wire Wire Line
	3200 1700 3200 1850
Wire Wire Line
	3200 1850 2600 1850
Connection ~ 2600 1850
Wire Wire Line
	2600 1850 2600 1900
Wire Wire Line
	1800 1350 1800 1500
Wire Wire Line
	1800 1350 2050 1350
Wire Wire Line
	1800 1700 1800 1850
Wire Wire Line
	1800 1850 2600 1850
$Comp
L AHT10:AHT10 U4
U 1 1 5DBE6669
P 2350 3600
F 0 "U4" H 2000 3150 50  0000 C CNN
F 1 "AHT10" H 2650 3150 50  0000 C CNN
F 2 "CPB:AHT10-HandSolder" H 2350 3600 50  0001 C CNN
F 3 "" H 2350 3600 50  0001 C CNN
	1    2350 3600
	1    0    0    -1  
$EndComp
Text GLabel 3350 3700 2    50   Input ~ 0
SCL
Text GLabel 3350 3500 2    50   Input ~ 0
SDA
Wire Wire Line
	2900 3500 3000 3500
Wire Wire Line
	2900 3700 3300 3700
$Comp
L Device:R_Small R7
U 1 1 5DBE999A
P 3300 3150
F 0 "R7" H 3359 3196 50  0000 L CNN
F 1 "10K" H 3359 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3300 3150 50  0001 C CNN
F 3 "~" H 3300 3150 50  0001 C CNN
	1    3300 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5DBE9A3C
P 3000 3150
F 0 "R6" H 3059 3196 50  0000 L CNN
F 1 "10K" H 3059 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3000 3150 50  0001 C CNN
F 3 "~" H 3000 3150 50  0001 C CNN
	1    3000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3250 3300 3700
Connection ~ 3300 3700
Wire Wire Line
	3300 3700 3350 3700
Wire Wire Line
	3000 3250 3000 3500
Connection ~ 3000 3500
Wire Wire Line
	3000 3500 3350 3500
Text GLabel 2350 2650 1    50   Input ~ 0
3V3
$Comp
L power:GND #PWR04
U 1 1 5DBEAB2F
P 2350 4300
F 0 "#PWR04" H 2350 4050 50  0001 C CNN
F 1 "GND" H 2355 4127 50  0000 C CNN
F 2 "" H 2350 4300 50  0001 C CNN
F 3 "" H 2350 4300 50  0001 C CNN
	1    2350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2650 2350 2900
Wire Wire Line
	2350 3050 3000 3050
Connection ~ 2350 3050
Wire Wire Line
	3000 3050 3300 3050
Connection ~ 3000 3050
Wire Wire Line
	2350 4150 2350 4200
Wire Wire Line
	1750 3500 1650 3500
Wire Wire Line
	1650 3500 1650 4200
Wire Wire Line
	1650 4200 2350 4200
Connection ~ 2350 4200
Wire Wire Line
	2350 4200 2350 4300
$Comp
L Device:C_Small C5
U 1 1 5DBEEB4D
P 1650 3100
F 0 "C5" H 1742 3146 50  0000 L CNN
F 1 "100n" H 1742 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1650 3100 50  0001 C CNN
F 3 "~" H 1650 3100 50  0001 C CNN
	1    1650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3200 1650 3500
Connection ~ 1650 3500
Wire Wire Line
	1650 3000 1650 2900
Wire Wire Line
	1650 2900 2350 2900
Connection ~ 2350 2900
Wire Wire Line
	2350 2900 2350 3050
$Comp
L Device:R_Small R3
U 1 1 5DBF30A7
P 1700 5500
F 0 "R3" H 1759 5546 50  0000 L CNN
F 1 "10K" H 1759 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1700 5500 50  0001 C CNN
F 3 "~" H 1700 5500 50  0001 C CNN
	1    1700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5300 1700 5400
Connection ~ 1700 5300
Wire Wire Line
	1700 5300 2650 5300
Wire Wire Line
	1700 5600 1700 5900
Connection ~ 1700 5900
Wire Wire Line
	1700 5900 1750 5900
Text GLabel 3800 5900 2    50   Output ~ 0
eTX
Text GLabel 3800 6000 2    50   Input ~ 0
eRX
Wire Wire Line
	3550 5900 3800 5900
Wire Wire Line
	3550 6000 3800 6000
$Comp
L Interface_USB:CH330N U1
U 1 1 5DC02823
P 9150 5550
F 0 "U1" H 9150 6028 50  0000 C CNN
F 1 "CH330N" H 9150 5937 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9000 6300 50  0001 C CNN
F 3 "http://www.wch.cn/downloads/file/240.html" H 9050 5750 50  0001 C CNN
	1    9150 5550
	1    0    0    -1  
$EndComp
Text GLabel 5700 3400 2    50   Input ~ 0
UD-
Text GLabel 5700 3500 2    50   Input ~ 0
UD+
Text GLabel 10600 3600 2    50   Input ~ 0
UD-
Text GLabel 9450 3600 0    50   Input ~ 0
UD+
Wire Wire Line
	8550 5650 8750 5650
Wire Wire Line
	8550 5750 8750 5750
$Comp
L power:GND #PWR01
U 1 1 5DC098ED
P 9150 6050
F 0 "#PWR01" H 9150 5800 50  0001 C CNN
F 1 "GND" H 9155 5877 50  0000 C CNN
F 2 "" H 9150 6050 50  0001 C CNN
F 3 "" H 9150 6050 50  0001 C CNN
	1    9150 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5DC0C395
P 7950 5150
F 0 "C3" V 7721 5150 50  0000 C CNN
F 1 "100n" V 7812 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7950 5150 50  0001 C CNN
F 3 "~" H 7950 5150 50  0001 C CNN
	1    7950 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9150 5950 9150 6050
Connection ~ 9150 6050
Text GLabel 9950 5550 2    50   Input ~ 0
eTX
Text GLabel 9950 5450 2    50   Output ~ 0
eRX
$Comp
L Switch:SW_Push SW2
U 1 1 5DC1481A
P 4050 6800
F 0 "SW2" V 4004 6948 50  0000 L CNN
F 1 "PROG" V 4095 6948 50  0000 L CNN
F 2 "CPB:Tact Switch 6mmx3.5mm C318817" H 4050 7000 50  0001 C CNN
F 3 "" H 4050 7000 50  0001 C CNN
	1    4050 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 6300 4050 6300
Wire Wire Line
	4050 6300 4050 6600
Connection ~ 3700 6300
Wire Wire Line
	4050 7000 4050 7100
Wire Wire Line
	4050 7100 3650 7100
Connection ~ 3650 7100
$Comp
L Switch:SW_Push SW1
U 1 1 5DC1830B
P 1450 6800
F 0 "SW1" V 1404 6948 50  0000 L CNN
F 1 "RESET" V 1495 6948 50  0000 L CNN
F 2 "CPB:Tact Switch 6mmx3.5mm C318817" H 1450 7000 50  0001 C CNN
F 3 "" H 1450 7000 50  0001 C CNN
	1    1450 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 6200 1450 6600
Connection ~ 1450 6200
Wire Wire Line
	1450 7000 1450 7100
Connection ~ 1450 7100
Wire Wire Line
	1450 7100 2650 7100
$Comp
L Device:C_Small C6
U 1 1 5DC2141A
P 8450 5450
F 0 "C6" V 8221 5450 50  0000 C CNN
F 1 "100n" V 8312 5450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8450 5450 50  0001 C CNN
F 3 "~" H 8450 5450 50  0001 C CNN
	1    8450 5450
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:USBLC6-2SC6 U5
U 1 1 5DC39FB1
P 10000 3500
F 0 "U5" H 10000 4178 50  0000 C CNN
F 1 "USBLC6-2SC6" H 10000 4087 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 9250 3900 50  0001 C CNN
F 3 "http://www2.st.com/resource/en/datasheet/CD00050750.pdf" H 10200 3850 50  0001 C CNN
	1    10000 3500
	1    0    0    -1  
$EndComp
Text GLabel 8550 5650 0    50   Input ~ 0
UDP+
Text GLabel 8550 5750 0    50   Input ~ 0
UDP-
$Comp
L power:GND #PWR05
U 1 1 5DC4A8A6
P 10000 4100
F 0 "#PWR05" H 10000 3850 50  0001 C CNN
F 1 "GND" H 10005 3927 50  0000 C CNN
F 2 "" H 10000 4100 50  0001 C CNN
F 3 "" H 10000 4100 50  0001 C CNN
	1    10000 4100
	1    0    0    -1  
$EndComp
Text GLabel 9450 3400 0    50   Output ~ 0
UDP+
Text GLabel 10600 3400 2    50   Output ~ 0
UDP-
Wire Wire Line
	9450 3400 9500 3400
Wire Wire Line
	9450 3600 9500 3600
Wire Wire Line
	10500 3400 10600 3400
Wire Wire Line
	10500 3600 10600 3600
Wire Wire Line
	10000 4000 10000 4100
Connection ~ 1800 1350
$Comp
L Device:Polyfuse_Small F1
U 1 1 5DC7CFA1
P 1550 1350
F 0 "F1" V 1345 1350 50  0000 C CNN
F 1 "200mA" V 1436 1350 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 1600 1150 50  0001 L CNN
F 3 "~" H 1550 1350 50  0001 C CNN
	1    1550 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DC645A4
P 5750 3650
F 0 "#PWR0101" H 5750 3400 50  0001 C CNN
F 1 "GND" H 5755 3477 50  0000 C CNN
F 2 "" H 5750 3650 50  0001 C CNN
F 3 "" H 5750 3650 50  0001 C CNN
	1    5750 3650
	1    0    0    -1  
$EndComp
Text GLabel 5700 3300 2    50   Output ~ 0
VBUS
Text GLabel 1050 1350 0    50   Input ~ 0
VBUS
Wire Wire Line
	5600 3300 5700 3300
Wire Wire Line
	5600 3400 5700 3400
Wire Wire Line
	5600 3500 5700 3500
Wire Wire Line
	5600 3600 5750 3600
Wire Wire Line
	5750 3600 5750 3650
Text GLabel 3350 1000 2    50   Output ~ 0
5V
$Comp
L Device:C_Small C7
U 1 1 5DC83A5A
P 10450 2850
F 0 "C7" V 10221 2850 50  0000 C CNN
F 1 "100n" V 10312 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10450 2850 50  0001 C CNN
F 3 "~" H 10450 2850 50  0001 C CNN
	1    10450 2850
	0    -1   1    0   
$EndComp
Wire Wire Line
	10000 2700 10000 2850
Wire Wire Line
	10000 2850 10350 2850
Connection ~ 10000 2850
Wire Wire Line
	10000 2850 10000 3000
$Comp
L power:GND #PWR06
U 1 1 5DC88A59
P 10600 3000
F 0 "#PWR06" H 10600 2750 50  0001 C CNN
F 1 "GND" H 10605 2827 50  0000 C CNN
F 2 "" H 10600 3000 50  0001 C CNN
F 3 "" H 10600 3000 50  0001 C CNN
	1    10600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 2850 10600 2850
Wire Wire Line
	10600 2850 10600 3000
Text Notes 5800 5950 0    50   ~ 0
NOTE: On paper, using 5V on VCC means\nwe drive TXD at 4.5V (well, 4.2V with\nthe drop from D1), which puts us above the\n3.6V specced working range. In practice,\nthe ESP-8266 is 5V tolerant on GPIO's.\n\nALSO NOTE: Apparently WCH\nchips have on-board USB\ntermination resistors.
Wire Wire Line
	8150 6050 9150 6050
Wire Wire Line
	8350 5450 8150 5450
Wire Wire Line
	8150 5450 8150 6050
$Comp
L Device:R_Small R8
U 1 1 5DC99AD6
P 9700 5550
F 0 "R8" H 9759 5596 50  0000 L CNN
F 1 "470R" H 9759 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9700 5550 50  0001 C CNN
F 3 "~" H 9700 5550 50  0001 C CNN
	1    9700 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 5550 9950 5550
Wire Wire Line
	9550 5550 9600 5550
Wire Wire Line
	8550 5450 8750 5450
Text GLabel 7450 4900 0    50   Input ~ 0
5V
Wire Wire Line
	9550 5450 9950 5450
$Comp
L Device:D_Schottky_Small D1
U 1 1 5DCB8E97
P 1250 1350
F 0 "D1" H 1250 1145 50  0000 C CNN
F 1 "B5817W" H 1250 1236 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 1250 1350 50  0001 C CNN
F 3 "~" V 1250 1350 50  0001 C CNN
	1    1250 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 1350 1150 1350
Wire Wire Line
	1650 1350 1800 1350
$Comp
L Device:C_Small C8
U 1 1 5DCC64D0
P 7600 5150
F 0 "C8" H 7692 5196 50  0000 L CNN
F 1 "10u" H 7692 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7600 5150 50  0001 C CNN
F 3 "~" H 7600 5150 50  0001 C CNN
	1    7600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4900 9150 5250
Wire Wire Line
	7450 4900 7600 4900
Wire Wire Line
	7950 5250 7950 6050
Wire Wire Line
	7950 6050 8150 6050
Connection ~ 8150 6050
Wire Wire Line
	7600 5250 7600 6050
Wire Wire Line
	7600 6050 7950 6050
Connection ~ 7950 6050
Wire Wire Line
	7600 5050 7600 4900
Connection ~ 7600 4900
Wire Wire Line
	7600 4900 7950 4900
Wire Wire Line
	7950 5050 7950 4900
Connection ~ 7950 4900
Wire Wire Line
	7950 4900 9150 4900
Wire Wire Line
	1350 1350 1450 1350
Text GLabel 10000 2700 1    50   Input ~ 0
5V
Wire Wire Line
	2050 1350 2050 1000
Wire Wire Line
	2050 1000 3350 1000
Text Notes 4650 2500 0    59   ~ 12
USB Connector
Text Notes 3750 650  0    59   ~ 12
Power
Text Notes 8350 2500 0    59   ~ 12
ESD TVS Diode
Text Notes 5800 4850 0    59   ~ 12
USB Controller
Text Notes 3050 2550 0    59   ~ 12
Temperature Sensor
Text Notes 3400 4850 0    59   ~ 12
ESP-8266
Wire Notes Line
	600  2300 11100 2300
Wire Notes Line
	600  4600 11100 4600
Text Notes 8350 2950 0    50   ~ 0
NOTE: This isn't strictly critical\nfor this application, but it's cheap\ninsurance if you have the part\nhandy.
Text Notes 600  2150 0    50   ~ 0
NOTE: Diode is overkill\nsince there's no easy way to\nconnect another power source.
Text Notes 650  7600 0    50   ~ 0
NOTE: R3 isn't needed for\nESP modules having an internal\nRESET pull-up. It'll still work if you\nadd it though.
Text GLabel 1450 5200 1    50   Input ~ 0
RESET
Wire Wire Line
	1450 5200 1450 5900
Connection ~ 1450 5900
Text GLabel 9950 5750 2    50   Output ~ 0
RESET
Wire Wire Line
	9550 5750 9950 5750
Wire Notes Line
	4450 7700 4450 550 
NoConn ~ 1750 6300
$EndSCHEMATC
