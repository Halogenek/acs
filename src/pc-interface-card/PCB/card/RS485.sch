EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Alpha Card PC Interface"
Date "2020-04-12"
Rev "1"
Comp "Halidelabs"
Comment1 "halidelabs.eu"
Comment2 "contact@halidelabs.eu"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_USB:FT230XQ U?
U 1 1 5EA6FF15
P 6100 3800
AR Path="/5EA6FF15" Ref="U?"  Part="1" 
AR Path="/5EA5E705/5EA6FF15" Ref="U2"  Part="1" 
F 0 "U2" H 6450 4500 50  0000 C CNN
F 1 "FT230XQ" H 6450 4400 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_4x4mm_P0.65mm_EP2.1x2.1mm" H 7450 3200 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf" H 6100 3800 50  0001 C CNN
	1    6100 3800
	1    0    0    -1  
$EndComp
$Comp
L alpha-card-pc-interface:THVD1450 U?
U 1 1 5EA6FF1B
P 6100 5450
AR Path="/5EA6FF1B" Ref="U?"  Part="1" 
AR Path="/5EA5E705/5EA6FF1B" Ref="U3"  Part="1" 
F 0 "U3" H 6450 5850 50  0000 C CNN
F 1 "THVD1450DR" H 6450 5750 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/thvd1410.pdf" H 5550 5850 50  0001 C CNN
	1    6100 5450
	1    0    0    -1  
$EndComp
Text Label 5300 5600 0    50   ~ 0
FT_TXD
Wire Wire Line
	5300 5600 5750 5600
Text Label 5300 5300 0    50   ~ 0
FT_RXD
Wire Wire Line
	5300 5300 5750 5300
Wire Wire Line
	7200 3500 6800 3500
Wire Wire Line
	7200 3400 6800 3400
$Comp
L Device:R R?
U 1 1 5EA6FF2A
P 6600 5450
AR Path="/5EA6FF2A" Ref="R?"  Part="1" 
AR Path="/5EA5E705/5EA6FF2A" Ref="R8"  Part="1" 
F 0 "R8" H 6670 5541 50  0000 L CNN
F 1 "120" H 6670 5450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6530 5450 50  0001 C CNN
F 3 "~" H 6600 5450 50  0001 C CNN
F 4 "*termination" H 6670 5359 50  0000 L CNN "Info"
	1    6600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5300 6600 5250
Wire Wire Line
	6600 5250 6500 5250
Wire Wire Line
	6500 5250 6500 5400
Wire Wire Line
	6500 5400 6450 5400
Wire Wire Line
	6450 5500 6500 5500
Wire Wire Line
	6500 5500 6500 5650
Wire Wire Line
	6500 5650 6600 5650
Wire Wire Line
	6600 5650 6600 5600
Wire Wire Line
	7200 5250 6600 5250
Connection ~ 6600 5250
Wire Wire Line
	6600 5650 7200 5650
Connection ~ 6600 5650
Text Label 7200 2950 2    50   ~ 0
FT_VCCIO
Wire Wire Line
	7200 2950 6200 2950
Wire Wire Line
	6200 2950 6200 3100
Wire Wire Line
	7200 4200 6800 4200
Wire Wire Line
	7200 4100 6800 4100
$Comp
L power:GND #PWR?
U 1 1 5EA6FF45
P 6100 4600
AR Path="/5EA6FF45" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FF45" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 6100 4350 50  0001 C CNN
F 1 "GND" H 6105 4427 50  0000 C CNN
F 2 "" H 6100 4600 50  0001 C CNN
F 3 "" H 6100 4600 50  0001 C CNN
	1    6100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4500 6000 4550
Wire Wire Line
	6000 4550 6100 4550
Wire Wire Line
	6200 4550 6200 4500
Wire Wire Line
	6100 4500 6100 4550
Connection ~ 6100 4550
Wire Wire Line
	6100 4550 6200 4550
