EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "SimpleTimer"
Date ""
Rev "1"
Comp "Piotr Wilk 259106"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Display_Character:CA56-12EWA U2
U 1 1 609B96BF
P 9750 4250
F 0 "U2" H 9750 4917 50  0000 C CNN
F 1 "CA56-12EWA" H 9750 4826 50  0000 C CNN
F 2 "Display_7Segment:CA56-12EWA" H 9750 3650 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/CA56-12EWA.pdf" H 9320 4280 50  0001 C CNN
	1    9750 4250
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Batteries:BATTERY-AAA_KIT BT-BOX1
U 1 1 609C0292
P 2450 4000
F 0 "BT-BOX1" H 2450 4304 45  0000 C CNN
F 1 "4,5[V]" H 2450 4220 45  0000 C CNN
F 2 "Battery:BatteryHolder_Keystone_2479_3xAAA" H 2450 4250 20  0001 C CNN
F 3 "" H 2450 4000 50  0001 C CNN
F 4 "" H 2450 4231 60  0000 C CNN "Field4"
	1    2450 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 4350 8650 4350
Wire Wire Line
	8350 4450 8650 4450
Wire Wire Line
	8400 4550 8650 4550
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 60A0C789
P 6350 2050
F 0 "Q1" H 6541 2096 50  0000 L CNN
F 1 "BC547" H 6541 2005 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 6550 1975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6350 2050 50  0001 L CNN
	1    6350 2050
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R4
U 1 1 609C95EC
P 5500 2900
F 0 "R4" H 5500 3094 45  0000 C CNN
F 1 "1k" H 5500 3010 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 5500 3050 20  0001 C CNN
F 3 "" H 5500 2900 60  0001 C CNN
F 4 " " H 5500 3021 60  0001 C CNN "Field4"
	1    5500 2900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R5
U 1 1 609D2F84
P 5500 3200
F 0 "R5" H 5500 3394 45  0000 C CNN
F 1 "1k" H 5500 3310 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 5500 3350 20  0001 C CNN
F 3 "" H 5500 3200 60  0001 C CNN
F 4 " " H 5500 3321 60  0001 C CNN "Field4"
	1    5500 3200
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R6
U 1 1 609D4EDC
P 5500 3500
F 0 "R6" H 5500 3694 45  0000 C CNN
F 1 "1k" H 5500 3610 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 5500 3650 20  0001 C CNN
F 3 "" H 5500 3500 60  0001 C CNN
F 4 " " H 5500 3621 60  0001 C CNN "Field4"
	1    5500 3500
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R3
U 1 1 609D6350
P 5500 2600
F 0 "R3" H 5500 2794 45  0000 C CNN
F 1 "1k" H 5500 2710 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 5500 2750 20  0001 C CNN
F 3 "" H 5500 2600 60  0001 C CNN
F 4 " " H 5500 2721 60  0001 C CNN "Field4"
	1    5500 2600
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R2
U 1 1 609D72F4
P 5500 2300
F 0 "R2" H 5500 2494 45  0000 C CNN
F 1 "1k" H 5500 2410 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 5500 2450 20  0001 C CNN
F 3 "" H 5500 2300 60  0001 C CNN
F 4 " " H 5500 2421 60  0001 C CNN "Field4"
	1    5500 2300
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R1
U 1 1 609D87C0
P 5500 2000
F 0 "R1" H 5500 2194 45  0000 C CNN
F 1 "1k" H 5500 2110 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 5500 2150 20  0001 C CNN
F 3 "" H 5500 2000 60  0001 C CNN
F 4 " " H 5500 2121 60  0001 C CNN "Field4"
	1    5500 2000
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R7
U 1 1 609D981E
P 5500 3800
F 0 "R7" H 5500 3994 45  0000 C CNN
F 1 "1k" H 5500 3910 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 5500 3950 20  0001 C CNN
F 3 "" H 5500 3800 60  0001 C CNN
F 4 " " H 5500 3921 60  0001 C CNN "Field4"
	1    5500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2000 4800 2000
