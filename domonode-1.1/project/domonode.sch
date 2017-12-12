EESchema Schematic File Version 2
LIBS:power
LIBS:ESP8266
LIBS:acdc
LIBS:transistors
LIBS:regul
LIBS:device
LIBS:conn
LIBS:ssr
LIBS:domonode-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L RAC02-05SC U1
U 1 1 59898424
P 3100 1450
F 0 "U1" H 3100 1750 60  0000 C CNN
F 1 "HLK-PM01" H 3100 1450 60  0000 C CNN
F 2 "My_Libraries:ACDC-HLK+ND" H 3100 1450 60  0001 C CNN
F 3 "" H 3100 1450 60  0000 C CNN
	1    3100 1450
	1    0    0    -1  
$EndComp
$Comp
L Varistor VR1
U 1 1 598985E5
P 2300 1450
F 0 "VR1" V 2360 1404 50  0000 C TNN
F 1 "VR" V 2300 1450 50  0000 C CNN
F 2 "Varistors:RV_Disc_D15.5_W4.2_P7.5" H 2300 1450 50  0001 C CNN
F 3 "" H 2300 1450 50  0000 C CNN
	1    2300 1450
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 59898696
P 1850 1700
F 0 "F1" H 1950 1750 50  0000 C CNN
F 1 "FUSE" H 1750 1650 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" H 1850 1700 50  0001 C CNN
F 3 "" H 1850 1700 50  0000 C CNN
	1    1850 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5989880D
P 4250 1650
F 0 "#PWR01" H 4250 1400 50  0001 C CNN
F 1 "GND" H 4250 1500 50  0000 C CNN
F 2 "" H 4250 1650 50  0000 C CNN
F 3 "" H 4250 1650 50  0000 C CNN
	1    4250 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5989883D
P 4250 1250
F 0 "#PWR02" H 4250 1100 50  0001 C CNN
F 1 "+5V" H 4250 1390 50  0000 C CNN
F 2 "" H 4250 1250 50  0000 C CNN
F 3 "" H 4250 1250 50  0000 C CNN
	1    4250 1250
	1    0    0    -1  
$EndComp
$Comp
L AP111733 U2
U 1 1 59898899
P 4950 1250
F 0 "U2" H 4950 1600 60  0000 C CNN
F 1 "AMS1117-3.3" H 4950 1500 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4950 1150 60  0001 C CNN
F 3 "" H 4950 1150 60  0000 C CNN
	1    4950 1250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59898A34
P 4250 1450
F 0 "C1" H 4275 1550 50  0000 L CNN
F 1 "C" H 4275 1350 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_10x10" H 4288 1300 50  0001 C CNN
F 3 "" H 4250 1450 50  0000 C CNN
	1    4250 1450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59898AD1
P 9600 1100
F 0 "C2" H 9625 1200 50  0000 L CNN
F 1 "10u" H 9625 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9638 950 50  0001 C CNN
F 3 "" H 9600 1100 50  0000 C CNN
	1    9600 1100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 59898B10
P 5500 1250
F 0 "#PWR03" H 5500 1100 50  0001 C CNN
F 1 "+3.3V" H 5500 1390 50  0000 C CNN
F 2 "" H 5500 1250 50  0000 C CNN
F 3 "" H 5500 1250 50  0000 C CNN
	1    5500 1250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 59898D45
P 9600 950
F 0 "#PWR04" H 9600 800 50  0001 C CNN
F 1 "+3.3V" H 9600 1090 50  0000 C CNN
F 2 "" H 9600 950 50  0000 C CNN
F 3 "" H 9600 950 50  0000 C CNN
	1    9600 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59898E1E
P 1900 4600
F 0 "#PWR05" H 1900 4350 50  0001 C CNN
F 1 "GND" H 1900 4450 50  0000 C CNN
F 2 "" H 1900 4600 50  0000 C CNN
F 3 "" H 1900 4600 50  0000 C CNN
	1    1900 4600
	-1   0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 59898E92
P 10350 1250
F 0 "R6" V 10430 1250 50  0000 C CNN
F 1 "10k" V 10350 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10280 1250 50  0001 C CNN
F 3 "" H 10350 1250 50  0000 C CNN
	1    10350 1250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59898F94