Wire Wire Line
	6100 4550 6100 4600
$Comp
L Device:R R?
U 1 1 5EA6FF52
P 5200 3700
AR Path="/5EA6FF52" Ref="R?"  Part="1" 
AR Path="/5EA5E705/5EA6FF52" Ref="R6"  Part="1" 
F 0 "R6" V 5100 3700 50  0000 C CNN
F 1 "27" V 5200 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 3700 50  0001 C CNN
F 3 "~" H 5200 3700 50  0001 C CNN
	1    5200 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EA6FF58
P 5200 3800
AR Path="/5EA6FF58" Ref="R?"  Part="1" 
AR Path="/5EA5E705/5EA6FF58" Ref="R7"  Part="1" 
F 0 "R7" V 5300 3800 50  0000 C CNN
F 1 "27" V 5200 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 3800 50  0001 C CNN
F 3 "~" H 5200 3800 50  0001 C CNN
	1    5200 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3800 5400 3800
Wire Wire Line
	5400 3700 5350 3700
$Comp
L Device:C C?
U 1 1 5EA6FF60
P 5000 4300
AR Path="/5EA6FF60" Ref="C?"  Part="1" 
AR Path="/5EA5E705/5EA6FF60" Ref="C2"  Part="1" 
F 0 "C2" H 5115 4346 50  0000 L CNN
F 1 "47p" H 5115 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5038 4150 50  0001 C CNN
F 3 "~" H 5000 4300 50  0001 C CNN
	1    5000 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EA6FF66
P 4650 4300
AR Path="/5EA6FF66" Ref="C?"  Part="1" 
AR Path="/5EA5E705/5EA6FF66" Ref="C1"  Part="1" 
F 0 "C1" H 4765 4346 50  0000 L CNN
F 1 "47p" H 4765 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4688 4150 50  0001 C CNN
F 3 "~" H 4650 4300 50  0001 C CNN
	1    4650 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA6FF6C
P 5000 4600
AR Path="/5EA6FF6C" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FF6C" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 5000 4350 50  0001 C CNN
F 1 "GND" H 5005 4427 50  0000 C CNN
F 2 "" H 5000 4600 50  0001 C CNN
F 3 "" H 5000 4600 50  0001 C CNN
	1    5000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4600 5000 4450
$Comp
L power:GND #PWR?
U 1 1 5EA6FF73
P 4650 4600
AR Path="/5EA6FF73" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FF73" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 4650 4350 50  0001 C CNN
F 1 "GND" H 4655 4427 50  0000 C CNN
F 2 "" H 4650 4600 50  0001 C CNN
F 3 "" H 4650 4600 50  0001 C CNN
	1    4650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4600 4650 4450
Wire Wire Line
	5000 4150 5000 3800
Wire Wire Line
	5000 3800 5050 3800
Wire Wire Line
	5050 3700 4650 3700
Wire Wire Line
	4650 3700 4650 4150
Wire Wire Line
	4050 3800 5000 3800
Connection ~ 5000 3800
Wire Wire Line
	4050 3700 4650 3700
Connection ~ 4650 3700
Text Label 4050 4000 0    50   ~ 0
FT_VCCIO
Wire Wire Line
	4050 4000 5400 4000
Text Label 4050 3400 0    50   ~ 0
FT_VCCIO
Wire Wire Line
	4050 3400 5350 3400
$Comp
L Device:C C?
U 1 1 5EA6FF88
P 5150 3100
AR Path="/5EA6FF88" Ref="C?"  Part="1" 
AR Path="/5EA5E705/5EA6FF88" Ref="C4"  Part="1" 
F 0 "C4" V 4898 3100 50  0000 C CNN
F 1 "100n" V 4989 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 2950 50  0001 C CNN
F 3 "~" H 5150 3100 50  0001 C CNN
	1    5150 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA6FF8E