Wire Wire Line
	4800 2000 4800 3100
Wire Wire Line
	5300 2300 4900 2300
Wire Wire Line
	4900 2300 4900 3200
Wire Wire Line
	4900 3200 4800 3200
Wire Wire Line
	5300 2600 4950 2600
Wire Wire Line
	4950 2600 4950 3300
Wire Wire Line
	4950 3300 4800 3300
Wire Wire Line
	5300 2900 5000 2900
Wire Wire Line
	5000 2900 5000 3400
Wire Wire Line
	5000 3400 4800 3400
Wire Wire Line
	5300 3200 5050 3200
Wire Wire Line
	5050 3200 5050 3500
Wire Wire Line
	5050 3500 4800 3500
Wire Wire Line
	5300 3500 5150 3500
Wire Wire Line
	5150 3500 5150 3600
Wire Wire Line
	5150 3600 4800 3600
Wire Wire Line
	5300 3800 5300 3700
Wire Wire Line
	5300 3700 4800 3700
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 60A599E9
P 7000 2050
F 0 "Q2" H 7191 2096 50  0000 L CNN
F 1 "BC547" H 7191 2005 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 7200 1975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 7000 2050 50  0001 L CNN
	1    7000 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R17
U 1 1 60A82B4C
P 3200 2950
F 0 "R17" V 3405 2950 50  0000 C CNN
F 1 "15k" V 3314 2950 50  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" V 3240 2940 50  0001 C CNN
F 3 "~" H 3200 2950 50  0001 C CNN
	1    3200 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 1850 7700 2750
$Comp
L Transistor_BJT:BC547 Q8
U 1 1 60A95BB6
P 6350 2750
F 0 "Q8" H 6541 2796 50  0000 L CNN
F 1 "BC547" H 6541 2705 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 6550 2675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6350 2750 50  0001 L CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q14
U 1 1 60A98030
P 7000 2750
F 0 "Q14" H 7191 2796 50  0000 L CNN
F 1 "BC547" H 7191 2705 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 7200 2675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 7000 2750 50  0001 L CNN
	1    7000 2750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q9
U 1 1 60A9A6DA
P 6350 3450
F 0 "Q9" H 6541 3496 50  0000 L CNN
F 1 "BC547" H 6541 3405 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 6550 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6350 3450 50  0001 L CNN
	1    6350 3450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q12
U 1 1 60A9C9A6
P 6950 3450
F 0 "Q12" H 7141 3496 50  0000 L CNN
F 1 "BC547" H 7141 3405 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 7150 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6950 3450 50  0001 L CNN
	1    6950 3450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q10
U 1 1 60A9F032
P 6350 4200
F 0 "Q10" H 6541 4246 50  0000 L CNN
F 1 "BC547" H 6541 4155 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 6550 4125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6350 4200 50  0001 L CNN
	1    6350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2300 6250 2300
Wire Wire Line
	6250 2300 6250 2450
Wire Wire Line
	6250 2450 6800 2450
Wire Wire Line
	6800 2450 6800 2050
Wire Wire Line
	5700 2900 6250 2900
Wire Wire Line
	6250 2900 6250 3150
Wire Wire Line
	6250 3150 6800 3150
Wire Wire Line
	6800 3150 6800 2750
Wire Wire Line
	6150 3200 6150 3450
Wire Wire Line
	6150 3500 6150 3850
Wire Wire Line
	6750 3850 6750 3450
Wire Wire Line
	6100 3800 6100 4200
Wire Wire Line
	7600 2550 7600 3850
Wire Wire Line
	7550 3200 7550 4400
Wire Wire Line
	7050 3250 7500 3250
Wire Wire Line
	7500 3250 7500 5000
Wire Wire Line
	7450 3900 7450 5550
Wire Wire Line
	7450 5550 7750 5550
Wire Wire Line
	7100 1850 7700 1850
Wire Wire Line
	7100 2550 7600 2550
Wire Wire Line
	5700 3200 6150 3200
Wire Wire Line
	6150 3850 6750 3850