P 7200 1250
F 0 "R3" V 7280 1250 50  0000 C CNN
F 1 "10k" V 7200 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7130 1250 50  0001 C CNN
F 3 "" H 7200 1250 50  0000 C CNN
	1    7200 1250
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5989902A
P 6750 1250
F 0 "R4" V 6830 1250 50  0000 C CNN
F 1 "10k" V 6750 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6680 1250 50  0001 C CNN
F 3 "" H 6750 1250 50  0000 C CNN
	1    6750 1250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 598991A7
P 5000 2800
F 0 "R1" V 5080 2800 50  0000 C CNN
F 1 "10k" V 5000 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4930 2800 50  0001 C CNN
F 3 "" H 5000 2800 50  0000 C CNN
	1    5000 2800
	1    0    0    -1  
$EndComp
$Comp
L ESP-12 U3
U 1 1 598995AB
P 8300 1850
F 0 "U3" H 8300 1750 50  0000 C CNN
F 1 "ESP-12" H 8300 1950 50  0000 C CNN
F 2 "ESP8266:ESP-12" H 8300 1850 50  0001 C CNN
F 3 "" H 8300 1850 50  0001 C CNN
	1    8300 1850
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5989991F
P 9250 1100
F 0 "C3" H 9275 1200 50  0000 L CNN
F 1 "100n" H 9275 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9288 950 50  0001 C CNN
F 3 "" H 9250 1100 50  0000 C CNN
	1    9250 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 598999A2
P 9600 1250
F 0 "#PWR06" H 9600 1000 50  0001 C CNN
F 1 "GND" H 9600 1100 50  0000 C CNN
F 2 "" H 9600 1250 50  0000 C CNN
F 3 "" H 9600 1250 50  0000 C CNN
	1    9600 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 59899A14
P 8300 2850
F 0 "#PWR07" H 8300 2600 50  0001 C CNN
F 1 "GND" H 8300 2700 50  0000 C CNN
F 2 "" H 8300 2850 50  0000 C CNN
F 3 "" H 8300 2850 50  0000 C CNN
	1    8300 2850
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5989A242
P 10100 1250
F 0 "R5" V 10180 1250 50  0000 C CNN
F 1 "10k" V 10100 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10030 1250 50  0001 C CNN
F 3 "" H 10100 1250 50  0000 C CNN
	1    10100 1250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 5989A97A
P 1000 2700
F 0 "P1" H 1000 2900 50  0000 C CNN
F 1 "CONN_01X03" V 1100 2700 50  0000 C CNN
F 2 "Connect:AK300-3" H 1000 2700 50  0001 C CNN
F 3 "" H 1000 2700 50  0000 C CNN
	1    1000 2700
	-1   0    0    -1  
$EndComp
$Comp
L CONN_02X05 P3
U 1 1 598D80AA
P 1500 4400
F 0 "P3" H 1500 4700 50  0000 C CNN
F 1 "CONN_2x5" V 1600 4400 50  0001 C CNN
F 2 "Connectors_Multicomp:Multicomp_MC9A12-1034_2x05x2.54mm_Straight" V 1500 4400 50  0001 C CNN
F 3 "" H 1500 4400 50  0000 C CNN
	1    1500 4400
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 598EC2B4
P 950 4600
F 0 "#PWR08" H 950 4450 50  0001 C CNN
F 1 "+5V" H 950 4740 50  0000 C CNN
F 2 "" H 950 4600 50  0000 C CNN
F 3 "" H 950 4600 50  0000 C CNN
	1    950  4600
	-1   0    0    -1  
$EndComp
$Comp
L Omron_G3MB-202 RL1
U 1 1 598F0DA3
P 3150 2450
F 0 "RL1" H 3150 2750 60  0000 C CNN
F 1 "Omron_G3MB-202" H 3150 2450 60  0000 C CNN
F 2 "My_Libraries:G3MB" H 3150 2450 60  0001 C CNN
F 3 "" H 3150 2450 60  0001 C CNN
	1    3150 2450
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 598F11E3
P 5350 2500
F 0 "R2" V 5430 2500 50  0000 C CNN
F 1 "1k" V 5350 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5280 2500 50  0001 C CNN
F 3 "" H 5350 2500 50  0000 C CNN
	1    5350 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 598F126B
P 5000 3050
F 0 "#PWR09" H 5000 2800 50  0001 C CNN
F 1 "GND" H 5000 2900 50  0000 C CNN
F 2 "" H 5000 3050 50  0000 C CNN
F 3 "" H 5000 3050 50  0000 C CNN
	1    5000 3050
	1    0    0    -1  