P 4950 3150
AR Path="/5EA6FF8E" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FF8E" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 4950 2900 50  0001 C CNN
F 1 "GND" H 4955 2977 50  0000 C CNN
F 2 "" H 4950 3150 50  0001 C CNN
F 3 "" H 4950 3150 50  0001 C CNN
	1    4950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3150 4950 3100
Wire Wire Line
	4950 3100 5000 3100
Wire Wire Line
	5300 3100 5350 3100
Wire Wire Line
	5350 3100 5350 3400
Connection ~ 5350 3400
Wire Wire Line
	5350 3400 5400 3400
Wire Wire Line
	7200 4000 6800 4000
NoConn ~ 6800 3600
NoConn ~ 6800 3700
Text Label 5300 5500 0    50   ~ 0
FT_TXDEN
Wire Wire Line
	5300 5500 5700 5500
$Comp
L power:GND #PWR?
U 1 1 5EA6FFA0
P 6100 5850
AR Path="/5EA6FFA0" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FFA0" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 6100 5600 50  0001 C CNN
F 1 "GND" H 6105 5677 50  0000 C CNN
F 2 "" H 6100 5850 50  0001 C CNN
F 3 "" H 6100 5850 50  0001 C CNN
	1    6100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5800 6100 5850
$Comp
L Regulator_Linear:NCP1117-5.0_SOT223 U?
U 1 1 5EA6FFA7
P 6000 1700
AR Path="/5EA6FFA7" Ref="U?"  Part="1" 
AR Path="/5EA5E705/5EA6FFA7" Ref="U1"  Part="1" 
F 0 "U1" H 6000 1942 50  0000 C CNN
F 1 "NCP1117-5.0" H 6000 1851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6000 1900 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 6100 1450 50  0001 C CNN
	1    6000 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EA6FFAD
P 6350 1900
AR Path="/5EA6FFAD" Ref="C?"  Part="1" 
AR Path="/5EA5E705/5EA6FFAD" Ref="C7"  Part="1" 
F 0 "C7" H 6465 1946 50  0000 L CNN
F 1 "100n" H 6465 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6388 1750 50  0001 C CNN
F 3 "~" H 6350 1900 50  0001 C CNN
	1    6350 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA6FFB3
P 6350 2100
AR Path="/5EA6FFB3" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FFB3" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 6350 1850 50  0001 C CNN
F 1 "GND" H 6355 1927 50  0000 C CNN
F 2 "" H 6350 2100 50  0001 C CNN
F 3 "" H 6350 2100 50  0001 C CNN
	1    6350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2050 6350 2100
$Comp
L Device:C C?
U 1 1 5EA6FFBA
P 5450 1900
AR Path="/5EA6FFBA" Ref="C?"  Part="1" 
AR Path="/5EA5E705/5EA6FFBA" Ref="C5"  Part="1" 
F 0 "C5" H 5565 1946 50  0000 L CNN
F 1 "100n" H 5565 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5488 1750 50  0001 C CNN
F 3 "~" H 5450 1900 50  0001 C CNN
	1    5450 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA6FFC0
P 5450 2100
AR Path="/5EA6FFC0" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FFC0" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 5450 1850 50  0001 C CNN
F 1 "GND" H 5455 1927 50  0000 C CNN
F 2 "" H 5450 2100 50  0001 C CNN
F 3 "" H 5450 2100 50  0001 C CNN
	1    5450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2050 5450 2100
$Comp
L power:GND #PWR?
U 1 1 5EA6FFC7
P 6000 2100
AR Path="/5EA6FFC7" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FFC7" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 6000 1850 50  0001 C CNN
F 1 "GND" H 6005 1927 50  0000 C CNN
F 2 "" H 6000 2100 50  0001 C CNN
F 3 "" H 6000 2100 50  0001 C CNN
	1    6000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2100 6000 2000
Wire Wire Line
	6350 1750 6350 1700