Wire Wire Line
	5700 3500 6150 3500
Wire Wire Line
	5700 3800 6100 3800
Wire Wire Line
	6100 4200 6150 4200
Wire Wire Line
	6450 4000 6450 3900
Wire Wire Line
	6450 3900 7450 3900
Wire Wire Line
	6450 3200 6450 3250
Wire Wire Line
	6450 3200 7550 3200
Wire Wire Line
	5700 2600 6150 2600
Wire Wire Line
	5700 2000 6150 2000
Wire Wire Line
	6450 1800 7750 1800
Wire Wire Line
	6150 2000 6150 2050
Wire Wire Line
	6150 2600 6150 2750
Wire Wire Line
	6450 2500 6450 2550
Wire Wire Line
	6450 2500 7650 2500
Wire Wire Line
	6450 1800 6450 1850
Wire Wire Line
	4800 4100 4950 4100
Wire Wire Line
	4800 4000 4950 4000
Wire Wire Line
	4800 4400 4950 4400
Wire Wire Line
	4800 4500 4950 4500
Wire Wire Line
	11200 3750 11150 3750
Wire Wire Line
	13050 3750 13000 3750
Text Label 4950 4000 0    50   ~ 0
PD0
Text Label 4950 4100 0    50   ~ 0
PD1
Text Label 4950 4400 0    50   ~ 0
PD4
Text Label 4950 4500 0    50   ~ 0
PD5
Wire Wire Line
	13950 3750 13900 3750
Wire Wire Line
	12150 3750 12100 3750
Wire Wire Line
	11150 4350 11150 3750
Wire Wire Line
	10850 4350 11150 4350
Wire Wire Line
	12100 4450 12100 3750
Wire Wire Line
	10850 4450 12100 4450
Wire Wire Line
	13000 4550 13000 3750
Wire Wire Line
	10850 4550 13000 4550
Wire Wire Line
	13900 4650 13900 3750
Wire Wire Line
	10850 4650 13900 4650
$Comp
L Transistor_BJT:2N3906 Q7
U 1 1 60E0949B
P 11400 3850
F 0 "Q7" H 11590 3896 50  0000 L CNN
F 1 "2N3906" H 11590 3805 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 11600 3775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 11400 3850 50  0001 L CNN
	1    11400 3850
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q11
U 1 1 60E0EDF9
P 12350 3850
F 0 "Q11" H 12540 3896 50  0000 L CNN
F 1 "2N3906" H 12540 3805 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 12550 3775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 12350 3850 50  0001 L CNN
	1    12350 3850
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q16
U 1 1 60E144B8
P 13250 3850
F 0 "Q16" H 13440 3896 50  0000 L CNN
F 1 "2N3906" H 13440 3805 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 13450 3775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 13250 3850 50  0001 L CNN
	1    13250 3850
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q17
U 1 1 60E19DB5
P 14150 3850
F 0 "Q17" H 14340 3896 50  0000 L CNN
F 1 "2N3906" H 14340 3805 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 14350 3775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 14150 3850 50  0001 L CNN
	1    14150 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R22
U 1 1 60E2D2DD
P 11400 4200
F 0 "R22" H 11468 4246 50  0000 L CNN
F 1 "330" H 11468 4155 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" V 11440 4190 50  0001 C CNN
F 3 "~" H 11400 4200 50  0001 C CNN
	1    11400 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R23
U 1 1 60E3DAE5
P 12350 4200
F 0 "R23" H 12418 4246 50  0000 L CNN
F 1 "330" H 12418 4155 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" V 12390 4190 50  0001 C CNN
F 3 "~" H 12350 4200 50  0001 C CNN
	1    12350 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R25
U 1 1 60E42AB9
P 13250 4200
F 0 "R25" H 13318 4246 50  0000 L CNN
F 1 "330" H 13318 4155 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" V 13290 4190 50  0001 C CNN
F 3 "~" H 13250 4200 50  0001 C CNN
	1    13250 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R26