$EndComp
$Comp
L 2N7002 Q1
U 1 1 598F13B9
P 4600 2450
F 0 "Q1" H 4800 2500 50  0000 L CNN
F 1 "2n7002" H 4800 2400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4800 2550 50  0001 C CNN
F 3 "" H 4600 2450 50  0000 C CNN
	1    4600 2450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 598F158D
P 4500 3050
F 0 "#PWR010" H 4500 2800 50  0001 C CNN
F 1 "GND" H 4500 2900 50  0000 C CNN
F 2 "" H 4500 3050 50  0000 C CNN
F 3 "" H 4500 3050 50  0000 C CNN
	1    4500 3050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 598F3421
P 1000 3200
F 0 "P2" H 1000 3400 50  0000 C CNN
F 1 "CONN_01X03" V 1100 3200 50  0000 C CNN
F 2 "Connect:AK300-3" H 1000 3200 50  0001 C CNN
F 3 "" H 1000 3200 50  0000 C CNN
	1    1000 3200
	-1   0    0    -1  
$EndComp
Text GLabel 1500 2800 2    60   Output ~ 0
RL4P
Text GLabel 1500 3100 2    60   Output ~ 0
RL3P
Text GLabel 1850 3200 2    60   Output ~ 0
RL2P
Text GLabel 1500 3300 2    60   Output ~ 0
RL1P
Text GLabel 2450 2050 0    60   Output ~ 0
RL1P
$Comp
L +5V #PWR011
U 1 1 598F4732
P 4500 2050
F 0 "#PWR011" H 4500 1900 50  0001 C CNN
F 1 "+5V" H 4500 2190 50  0000 C CNN
F 2 "" H 4500 2050 50  0000 C CNN
F 3 "" H 4500 2050 50  0000 C CNN
	1    4500 2050
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 598F57AA
P 4950 5850
F 0 "R11" V 5030 5850 50  0000 C CNN
F 1 "10k" V 4950 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4880 5850 50  0001 C CNN
F 3 "" H 4950 5850 50  0000 C CNN
	1    4950 5850
	1    0    0    -1  
$EndComp
$Comp
L Omron_G3MB-202 RL3
U 1 1 598F57B0
P 3100 5500
F 0 "RL3" H 3100 5800 60  0000 C CNN
F 1 "Omron_G3MB-202" H 3100 5500 60  0000 C CNN
F 2 "My_Libraries:G3MB" H 3100 5500 60  0001 C CNN
F 3 "" H 3100 5500 60  0001 C CNN
	1    3100 5500
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 598F57B8
P 5300 5550
F 0 "R14" V 5380 5550 50  0000 C CNN
F 1 "1k" V 5300 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5230 5550 50  0001 C CNN
F 3 "" H 5300 5550 50  0000 C CNN
	1    5300 5550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 598F57BE
P 4950 6100
F 0 "#PWR012" H 4950 5850 50  0001 C CNN
F 1 "GND" H 4950 5950 50  0000 C CNN
F 2 "" H 4950 6100 50  0000 C CNN
F 3 "" H 4950 6100 50  0000 C CNN
	1    4950 6100
	1    0    0    -1  
$EndComp
$Comp
L 2N7002 Q3
U 1 1 598F57C8
P 4550 5500
F 0 "Q3" H 4750 5550 50  0000 L CNN
F 1 "2n7002" H 4750 5450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4750 5600 50  0001 C CNN
F 3 "" H 4550 5500 50  0000 C CNN
	1    4550 5500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 598F57D0
P 4450 6100
F 0 "#PWR013" H 4450 5850 50  0001 C CNN
F 1 "GND" H 4450 5950 50  0000 C CNN
F 2 "" H 4450 6100 50  0000 C CNN
F 3 "" H 4450 6100 50  0000 C CNN
	1    4450 6100
	1    0    0    -1  
$EndComp
Text GLabel 2400 5100 0    60   Output ~ 0
RL3P
$Comp
L +5V #PWR014
U 1 1 598F57DB
P 4450 5100
F 0 "#PWR014" H 4450 4950 50  0001 C CNN
F 1 "+5V" H 4450 5240 50  0000 C CNN
F 2 "" H 4450 5100 50  0000 C CNN
F 3 "" H 4450 5100 50  0000 C CNN
	1    4450 5100
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 598F5948
P 5000 4300
F 0 "R13" V 5080 4300 50  0000 C CNN
F 1 "10k" V 5000 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4930 4300 50  0001 C CNN
F 3 "" H 5000 4300 50  0000 C CNN
	1    5000 4300
	1    0    0    -1  