Wire Wire Line
	6350 1700 6300 1700
Wire Wire Line
	5700 1700 5450 1700
Wire Wire Line
	5450 1700 5450 1750
Text Label 7200 1700 2    50   ~ 0
PB_5V
Wire Wire Line
	7200 1700 6350 1700
Connection ~ 6350 1700
$Comp
L Device:C C?
U 1 1 5EA6FFD5
P 5150 2700
AR Path="/5EA6FFD5" Ref="C?"  Part="1" 
AR Path="/5EA5E705/5EA6FFD5" Ref="C3"  Part="1" 
F 0 "C3" V 4898 2700 50  0000 C CNN
F 1 "100n" V 4989 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 2550 50  0001 C CNN
F 3 "~" H 5150 2700 50  0001 C CNN
	1    5150 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3100 6000 2700
Wire Wire Line
	6000 2700 5300 2700
$Comp
L power:GND #PWR?
U 1 1 5EA6FFDD
P 4950 2750
AR Path="/5EA6FFDD" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FFDD" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 4950 2500 50  0001 C CNN
F 1 "GND" H 4955 2577 50  0000 C CNN
F 2 "" H 4950 2750 50  0001 C CNN
F 3 "" H 4950 2750 50  0001 C CNN
	1    4950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2750 4950 2700
Wire Wire Line
	4950 2700 5000 2700
Text Label 7200 2700 2    50   ~ 0
PB_5V
Wire Wire Line
	7200 2700 6000 2700
Connection ~ 6000 2700
$Comp
L Device:C C?
U 1 1 5EA6FFE8
P 5650 4950
AR Path="/5EA6FFE8" Ref="C?"  Part="1" 
AR Path="/5EA5E705/5EA6FFE8" Ref="C6"  Part="1" 
F 0 "C6" V 5398 4950 50  0000 C CNN
F 1 "100n" V 5489 4950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5688 4800 50  0001 C CNN
F 3 "~" H 5650 4950 50  0001 C CNN
	1    5650 4950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA6FFEE
P 5450 5000
AR Path="/5EA6FFEE" Ref="#PWR?"  Part="1" 
AR Path="/5EA5E705/5EA6FFEE" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 5450 4750 50  0001 C CNN
F 1 "GND" H 5455 4827 50  0000 C CNN
F 2 "" H 5450 5000 50  0001 C CNN
F 3 "" H 5450 5000 50  0001 C CNN
	1    5450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5000 5450 4950
Wire Wire Line
	5450 4950 5500 4950
Wire Wire Line
	5800 4950 6100 4950
Wire Wire Line
	6100 4950 6100 5100
Text Label 7200 4950 2    50   ~ 0
PB_5V
Wire Wire Line
	7200 4950 6100 4950
Connection ~ 6100 4950
Wire Wire Line
	5750 5400 5700 5400
Wire Wire Line
	5700 5400 5700 5500
Connection ~ 5700 5500
Wire Wire Line
	5700 5500 5750 5500
NoConn ~ 6800 3900
Wire Wire Line
	4050 1700 5450 1700
Connection ~ 5450 1700
Text HLabel 7200 5250 2    50   Output ~ 0
UART0_485_P
Text HLabel 7200 5650 2    50   Output ~ 0
UART0_485_N
Text HLabel 7200 4100 2    50   Output ~ 0
FT_TXLED
Text HLabel 7200 4200 2    50   Output ~ 0
FT_RXLED
Text Label 7200 3400 2    50   ~ 0
FT_TXD
Text Label 7200 3500 2    50   ~ 0
FT_RXD
Text Label 7200 4000 2    50   ~ 0
FT_TXDEN
Text HLabel 4050 1700 0    50   Input ~ 0
USB_VBUS
Text HLabel 4050 3700 0    50   Input ~ 0
USB_D-
Text HLabel 4050 3800 0    50   Input ~ 0
USB_D+
$EndSCHEMATC