U 1 1 60E47B10
P 14150 4200
F 0 "R26" H 14218 4246 50  0000 L CNN
F 1 "330" H 14218 4155 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" V 14190 4190 50  0001 C CNN
F 3 "~" H 14150 4200 50  0001 C CNN
	1    14150 4200
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:10NF-PTH-10MM-10000V-1-% C1
U 1 1 60F23A38
P 3250 4050
F 0 "C1" H 3358 4142 45  0000 L CNN
F 1 "10nF" H 3358 4058 45  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:C_Disc_D5.0mm_W2.5mm_P2.50mm_1mm-hole" H 3250 4300 20  0001 C CNN
F 3 "" H 3250 4050 50  0001 C CNN
F 4 "CAP-09321" H 3358 4016 60  0001 L CNN "Field4"
	1    3250 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW3
U 1 1 60F40F9D
P 3400 6100
F 0 "SW3" H 3400 6385 50  0000 C BNN
F 1 "SW_MEC_5G" H 3400 6294 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3400 6300 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3400 6300 50  0001 C CNN
	1    3400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4200 4950 4200
Text Label 4950 4200 0    50   ~ 0
PD2
Wire Wire Line
	4800 4300 4950 4300
Text Label 4950 4300 0    50   ~ 0
PD3
Wire Wire Line
	2700 5650 2600 5650
$Comp
L SparkFun-Capacitors:10NF-PTH-10MM-10000V-1-% C2
U 1 1 60A28D5F
P 3050 5600
F 0 "C2" H 3158 5692 45  0000 L CNN
F 1 "10nF" H 3158 5608 45  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:C_Disc_D5.0mm_W2.5mm_P2.50mm_1mm-hole" H 3050 5850 20  0001 C CNN
F 3 "" H 3050 5600 50  0001 C CNN
F 4 "CAP-09321" H 3158 5566 60  0001 L CNN "Field4"
	1    3050 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 5650 2700 5500
Wire Wire Line
	2700 5500 3050 5500
Wire Wire Line
	2700 5650 2700 5800
Wire Wire Line
	2700 5800 3050 5800
Connection ~ 2700 5650
Wire Wire Line
	3050 5800 3200 5800
Wire Wire Line
	3200 5800 3200 5650
Connection ~ 3050 5800
Wire Wire Line
	3050 5500 3200 5500
Wire Wire Line
	3200 5500 3200 5650
Connection ~ 3050 5500
Connection ~ 3200 5650
Wire Wire Line
	2700 6100 2600 6100
$Comp
L SparkFun-Capacitors:10NF-PTH-10MM-10000V-1-% C3
U 1 1 60A75447
P 3050 6050
F 0 "C3" H 3158 6142 45  0000 L CNN
F 1 "10nF" H 3158 6058 45  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:C_Disc_D5.0mm_W2.5mm_P2.50mm_1mm-hole" H 3050 6300 20  0001 C CNN
F 3 "" H 3050 6050 50  0001 C CNN
F 4 "CAP-09321" H 3158 6016 60  0001 L CNN "Field4"
	1    3050 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 6100 2700 5950
Wire Wire Line
	2700 5950 3050 5950
Wire Wire Line
	2700 6100 2700 6250
Wire Wire Line
	2700 6250 3050 6250
Connection ~ 2700 6100
Wire Wire Line
	3050 6250 3200 6250
Connection ~ 3050 6250
Wire Wire Line
	3050 5950 3200 5950
Connection ~ 3050 5950
Wire Wire Line
	3200 5950 3200 6100
Connection ~ 3200 6100
Wire Wire Line
	3200 6100 3200 6250
Text Label 2600 5650 2    50   ~ 0
PD2
Text Label 2600 6100 2    50   ~ 0
PD3
$Comp
L Device:Buzzer BZ1
U 1 1 60A14CA3
P 6750 5350
F 0 "BZ1" H 6902 5379 50  0000 L CNN
F 1 "Buzzer" H 6902 5288 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 6725 5450 50  0001 C CNN
F 3 "~" V 6725 5450 50  0001 C CNN
	1    6750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5450 6650 5600