$EndComp
$Comp
L Omron_G3MB-202 RL2
U 1 1 598F594E
P 3150 3950
F 0 "RL2" H 3150 4250 60  0000 C CNN
F 1 "Omron_G3MB-202" H 3150 3950 60  0000 C CNN
F 2 "My_Libraries:G3MB" H 3150 3950 60  0001 C CNN
F 3 "" H 3150 3950 60  0001 C CNN
	1    3150 3950
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 598F5956
P 5350 4000
F 0 "R16" V 5430 4000 50  0000 C CNN
F 1 "1k" V 5350 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5280 4000 50  0001 C CNN
F 3 "" H 5350 4000 50  0000 C CNN
	1    5350 4000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR015
U 1 1 598F595C
P 5000 4550
F 0 "#PWR015" H 5000 4300 50  0001 C CNN
F 1 "GND" H 5000 4400 50  0000 C CNN
F 2 "" H 5000 4550 50  0000 C CNN
F 3 "" H 5000 4550 50  0000 C CNN
	1    5000 4550
	1    0    0    -1  
$EndComp
$Comp
L 2N7002 Q2
U 1 1 598F5966
P 4600 3950
F 0 "Q2" H 4800 4000 50  0000 L CNN
F 1 "2n7002" H 4800 3900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4800 4050 50  0001 C CNN
F 3 "" H 4600 3950 50  0000 C CNN
	1    4600 3950
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 598F596E
P 4500 4550
F 0 "#PWR016" H 4500 4300 50  0001 C CNN
F 1 "GND" H 4500 4400 50  0000 C CNN
F 2 "" H 4500 4550 50  0000 C CNN
F 3 "" H 4500 4550 50  0000 C CNN
	1    4500 4550
	1    0    0    -1  
$EndComp
Text GLabel 2450 3550 0    60   Output ~ 0
RL2P
$Comp
L +5V #PWR017
U 1 1 598F5979
P 4500 3550
F 0 "#PWR017" H 4500 3400 50  0001 C CNN
F 1 "+5V" H 4500 3690 50  0000 C CNN
F 2 "" H 4500 3550 50  0000 C CNN
F 3 "" H 4500 3550 50  0000 C CNN
	1    4500 3550
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 598F5B96
P 4950 7300
F 0 "R12" V 5030 7300 50  0000 C CNN
F 1 "10k" V 4950 7300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4880 7300 50  0001 C CNN
F 3 "" H 4950 7300 50  0000 C CNN
	1    4950 7300
	1    0    0    -1  
$EndComp
$Comp
L Omron_G3MB-202 RL4
U 1 1 598F5B9C
P 3100 6950
F 0 "RL4" H 3100 7250 60  0000 C CNN
F 1 "Omron_G3MB-202" H 3100 6950 60  0000 C CNN
F 2 "My_Libraries:G3MB" H 3100 6950 60  0001 C CNN
F 3 "" H 3100 6950 60  0001 C CNN
	1    3100 6950
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 598F5BA4
P 5300 7000
F 0 "R15" V 5380 7000 50  0000 C CNN
F 1 "1k" V 5300 7000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5230 7000 50  0001 C CNN
F 3 "" H 5300 7000 50  0000 C CNN
	1    5300 7000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 598F5BAA
P 4950 7550
F 0 "#PWR018" H 4950 7300 50  0001 C CNN
F 1 "GND" H 4950 7400 50  0000 C CNN
F 2 "" H 4950 7550 50  0000 C CNN
F 3 "" H 4950 7550 50  0000 C CNN
	1    4950 7550
	1    0    0    -1  
$EndComp
$Comp
L 2N7002 Q4
U 1 1 598F5BB4
P 4550 6950
F 0 "Q4" H 4750 7000 50  0000 L CNN
F 1 "2n7002" H 4750 6900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4750 7050 50  0001 C CNN
F 3 "" H 4550 6950 50  0000 C CNN
	1    4550 6950
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 598F5BBC
P 4450 7550
F 0 "#PWR019" H 4450 7300 50  0001 C CNN
F 1 "GND" H 4450 7400 50  0000 C CNN
F 2 "" H 4450 7550 50  0000 C CNN
F 3 "" H 4450 7550 50  0000 C CNN
	1    4450 7550
	1    0    0    -1  
