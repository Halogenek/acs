EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3050 3150 550  950 
U 5DF19C0C
F0 "SLOT_1" 50
F1 "SLOT_1.sch" 50
$EndSheet
$Sheet
S 3750 3150 550  950 
U 5DF2E10A
F0 "SLOT_2" 50
F1 "SLOT_2.sch" 50
$EndSheet
$Sheet
S 4450 3150 550  950 
U 5DF2E1F6
F0 "SLOT_3" 50
F1 "SLOT_3.sch" 50
$EndSheet
$Sheet
S 5150 3150 550  950 
U 5DF2E1F8
F0 "SLOT_4" 50
F1 "SLOT_4.sch" 50
$EndSheet
$Sheet
S 5850 3150 550  950 
U 5DF2E246
F0 "SLOT_5" 50
F1 "SLOT_5.sch" 50
$EndSheet
$Sheet
S 6550 3150 550  950 
U 5DF2E248
F0 "SLOT_6" 50
F1 "SLOT_6.sch" 50
$EndSheet
$Sheet
S 7250 3150 550  950 
U 5DF2E24A
F0 "SLOT_7" 50
F1 "SLOT_7.sch" 50
$EndSheet
$Sheet
S 7950 3150 550  950 
U 5DF2E24C
F0 "SLOT_8" 50
F1 "SLOT_8.sch" 50
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H7
U 1 1 5DF49916
P 3000 5300
F 0 "H7" V 3237 5303 50  0000 C CNN
F 1 "+12V" V 3146 5303 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3000 5300 50  0001 C CNN
F 3 "~" H 3000 5300 50  0001 C CNN
	1    3000 5300
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H8
U 1 1 5DF4A191
P 3000 5700
F 0 "H8" V 3237 5703 50  0000 C CNN
F 1 "P_GND" V 3146 5703 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3000 5700 50  0001 C CNN
F 3 "~" H 3000 5700 50  0001 C CNN
	1    3000 5700
	0    -1   -1   0   
$EndComp
Text GLabel 3250 5300 2    50   Input ~ 0
+12V
Text GLabel 3250 5700 2    50   Input ~ 0
P_GND
Wire Wire Line
	3250 5700 3100 5700
Wire Wire Line
	3250 5300 3100 5300
$Comp
L Device:R R1
U 1 1 5DF4AA55
P 4350 5000
F 0 "R1" H 4420 5046 50  0000 L CNN
F 1 "R" H 4420 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 5000 50  0001 C CNN
F 3 "~" H 4350 5000 50  0001 C CNN
	1    4350 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DF4C349
P 4350 5400
F 0 "R2" H 4420 5446 50  0000 L CNN
F 1 "120" H 4420 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 5400 50  0001 C CNN
F 3 "~" H 4350 5400 50  0001 C CNN
	1    4350 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DF4C531
P 4350 5800
F 0 "R3" H 4420 5846 50  0000 L CNN
F 1 "R" H 4420 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 5800 50  0001 C CNN
F 3 "~" H 4350 5800 50  0001 C CNN
	1    4350 5800
	1    0    0    -1  
$EndComp
Text GLabel 4450 5600 2    50   Input ~ 0
UART0_485_N
Text GLabel 4450 5200 2    50   Input ~ 0
UART0_485_P
Text GLabel 4450 4800 2    50   Input ~ 0
+12V
Text GLabel 4450 6000 2    50   Input ~ 0
P_GND
Wire Wire Line
	4450 6000 4350 6000
Wire Wire Line
	4350 6000 4350 5950
Wire Wire Line
	4450 5600 4350 5600
Wire Wire Line
	4350 5600 4350 5550
Wire Wire Line
	4350 5600 4350 5650
Connection ~ 4350 5600
Wire Wire Line
	4450 5200 4350 5200
Wire Wire Line
	4350 5200 4350 5150
Wire Wire Line
	4350 5200 4350 5250
Connection ~ 4350 5200
Wire Wire Line
	4450 4800 4350 4800
Wire Wire Line
	4350 4800 4350 4850
$Comp
L Device:R R4
U 1 1 5DF4F419
P 5150 5000
F 0 "R4" H 5220 5046 50  0000 L CNN
F 1 "R" H 5220 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 5000 50  0001 C CNN
F 3 "~" H 5150 5000 50  0001 C CNN
	1    5150 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DF4F423
P 5150 5400
F 0 "R5" H 5220 5446 50  0000 L CNN
F 1 "120" H 5220 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 5400 50  0001 C CNN
F 3 "~" H 5150 5400 50  0001 C CNN
	1    5150 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5DF4F42D
P 5150 5800
F 0 "R6" H 5220 5846 50  0000 L CNN
F 1 "R" H 5220 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 5800 50  0001 C CNN
F 3 "~" H 5150 5800 50  0001 C CNN
	1    5150 5800
	1    0    0    -1  
$EndComp
Text GLabel 5250 5600 2    50   Input ~ 0
UART0_485_N
Text GLabel 5250 5200 2    50   Input ~ 0
UART0_485_P
Text GLabel 5250 4800 2    50   Input ~ 0
+12V
Text GLabel 5250 6000 2    50   Input ~ 0
P_GND
Wire Wire Line
	5250 6000 5150 6000
Wire Wire Line
	5150 6000 5150 5950
Wire Wire Line
	5250 5600 5150 5600
Wire Wire Line
	5150 5600 5150 5550
Wire Wire Line
	5150 5600 5150 5650
Connection ~ 5150 5600
Wire Wire Line
	5250 5200 5150 5200
Wire Wire Line
	5150 5200 5150 5150
Wire Wire Line
	5150 5200 5150 5250
Connection ~ 5150 5200
Wire Wire Line
	5250 4800 5150 4800
Wire Wire Line
	5150 4800 5150 4850
$Comp
L Mechanical:MountingHole H1
U 1 1 5DF50BF5
P 2950 6050
F 0 "H1" H 3050 6096 50  0000 L CNN
F 1 "MountingHole" H 3050 6005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 6050 50  0001 C CNN
F 3 "~" H 2950 6050 50  0001 C CNN
	1    2950 6050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5DF51416
P 2950 6250
F 0 "H2" H 3050 6296 50  0000 L CNN
F 1 "MountingHole" H 3050 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 6250 50  0001 C CNN
F 3 "~" H 2950 6250 50  0001 C CNN
	1    2950 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DF51618
P 2950 6450
F 0 "H3" H 3050 6496 50  0000 L CNN
F 1 "MountingHole" H 3050 6405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 6450 50  0001 C CNN
F 3 "~" H 2950 6450 50  0001 C CNN
	1    2950 6450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5DF51D86
P 2950 6650
F 0 "H4" H 3050 6696 50  0000 L CNN
F 1 "MountingHole" H 3050 6605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 6650 50  0001 C CNN
F 3 "~" H 2950 6650 50  0001 C CNN
	1    2950 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5DF51D90
P 2950 6850
F 0 "H5" H 3050 6896 50  0000 L CNN
F 1 "MountingHole" H 3050 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 6850 50  0001 C CNN
F 3 "~" H 2950 6850 50  0001 C CNN
	1    2950 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5DF51D9A
P 2950 7050
F 0 "H6" H 3050 7096 50  0000 L CNN
F 1 "MountingHole" H 3050 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 7050 50  0001 C CNN
F 3 "~" H 2950 7050 50  0001 C CNN
	1    2950 7050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