$Comp
L Transistor_BJT:BC547 Q18
U 1 1 60A543B0
P 6550 5800
F 0 "Q18" H 6741 5846 50  0000 L CNN
F 1 "BC547" H 6741 5755 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 6750 5725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6550 5800 50  0001 L CNN
	1    6550 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R28
U 1 1 60A6E123
P 6200 5800
F 0 "R28" V 5995 5800 50  0000 C CNN
F 1 "10k" V 6086 5800 50  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" V 6240 5790 50  0001 C CNN
F 3 "~" H 6200 5800 50  0001 C CNN
	1    6200 5800
	0    1    1    0   
$EndComp
$Comp
L SLG12014:SLG12014 S1
U 1 1 60A04D9E
P 4650 5650
F 0 "S1" H 5378 5596 50  0000 L CNN
F 1 "SLG12014" H 5378 5505 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:SLG12014_Bigger" H 5400 5750 50  0001 L CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/APEM%20Components%20PDFs/Slide_Switches.pdf" H 5400 5650 50  0001 L CNN
F 4 "Slide Switches SLIDE 1P2T" H 5400 5550 50  0001 L CNN "Description"
F 5 "8.9" H 5400 5450 50  0001 L CNN "Height"
F 6 "Apem" H 5400 5350 50  0001 L CNN "Manufacturer_Name"
F 7 "SLG12014" H 5400 5250 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "642-SLG12014" H 5400 5150 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Apem/SLG12014?qs=RNTjZpLRzVT%2Fzrn7yzOzpw%3D%3D" H 5400 5050 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 5400 4950 50  0001 L CNN "Arrow Part Number"
F 11 "" H 5400 4850 50  0001 L CNN "Arrow Price/Stock"
	1    4650 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R29
U 1 1 60A47964
P 6200 6200
F 0 "R29" V 5995 6200 50  0000 C CNN
F 1 "10k" V 6086 6200 50  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" V 6240 6190 50  0001 C CNN
F 3 "~" H 6200 6200 50  0001 C CNN
	1    6200 6200
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q19
U 1 1 60A15F55
P 6550 6200
F 0 "Q19" H 6741 6246 50  0000 L CNN
F 1 "BC547" H 6741 6155 50  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:TO-92_HandSolder_1mm" H 6750 6125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6550 6200 50  0001 L CNN
	1    6550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5850 4650 6200
Wire Wire Line
	4650 6200 6050 6200
Wire Wire Line
	6050 5800 5900 5800
Wire Wire Line
	4800 4600 4950 4600
Text Label 4950 4600 0    50   ~ 0
PD6
NoConn ~ 3600 3500
$Comp
L SparkFun-Resistors:RESISTOR0402 R36
U 1 1 60BE2F8D
P 7950 5550
F 0 "R36" H 7950 5744 45  0000 C CNN
F 1 "10" H 7950 5660 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 7950 5700 20  0001 C CNN
F 3 "" H 7950 5550 60  0001 C CNN
F 4 " " H 7950 5671 60  0001 C CNN "Field4"
	1    7950 5550
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R34
U 1 1 60BEBFF4
P 7950 5000
F 0 "R34" H 7950 5194 45  0000 C CNN
F 1 "10" H 7950 5110 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 7950 5150 20  0001 C CNN
F 3 "" H 7950 5000 60  0001 C CNN
F 4 " " H 7950 5121 60  0001 C CNN "Field4"
	1    7950 5000
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R32
U 1 1 60BF4F67
P 7950 4400
F 0 "R32" H 7950 4594 45  0000 C CNN
F 1 "10" H 7950 4510 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 7950 4550 20  0001 C CNN
F 3 "" H 7950 4400 60  0001 C CNN
F 4 " " H 7950 4521 60  0001 C CNN "Field4"
	1    7950 4400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R15