$EndComp
Text GLabel 2400 6550 0    60   Output ~ 0
RL4P
$Comp
L +5V #PWR020
U 1 1 598F5BC7
P 4450 6550
F 0 "#PWR020" H 4450 6400 50  0001 C CNN
F 1 "+5V" H 4450 6690 50  0000 C CNN
F 2 "" H 4450 6550 50  0000 C CNN
F 3 "" H 4450 6550 50  0000 C CNN
	1    4450 6550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR021
U 1 1 5992EA54
P 2100 4200
F 0 "#PWR021" H 2100 4050 50  0001 C CNN
F 1 "+3.3V" H 2100 4340 50  0000 C CNN
F 2 "" H 2100 4200 50  0000 C CNN
F 3 "" H 2100 4200 50  0000 C CNN
	1    2100 4200
	-1   0    0    -1  
$EndComp
Text Label 10650 1550 0    60   ~ 0
TXD
Text Label 10650 1650 0    60   ~ 0
RXD
Text Label 10650 1950 0    60   ~ 0
PROG
Text Label 10650 2050 0    60   ~ 0
DBG
Text Label 10650 1850 0    60   ~ 0
SCL
Text Label 10650 1750 0    60   ~ 0
SDA
Text Label 1750 4300 0    60   ~ 0
TXD
Text Label 1750 4400 0    60   ~ 0
RXD
Text Label 1250 4400 2    60   ~ 0
SDA
Text Label 1250 4300 2    60   ~ 0
SCL
Text Label 1750 4500 0    60   ~ 0
PROG
Text Label 1250 4200 2    60   ~ 0
DBG
Text Label 1250 4500 2    60   ~ 0
ADC
Text Label 7400 1650 2    60   ~ 0
ADC
Text Label 9550 2150 0    60   ~ 0
RL1
Text Label 5700 2500 0    60   ~ 0
RL1
Text Label 5700 4000 0    60   ~ 0
RL2
Text Label 5650 5550 0    60   ~ 0
RL3
Text Label 5650 7000 0    60   ~ 0
RL4
Text Label 7400 1950 2    60   ~ 0
RL2
Text Label 7400 2050 2    60   ~ 0
RL4
Text Label 7400 2150 2    60   ~ 0
RL3
$Comp
L GND #PWR022
U 1 1 59CE760A
P 9250 1250
F 0 "#PWR022" H 9250 1000 50  0001 C CNN
F 1 "GND" H 9250 1100 50  0000 C CNN
F 2 "" H 9250 1250 50  0000 C CNN
F 3 "" H 9250 1250 50  0000 C CNN
	1    9250 1250
	1    0    0    -1  
$EndComp
Text Label 1200 2600 0    60   ~ 0
L
Text Label 1200 2700 0    60   ~ 0
N
Text Label 1350 1700 2    60   ~ 0
L
Text Label 2450 2250 2    60   ~ 0
L
Text Label 2450 3750 2    60   ~ 0
L
Text Label 2400 5300 2    60   ~ 0
L
Text Label 2400 6750 2    60   ~ 0
L
Text Label 1350 1200 2    60   ~ 0
N
Text Notes 7000 7100 0    60   ~ 0
Note: Omron G3MB-202 (2A SSR) can be replaced by Panasonic APAN3105 (5A\nrelays, but need to change footprint!)
$Comp
L CONN_01X10 P4
U 1 1 5A283A2B
P 6950 4900
F 0 "P4" H 6950 5450 50  0000 C CNN
F 1 "CONN_2x5" V 7050 4900 50  0001 C CNN
F 2 "Connectors_Multicomp:Multicomp_MC9A12-1034_2x05x2.54mm_Straight" V 6950 4900 50  0001 C CNN
F 3 "" H 6950 4900 50  0000 C CNN
	1    6950 4900
	-1   0    0    -1  
