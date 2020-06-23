EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 10018784-10201TLF:10018784-10201TLF J?
U 1 1 5DF52F10
P 5600 3950
AR Path="/5DF19C0C/5DF52F10" Ref="J?"  Part="1" 
AR Path="/5DF2A71E/5DF52F10" Ref="J?"  Part="1" 
AR Path="/5DF2E10A/5DF52F10" Ref="J2"  Part="1" 
AR Path="/5DF2E1F8/5DF52F10" Ref="J?"  Part="1" 
AR Path="/5DF2E248/5DF52F10" Ref="J?"  Part="1" 
AR Path="/5DF2E24C/5DF52F10" Ref="J?"  Part="1" 
F 0 "J2" H 5600 5820 50  0000 C CNN
F 1 "10018784-10201TLF" H 5600 5729 50  0000 C CNN
F 2 "kicad-lib:CONN_10018784-10201TLF" H 5650 4450 50  0001 L BNN
F 3 "10018784-10201Tlf-Pci Express 2X32 Pos Bk / Tray" H 5650 4450 50  0001 L BNN
F 4 "Amphenol ICC" H 5700 4450 50  0001 L BNN "Pole4"
F 5 "609-2026-ND" H 5700 4450 50  0001 L BNN "Pole5"
F 6 "https://www.digikey.com/product-detail/en/amphenol-icc-fci/10018784-10201TLF/609-2026-ND/1002341?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 5650 4450 50  0001 L BNN "Pole6"
F 7 "None" H 5700 4450 50  0001 L BNN "Pole7"
F 8 "10018784-10201TLF" H 5650 4450 50  0001 L BNN "Pole8"
	1    5600 3950
	1    0    0    -1  
$EndComp
Text GLabel 4900 2350 0    50   Input ~ 0
+12V
Text GLabel 4900 2850 0    50   Input ~ 0
P_GND
Wire Wire Line
	4900 2350 4950 2350
Wire Wire Line
	4950 2350 4950 2450
Wire Wire Line
	4950 2750 5000 2750
Connection ~ 4950 2350
Wire Wire Line
	4950 2350 5000 2350
Wire Wire Line
	5000 2650 4950 2650
Connection ~ 4950 2650
Wire Wire Line
	4950 2650 4950 2750
Wire Wire Line
	4950 2550 5000 2550
Connection ~ 4950 2550
Wire Wire Line
	4950 2550 4950 2650
Wire Wire Line
	5000 2450 4950 2450
Connection ~ 4950 2450
Wire Wire Line
	4950 2450 4950 2550
Wire Wire Line
	4900 2850 4950 2850
Wire Wire Line
	4950 2850 4950 2950
Wire Wire Line
	4950 3350 5000 3350
Connection ~ 4950 2850
Wire Wire Line
	4950 2850 5000 2850
Wire Wire Line
	5000 3250 4950 3250
Connection ~ 4950 3250
Wire Wire Line
	4950 3250 4950 3350
Wire Wire Line
	4950 3150 5000 3150
Connection ~ 4950 3150
Wire Wire Line
	4950 3150 4950 3250
Wire Wire Line
	5000 3050 4950 3050
Connection ~ 4950 3050
Wire Wire Line
	4950 3050 4950 3150
Wire Wire Line
	4950 2950 5000 2950
Connection ~ 4950 2950
Wire Wire Line
	4950 2950 4950 3050
Text GLabel 6300 2350 2    50   Input ~ 0
+12V
Text GLabel 6300 2850 2    50   Input ~ 0
P_GND
Wire Wire Line
	6300 2350 6250 2350
Wire Wire Line
	6250 2350 6250 2450
Wire Wire Line
	6250 2750 6200 2750
Connection ~ 6250 2350
Wire Wire Line
	6250 2350 6200 2350
Wire Wire Line
	6200 2650 6250 2650
Connection ~ 6250 2650
Wire Wire Line
	6250 2650 6250 2750
Wire Wire Line
	6250 2550 6200 2550
Connection ~ 6250 2550
Wire Wire Line
	6250 2550 6250 2650
Wire Wire Line
	6200 2450 6250 2450
Connection ~ 6250 2450
Wire Wire Line
	6250 2450 6250 2550
Wire Wire Line
	6300 2850 6250 2850
Wire Wire Line
	6250 2850 6250 2950
Wire Wire Line
	6250 3350 6200 3350
Connection ~ 6250 2850
Wire Wire Line
	6250 2850 6200 2850
Wire Wire Line
	6200 3250 6250 3250
Connection ~ 6250 3250
Wire Wire Line
	6250 3250 6250 3350
Wire Wire Line
	6250 3150 6200 3150
Connection ~ 6250 3150
Wire Wire Line
	6250 3150 6250 3250
Wire Wire Line
	6200 3050 6250 3050
Connection ~ 6250 3050
Wire Wire Line
	6250 3050 6250 3150
Wire Wire Line
	6250 2950 6200 2950
Connection ~ 6250 2950
Wire Wire Line
	6250 2950 6250 3050
Text GLabel 6300 3550 2    50   Input ~ 0
UART0_485_N
Wire Wire Line
	6300 3550 6200 3550
Text GLabel 6300 3650 2    50   Input ~ 0
UART0_485_P
Wire Wire Line
	6300 3650 6200 3650
Text GLabel 6300 3750 2    50   Input ~ 0
P_GND
Wire Wire Line
	6300 3750 6200 3750
Connection ~ 4950 3350
Wire Wire Line
	4950 3650 5000 3650
Wire Wire Line
	4950 3350 4950 3650
NoConn ~ 5000 3550
NoConn ~ 5000 3750
NoConn ~ 5000 3850
$EndSCHEMATC