U 1 1 60BFDE66
P 7950 3850
F 0 "R15" H 7950 4044 45  0000 C CNN
F 1 "10" H 7950 3960 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 7950 4000 20  0001 C CNN
F 3 "" H 7950 3850 60  0001 C CNN
F 4 " " H 7950 3971 60  0001 C CNN "Field4"
	1    7950 3850
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R13
U 1 1 60C06C35
P 7950 3300
F 0 "R13" H 7950 3494 45  0000 C CNN
F 1 "10" H 7950 3410 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 7950 3450 20  0001 C CNN
F 3 "" H 7950 3300 60  0001 C CNN
F 4 " " H 7950 3421 60  0001 C CNN "Field4"
	1    7950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5550 8400 5550
Wire Wire Line
	8400 4550 8400 5550
Wire Wire Line
	8650 3950 8650 2200
Wire Wire Line
	8650 2200 8150 2200
Wire Wire Line
	8150 2750 8600 2750
Wire Wire Line
	8600 2750 8600 4050
Wire Wire Line
	8600 4050 8650 4050
Wire Wire Line
	7700 2750 7750 2750
Wire Wire Line
	7650 2500 7650 3300
Wire Wire Line
	7650 3300 7750 3300
Wire Wire Line
	8150 3300 8550 3300
Wire Wire Line
	8550 3300 8550 4150
Wire Wire Line
	8550 4150 8650 4150
Wire Wire Line
	8150 3850 8500 3850
Wire Wire Line
	8500 3850 8500 4250
Wire Wire Line
	8500 4250 8650 4250
Wire Wire Line
	7600 3850 7750 3850
Wire Wire Line
	8150 4400 8300 4400
Wire Wire Line
	8300 4400 8300 4350
Wire Wire Line
	7750 4400 7550 4400
Wire Wire Line
	7750 5000 7500 5000
Wire Wire Line
	8150 5000 8350 5000
Wire Wire Line
	8350 5000 8350 4450
Text GLabel 4200 5000 3    50   Input ~ 0
GND
Text GLabel 3600 6100 2    50   Input ~ 0
GND
Text GLabel 6650 6400 3    50   Input ~ 0
GND
Text GLabel 6450 4400 3    50   Input ~ 0
GND
Text GLabel 6450 3650 3    50   Input ~ 0
GND
Text GLabel 7050 3650 3    50   Input ~ 0
GND
Text GLabel 6450 2950 3    50   Input ~ 0
GND
Text GLabel 7100 2950 3    50   Input ~ 0
GND
Text GLabel 6450 2250 3    50   Input ~ 0
GND
Text GLabel 7100 2250 3    50   Input ~ 0
GND
Text GLabel 11600 3750 2    50   Input ~ 0
4,5V
Text GLabel 3600 5650 2    50   Input ~ 0
GND
$Comp
L Switch:SW_MEC_5G SW2
U 1 1 60F38601
P 3400 5650
F 0 "SW2" H 3400 5935 50  0000 C BNN
F 1 "SW_MEC_5G" H 3400 5844 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3400 5850 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3400 5850 50  0001 C CNN
	1    3400 5650
	1    0    0    -1  
$EndComp
Text GLabel 2450 3300 1    50   Input ~ 0
4,5V
Text GLabel 2450 4200 3    50   Input ~ 0
GND
Wire Wire Line
	2450 3600 2450 3800
Text GLabel 3250 4150 3    50   Input ~ 0
GND
$Comp
L Diode:1N5819 D1
U 1 1 60A78233
P 2450 3450
F 0 "D1" V 2404 3530 50  0000 L CNN
F 1 "1N5819" V 2495 3530 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P10.16mm_Horizontal" H 2450 3275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2450 3450 50  0001 C CNN
	1    2450 3450
	0    1    1    0   
$EndComp
NoConn ~ 4800 3800
NoConn ~ 8650 4650
$Comp
L MCU_Microchip_ATtiny:ATtiny2313-20PU U1
U 1 1 60840D00
P 4200 3900
F 0 "U1" H 4200 5181 50  0000 C CNN
F 1 "ATtiny2313-20PU" H 4200 5090 50  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:DIP-20_W7.62mm_Socket_1mm-hole" H 4200 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-2543-AVR-ATtiny2313_Datasheet.pdf" H 4200 3900 50  0001 C CNN
	1    4200 3900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R9