$EndComp
Text Label 7150 4650 0    60   ~ 0
P_TXD
Text Label 7150 4850 0    60   ~ 0
P_RXD
Text Label 7150 5050 0    60   ~ 0
P_PROG
$Comp
L CONN_01X06 P5
U 1 1 5A2851DA
P 10450 4800
F 0 "P5" H 10450 5150 50  0000 C CNN
F 1 "CONN_01X06" V 10550 4800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 10450 4800 50  0001 C CNN
F 3 "" H 10450 4800 50  0000 C CNN
	1    10450 4800
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP1
U 1 1 5A29449B
P 6750 1850
F 0 "JP1" H 6750 2000 50  0000 C CNN
F 1 "JUMPER" H 6750 1770 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6750 2100 50  0001 C CNN
F 3 "" H 6750 1850 50  0000 C CNN
	1    6750 1850
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5A2950B6
P 4850 3550
F 0 "R9" V 4930 3550 50  0000 C CNN
F 1 "1k" V 4850 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4780 3550 50  0001 C CNN
F 3 "" H 4850 3550 50  0000 C CNN
	1    4850 3550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P7
U 1 1 5A2950E6
P 5200 3600
F 0 "P7" H 5200 3750 50  0000 C CNN
F 1 "CONN_01X02" V 5300 3600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5200 3600 50  0001 C CNN
F 3 "" H 5200 3600 50  0000 C CNN
	1    5200 3600
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A29574C
P 4800 5100
F 0 "R7" V 4880 5100 50  0000 C CNN
F 1 "1k" V 4800 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4730 5100 50  0001 C CNN
F 3 "" H 4800 5100 50  0000 C CNN
	1    4800 5100
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P8
U 1 1 5A295752
P 5150 5150
F 0 "P8" H 5150 5300 50  0000 C CNN
F 1 "CONN_01X02" V 5250 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5150 5150 50  0001 C CNN
F 3 "" H 5150 5150 50  0000 C CNN
	1    5150 5150
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5A295809
P 4850 6550
F 0 "R10" V 4930 6550 50  0000 C CNN
F 1 "1k" V 4850 6550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4780 6550 50  0001 C CNN
F 3 "" H 4850 6550 50  0000 C CNN
	1    4850 6550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P9
U 1 1 5A29580F
P 5200 6600
F 0 "P9" H 5200 6750 50  0000 C CNN
F 1 "CONN_01X02" V 5300 6600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5200 6600 50  0001 C CNN
F 3 "" H 5200 6600 50  0000 C CNN
	1    5200 6600
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A2958CE
P 4850 2050
F 0 "R8" V 4930 2050 50  0000 C CNN
F 1 "1k" V 4850 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4780 2050 50  0001 C CNN
F 3 "" H 4850 2050 50  0000 C CNN
	1    4850 2050
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P6
U 1 1 5A2958D4
P 5200 2100
F 0 "P6" H 5200 2250 50  0000 C CNN
F 1 "CONN_01X02" V 5300 2100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5200 2100 50  0001 C CNN
F 3 "" H 5200 2100 50  0000 C CNN
	1    5200 2100
	1    0    0    -1  
$EndComp
Text Notes 10600 7650 0    60   ~ 0
1.1
Text Notes 7400 7500 0    60   ~ 0
DomoNode
Text Notes 10000 3550 0    60   ~ 0
Programmer sub-board
Text Label 10250 4950 2    60   ~ 0
P_CTS
Text Label 10250 4750 2    60   ~ 0
P_RXD
Text Label 10250 4650 2    60   ~ 0
P_TXD
Text Label 10250 4550 2    60   ~ 0
P_DTR
$Comp
L Jumper JP3
U 1 1 5A29B706
P 7950 5050
F 0 "JP3" H 7950 5200 50  0000 C CNN
F 1 "Jumper" H 7950 4970 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7950 5050 50  0001 C CNN
F 3 "" H 7950 5050 50  0000 C CNN
	1    7950 5050
	1    0    0    -1  
$EndComp
Text Notes 10650 4550 0    60   ~ 0
DTR
Text Notes 10650 4650 0    60   ~ 0
RX
Text Notes 10650 4750 0    60   ~ 0
TX
Text Notes 10650 4850 0    60   ~ 0
+5V
Text Notes 10650 4950 0    60   ~ 0
CTS
Text Notes 10650 5050 0    60   ~ 0
GND
$Comp
L AP111733 U4
U 1 1 5A2BEBB3
P 9350 4450
F 0 "U4" H 9350 4800 60  0000 C CNN
F 1 "AMS1117-3.3" H 9350 4700 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 9350 4350 60  0001 C CNN
F 3 "" H 9350 4350 60  0000 C CNN
	1    9350 4450
	-1   0    0    -1  
$EndComp
$Comp
L Jumper JP2
U 1 1 5A2BF52F
P 7950 4450
F 0 "JP2" H 7950 4600 50  0000 C CNN
F 1 "Jumper" H 7950 4370 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7950 4450 50  0001 C CNN
F 3 "" H 7950 4450 50  0000 C CNN
	1    7950 4450
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5A2BFB31
P 7950 5350
F 0 "R17" V 8030 5350 50  0000 C CNN
F 1 "1k" V 7950 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7880 5350 50  0001 C CNN
F 3 "" H 7950 5350 50  0000 C CNN
	1    7950 5350
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 5A2BFD07
P 8500 5350
F 0 "D1" H 8500 5450 50  0000 C CNN
F 1 "LED" H 8500 5250 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 8500 5350 50  0001 C CNN
F 3 "" H 8500 5350 50  0000 C CNN
	1    8500 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 1200 2450 1250
Wire Wire Line
	2450 1250 2600 1250
Connection ~ 2300 1200
Wire Wire Line
	2600 1650 2450 1650
Wire Wire Line
	2450 1650 2450 1700
Connection ~ 2300 1700
Wire Wire Line
	3600 1650 4250 1650
Wire Wire Line
	4250 1650 4950 1650
Connection ~ 4250 1650
Connection ~ 4250 1250
Wire Wire Line
	4250 1250 4250 1300
Wire Wire Line
	4250 1600 4250 1650
Connection ~ 9600 950 
Wire Wire Line
	9200 1950 10350 1950
Wire Wire Line
	10350 1950 10650 1950
Wire Wire Line
	10350 1400 10350 1950
Wire Wire Line
	10350 950  10350 1100
Wire Wire Line
	8300 2850 8300 2750
Wire Wire Line
	6750 1550 7400 1550
Wire Wire Line
	7400 1750 7200 1750
Wire Wire Line
	7200 1750 7200 1400
Connection ~ 8300 950 
Wire Wire Line
	6750 1400 6750 1550
Connection ~ 6750 1550
Wire Wire Line
	9200 2150 9550 2150
Wire Wire Line
	10100 950  10100 1100
Connection ~ 10100 950 
Wire Wire Line
	10100 1400 10100 2050
Wire Wire Line
	9200 2050 10100 2050
Wire Wire Line
	10100 2050 10650 2050
Wire Wire Line
	6750 950  7200 950 
Wire Wire Line
	7200 950  8300 950 
Wire Wire Line
	8300 950  9250 950 
Wire Wire Line
	9250 950  9600 950 
Wire Wire Line
	9600 950  10100 950 
Wire Wire Line
	10100 950  10350 950 
Wire Wire Line
	6750 950  6750 1100
Wire Wire Line
	9200 1650 10650 1650
Wire Wire Line
	9200 1750 10650 1750
Wire Wire Line
	9200 1850 10650 1850
Connection ~ 10350 1950
Connection ~ 10100 2050
Wire Wire Line
	1900 4600 1750 4600
Wire Wire Line
	9200 1550 10650 1550
Wire Wire Line
	3500 2050 4500 2050
Wire Wire Line
	4500 2050 4700 2050
Wire Wire Line
	5000 2950 5000 3050
Wire Wire Line
	5000 2650 5000 2500
Wire Wire Line
	4800 2500 5000 2500
Wire Wire Line
	5000 2500 5200 2500
Wire Wire Line
	5500 2500 5700 2500
Connection ~ 5000 2500
Wire Wire Line
	3500 3750 4500 3750
Wire Wire Line
	4500 3750 5000 3750
Wire Wire Line
	4500 2650 4500 3050
Wire Wire Line
	1500 3300 1200 3300
Wire Wire Line
	1200 3200 1850 3200
Wire Wire Line
	1200 3100 1500 3100
Wire Wire Line
	2750 2050 2450 2050
Wire Wire Line
	2750 2250 2450 2250
Wire Wire Line
	3450 5100 4450 5100
Wire Wire Line
	4450 5100 4650 5100
Wire Wire Line
	4950 6000 4950 6100
Wire Wire Line
	4950 5700 4950 5550
Wire Wire Line
	4750 5550 4950 5550
Wire Wire Line
	4950 5550 5150 5550
Wire Wire Line
	5450 5550 5650 5550
Connection ~ 4950 5550
Wire Wire Line
	3450 5300 4450 5300
Wire Wire Line
	4450 5300 4950 5300
Wire Wire Line
	4450 5700 4450 6100
Wire Wire Line
	2700 5100 2400 5100
Wire Wire Line
	2700 5300 2400 5300