U 1 1 60C1878B
P 7950 2200
F 0 "R9" H 7950 2394 45  0000 C CNN
F 1 "10" H 7950 2310 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 7950 2350 20  0001 C CNN
F 3 "" H 7950 2200 60  0001 C CNN
F 4 " " H 7950 2321 60  0001 C CNN "Field4"
	1    7950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1800 7750 2200
$Comp
L SparkFun-Resistors:RESISTOR0402 R11
U 1 1 60C0F8D2
P 7950 2750
F 0 "R11" H 7950 2944 45  0000 C CNN
F 1 "10" H 7950 2860 45  0000 C CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_1mm-hole" H 7950 2900 20  0001 C CNN
F 3 "" H 7950 2750 60  0001 C CNN
F 4 " " H 7950 2871 60  0001 C CNN "Field4"
	1    7950 2750
	1    0    0    -1  
$EndComp
Text GLabel 12550 3750 2    50   Input ~ 0
4,5V
Text GLabel 13450 3750 2    50   Input ~ 0
4,5V
Text GLabel 14350 3750 2    50   Input ~ 0
4,5V
Text Label 11400 4350 0    50   ~ 0
PD0
Text Label 12350 4350 0    50   ~ 0
PD1
Text Label 13250 4350 0    50   ~ 0
PD4
Text Label 14150 4350 0    50   ~ 0
PD5
Text Label 5900 5800 0    50   ~ 0
PA0
Text Label 3600 3300 2    50   ~ 0
PA0
$Comp
L Switch:SW_MEC_5G SW1
U 1 1 60DB1CF5
P 3400 5150
F 0 "SW1" H 3400 5435 50  0000 C BNN
F 1 "SW_MEC_5G" H 3400 5344 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3400 5350 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3400 5350 50  0001 C CNN
	1    3400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5150 2600 5150
$Comp
L SparkFun-Capacitors:10NF-PTH-10MM-10000V-1-% C4
U 1 1 60DB1CFD
P 3050 5100
F 0 "C4" H 3158 5192 45  0000 L CNN
F 1 "10nF" H 3158 5108 45  0000 L CNN
F 2 "DIY_PCB_SOLDER_VARIANTS:C_Disc_D5.0mm_W2.5mm_P2.50mm_1mm-hole" H 3050 5350 20  0001 C CNN
F 3 "" H 3050 5100 50  0001 C CNN
F 4 "CAP-09321" H 3158 5066 60  0001 L CNN "Field4"
	1    3050 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 5150 2700 5000
Wire Wire Line
	2700 5000 3050 5000
Wire Wire Line
	2700 5150 2700 5300
Wire Wire Line
	2700 5300 3050 5300
Connection ~ 2700 5150
Wire Wire Line
	3050 5300 3200 5300
Connection ~ 3050 5300
Wire Wire Line
	3050 5000 3200 5000
Connection ~ 3050 5000
Wire Wire Line
	3200 5000 3200 5150
Connection ~ 3200 5150
Wire Wire Line
	3200 5150 3200 5300
Text Label 2600 5150 2    50   ~ 0
PD6
Text GLabel 3600 5150 2    50   Input ~ 0
GND
Text GLabel 3250 3850 1    50   Input ~ 0
4,5V
Text GLabel 4200 2800 1    50   Input ~ 0
4,5V
Text GLabel 4650 5750 0    50   Input ~ 0
4,5V
Text GLabel 6650 5250 1    50   Input ~ 0
4,5V
$Comp
L Switch:SW_MEC_5G SW4
U 1 1 60E3E2BD
P 3400 3100
F 0 "SW4" H 3400 3385 50  0000 C BNN
F 1 "SW_MEC_5G" H 3400 3294 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3400 3300 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3400 3300 50  0001 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
Text GLabel 3200 2800 1    50   Input ~ 0
GND
NoConn ~ 4650 5650
$EndSCHEMATC