Wire Wire Line
	3500 3550 4500 3550
Wire Wire Line
	4500 3550 4700 3550
Wire Wire Line
	5000 4450 5000 4550
Wire Wire Line
	5000 4150 5000 4000
Wire Wire Line
	4800 4000 5000 4000
Wire Wire Line
	5000 4000 5200 4000
Wire Wire Line
	5500 4000 5700 4000
Connection ~ 5000 4000
Wire Wire Line
	4500 4150 4500 4550
Wire Wire Line
	2750 3550 2450 3550
Wire Wire Line
	2750 3750 2450 3750
Wire Wire Line
	3450 6550 4450 6550
Wire Wire Line
	4450 6550 4700 6550
Wire Wire Line
	4950 7450 4950 7550
Wire Wire Line
	4950 7150 4950 7000
Wire Wire Line
	4750 7000 4950 7000
Wire Wire Line
	4950 7000 5150 7000
Wire Wire Line
	5450 7000 5650 7000
Connection ~ 4950 7000
Wire Wire Line
	3450 6750 4450 6750
Wire Wire Line
	4450 6750 5000 6750
Wire Wire Line
	4450 7150 4450 7550
Wire Wire Line
	2700 6550 2400 6550
Wire Wire Line
	2700 6750 2400 6750
Wire Wire Line
	2100 4200 1750 4200
Wire Wire Line
	1250 4600 950  4600
Wire Wire Line
	4950 1650 4950 1550
Wire Wire Line
	3600 1250 4250 1250
Wire Wire Line
	4250 1250 4650 1250
Wire Wire Line
	2300 1200 2300 1300
Wire Wire Line
	2300 1600 2300 1700
Wire Wire Line
	5250 1250 5500 1250
Connection ~ 9250 950 
Wire Wire Line
	1200 2800 1500 2800
Wire Wire Line
	1350 1700 1600 1700
Wire Wire Line
	2450 1700 2300 1700
Wire Wire Line
	2300 1700 2100 1700
Wire Wire Line
	1350 1200 2300 1200
Wire Wire Line
	2300 1200 2450 1200
Wire Wire Line
	7200 1100 7200 950 
Connection ~ 7200 950 
Wire Wire Line
	6950 1850 7400 1850
Wire Wire Line
	6950 1850 6950 2150
Wire Wire Line
	6950 2150 6750 2150
Connection ~ 4500 2050
Wire Wire Line
	5000 3750 5000 3650
Connection ~ 4500 2250
Wire Wire Line
	4950 5300 4950 5200
Wire Wire Line
	5000 6750 5000 6650
Connection ~ 4450 6750
Connection ~ 4450 5300
Connection ~ 4500 3750
Wire Wire Line
	3500 2250 4500 2250
Wire Wire Line
	4500 2250 5000 2250
Wire Wire Line
	5000 2250 5000 2150
Connection ~ 4500 3550
Connection ~ 4450 5100
Connection ~ 4450 6550
Wire Notes Line
	6350 3550 11050 3550
Wire Notes Line
	11050 3550 11050 6350
Wire Notes Line
	11050 6350 6350 6350
Wire Notes Line
	6350 6350 6350 3550
Wire Wire Line
	7150 5050 7650 5050
Wire Wire Line
	8250 5250 7150 5250
Connection ~ 8250 5050
Wire Wire Line
	9650 4450 9850 4450
Wire Wire Line
	9850 4850 10250 4850
Wire Wire Line
	8250 5050 8250 5250
Wire Wire Line
	8250 5050 8850 5050
Wire Wire Line
	8850 5050 9350 5050
Wire Wire Line
	9350 5050 10250 5050
Wire Wire Line
	9350 5050 9350 4750
Wire Wire Line
	7150 4450 7650 4450
Wire Wire Line
	7150 5350 7800 5350
Wire Wire Line
	8100 5350 8350 5350
Wire Wire Line
	8650 5350 8850 5350
Wire Wire Line
	8850 5350 8850 5050
Connection ~ 8850 5050
Wire Wire Line
	9050 4450 8250 4450
Wire Wire Line
	9850 4450 9850 4850
Connection ~ 9350 5050
Text Notes 6450 6100 0    60   ~ 0
Note: RX pin is pulled high (to 5V) FTDI-side, but that's no problem since ESP8266 GPIOs are \n5V-tollerant (just VCC isn't!)
$EndSCHEMATC
