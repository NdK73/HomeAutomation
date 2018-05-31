EESchema Schematic File Version 2
LIBS:DomoSwitch-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:regul
LIBS:interface
LIBS:philips
LIBS:display
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:relays2
LIBS:ws2812b
LIBS:ssr
LIBS:acdc
LIBS:ESP8266
LIBS:DomoSwitch-cache
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
L ESP-12 U1
U 1 1 5A32BD30
P 8400 2100
F 0 "U1" H 8400 2000 50  0000 C CNN
F 1 "ESP-12" H 8400 2200 50  0000 C CNN
F 2 "ESP8266:ESP-12-SMD" H 8400 2100 50  0001 C CNN
F 3 "" H 8400 2100 50  0001 C CNN
	1    8400 2100
	1    0    0    -1  
$EndComp
$Comp
L AC/DC U2
U 1 1 5A32BDC1
P 2950 1100
F 0 "U2" H 2950 1400 60  0000 C CNN
F 1 "AC/DC" H 2950 1100 60  0000 C CNN
F 2 "AAA_Mie_lib_verificate:HLK-PM01" H 2950 1100 60  0001 C CNN
F 3 "" H 2950 1100 60  0000 C CNN
	1    2950 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5A32BE92
P 750 950
F 0 "P1" H 750 1100 50  0000 C CNN
F 1 "CONN_01X02" V 850 950 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 750 950 50  0001 C CNN
F 3 "" H 750 950 50  0000 C CNN
	1    750  950 
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 5A32BF1F
P 1000 4950
F 0 "P2" H 1000 5100 50  0000 C CNN
F 1 "CONN_01X02" V 1100 4950 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1000 4950 50  0001 C CNN
F 3 "" H 1000 4950 50  0000 C CNN
	1    1000 4950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 5A32BF68
P 1050 6650
F 0 "P3" H 1050 6800 50  0000 C CNN
F 1 "CONN_01X02" V 1150 6650 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1050 6650 50  0001 C CNN
F 3 "" H 1050 6650 50  0000 C CNN
	1    1050 6650
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5AB8EEAB
P 7300 1400
F 0 "R1" V 7380 1400 50  0000 C CNN
F 1 "10k" V 7300 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7230 1400 50  0001 C CNN
F 3 "" H 7300 1400 50  0000 C CNN
	1    7300 1400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AB8EEE0
P 9450 1400
F 0 "R3" V 9530 1400 50  0000 C CNN
F 1 "10k" V 9450 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9380 1400 50  0001 C CNN
F 3 "" H 9450 1400 50  0000 C CNN
	1    9450 1400
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5AB8EF81
P 9650 1400
F 0 "R4" V 9730 1400 50  0000 C CNN
F 1 "10k" V 9650 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9580 1400 50  0001 C CNN
F 3 "" H 9650 1400 50  0000 C CNN
	1    9650 1400
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5AB8EFBD
P 5550 6350
F 0 "R10" V 5630 6350 50  0000 C CNN
F 1 "10k" V 5550 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5480 6350 50  0001 C CNN
F 3 "" H 5550 6350 50  0000 C CNN
	1    5550 6350
	1    0    0    -1  
$EndComp
$Comp
L APAN3105 RL1
U 1 1 5AB8F2A7
P 2100 4950
F 0 "RL1" H 2550 5100 50  0000 L CNN
F 1 "APAN3105" H 2550 5000 50  0000 L CNN
F 2 "AAA_Mie_lib_verificate:APAN31xx" H 2100 4950 50  0001 C CNN
F 3 "" H 2100 4950 50  0000 C CNN
	1    2100 4950
	-1   0    0    1   
$EndComp
$Comp
L APAN3105 RL2
U 1 1 5AB8F320
P 2100 6650
F 0 "RL2" H 2550 6800 50  0000 L CNN
F 1 "APAN3105" H 2550 6700 50  0000 L CNN
F 2 "AAA_Mie_lib_verificate:APAN31xx" H 2100 6650 50  0001 C CNN
F 3 "" H 2100 6650 50  0000 C CNN
	1    2100 6650
	-1   0    0    1   
$EndComp
$Comp
L AP1117D33 U3
U 1 1 5AB8F4E5
P 5950 1200
F 0 "U3" H 6050 950 50  0000 C CNN
F 1 "AP1117D33" H 5950 1450 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3Lead_TabPin2" H 5950 1200 50  0001 C CNN
F 3 "" H 5950 1200 50  0000 C CNN
	1    5950 1200
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5AB8F684
P 9150 1350
F 0 "C2" H 9175 1450 50  0000 L CNN
F 1 "C" H 9175 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9188 1200 50  0001 C CNN
F 3 "" H 9150 1350 50  0000 C CNN
	1    9150 1350
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AB8F6BB
P 7650 1350
F 0 "C1" H 7675 1450 50  0000 L CNN
F 1 "C" H 7675 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7688 1200 50  0001 C CNN
F 3 "" H 7650 1350 50  0000 C CNN
	1    7650 1350
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AB8F83A
P 7100 1400
F 0 "R2" V 7180 1400 50  0000 C CNN
F 1 "10k" V 7100 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7030 1400 50  0001 C CNN
F 3 "" H 7100 1400 50  0000 C CNN
	1    7100 1400
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR01
U 1 1 5AB8FAD1
P 5950 1600
F 0 "#PWR01" H 5950 1350 50  0001 C CNN
F 1 "GNDD" H 5950 1450 50  0000 C CNN
F 2 "" H 5950 1600 50  0000 C CNN
F 3 "" H 5950 1600 50  0000 C CNN
	1    5950 1600
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR02
U 1 1 5AB8FB16
P 8400 3000
F 0 "#PWR02" H 8400 2750 50  0001 C CNN
F 1 "GNDD" H 8400 2850 50  0000 C CNN
F 2 "" H 8400 3000 50  0000 C CNN
F 3 "" H 8400 3000 50  0000 C CNN
	1    8400 3000
	1    0    0    -1  
$EndComp
Text Label 7500 1800 2    60   ~ 0
RST
Text Label 9300 2200 0    60   ~ 0
IO0
Text Label 9300 1800 0    60   ~ 0
TX
Text Label 9300 1900 0    60   ~ 0
RX
Text Label 9300 2300 0    60   ~ 0
IO2
$Comp
L D D1
U 1 1 5ABA0EF2
P 2750 4950
F 0 "D1" H 2750 5050 50  0000 C CNN
F 1 "1n4148" H 2750 4850 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Vertical_KathodeUp" H 2750 4950 50  0001 C CNN
F 3 "" H 2750 4950 50  0000 C CNN
	1    2750 4950
	0    1    1    0   
$EndComp
$Comp
L D D2
U 1 1 5ABA0F41
P 2750 6650
F 0 "D2" H 2750 6750 50  0000 C CNN
F 1 "1n4148" H 2750 6550 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Vertical_KathodeUp" H 2750 6650 50  0001 C CNN
F 3 "" H 2750 6650 50  0000 C CNN
	1    2750 6650
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 P4
U 1 1 5ABA10A1
P 4050 5250
F 0 "P4" H 4050 5500 50  0000 C CNN
F 1 "CONN_01X03" V 4150 5250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 4050 5250 50  0001 C CNN
F 3 "" H 4050 5250 50  0000 C CNN
	1    4050 5250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P5
U 1 1 5ABA1144
P 4700 5250
F 0 "P5" H 4700 5500 50  0000 C CNN
F 1 "CONN_01X03" V 4800 5250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 4700 5250 50  0001 C CNN
F 3 "" H 4700 5250 50  0000 C CNN
	1    4700 5250
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5ABA11EA
P 4900 5150
F 0 "#PWR03" H 4900 5000 50  0001 C CNN
F 1 "+5V" H 4900 5290 50  0000 C CNN
F 2 "" H 4900 5150 50  0000 C CNN
F 3 "" H 4900 5150 50  0000 C CNN
	1    4900 5150
	1    0    0    -1  
$EndComp
Text Label 10000 1850 2    60   ~ 0
TX
Text Label 10000 1950 2    60   ~ 0
RX
$Comp
L GNDD #PWR04
U 1 1 5ABA153B
P 10000 2250
F 0 "#PWR04" H 10000 2000 50  0001 C CNN
F 1 "GNDD" H 10000 2100 50  0000 C CNN
F 2 "" H 10000 2250 50  0000 C CNN
F 3 "" H 10000 2250 50  0000 C CNN
	1    10000 2250
	1    0    0    -1  
$EndComp
Text Label 10000 2050 2    60   ~ 0
IO0
Text Label 9300 2400 0    60   ~ 0
IO15
Text Label 6500 5550 0    60   ~ 0
IO15
Text Label 7500 2200 2    60   ~ 0
IO14
Text Label 7500 2300 2    60   ~ 0
IO12
Text Label 7500 2400 2    60   ~ 0
IO13
$Comp
L CONN_01X06 P8
U 1 1 5ABA18A3
P 10200 2000
F 0 "P8" H 10200 2350 50  0000 C CNN
F 1 "CONN_01X06" V 10300 2000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06" H 10200 2000 50  0001 C CNN
F 3 "" H 10200 2000 50  0000 C CNN
	1    10200 2000
	1    0    0    -1  
$EndComp
Text Label 10000 2150 2    60   ~ 0
RST
$Comp
L 2N7002-RESCUE-DomoSwitch Q2
U 1 1 5ABA1B41
P 5200 6150
F 0 "Q2" H 5400 6225 50  0000 L CNN
F 1 "2N7002" H 5400 6150 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5400 6075 50  0001 L CIN
F 3 "" H 5200 6150 50  0000 L CNN
	1    5200 6150
	-1   0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5ABA1BB5
P 5850 6200
F 0 "R9" V 5930 6200 50  0000 C CNN
F 1 "1k" V 5850 6200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5780 6200 50  0001 C CNN
F 3 "" H 5850 6200 50  0000 C CNN
	1    5850 6200
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5ABA1DAB
P 6050 5700
F 0 "R8" V 6130 5700 50  0000 C CNN
F 1 "10k" V 6050 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5980 5700 50  0001 C CNN
F 3 "" H 6050 5700 50  0000 C CNN
	1    6050 5700
	1    0    0    -1  
$EndComp
$Comp
L 2N7002-RESCUE-DomoSwitch Q1
U 1 1 5ABA1DB1
P 5700 5500
F 0 "Q1" H 5900 5575 50  0000 L CNN
F 1 "2N7002" H 5900 5500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5900 5425 50  0001 L CIN
F 3 "" H 5700 5500 50  0000 L CNN
	1    5700 5500
	-1   0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5ABA1DB7
P 6350 5550
F 0 "R7" V 6430 5550 50  0000 C CNN
F 1 "1k" V 6350 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6280 5550 50  0001 C CNN
F 3 "" H 6350 5550 50  0000 C CNN
	1    6350 5550
	0    1    1    0   
$EndComp
Text Label 6000 6200 0    60   ~ 0
IO14
$Comp
L GNDD #PWR05
U 1 1 5ABA1F7F
P 5750 5850
F 0 "#PWR05" H 5750 5600 50  0001 C CNN
F 1 "GNDD" H 5750 5700 50  0000 C CNN
F 2 "" H 5750 5850 50  0000 C CNN
F 3 "" H 5750 5850 50  0000 C CNN
	1    5750 5850
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR06
U 1 1 5ABA1FD5
P 5250 6500
F 0 "#PWR06" H 5250 6250 50  0001 C CNN
F 1 "GNDD" H 5250 6350 50  0000 C CNN
F 2 "" H 5250 6500 50  0000 C CNN
F 3 "" H 5250 6500 50  0000 C CNN
	1    5250 6500
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED2
U 1 1 5ABA2D40
P 5750 3250
F 0 "LED2" H 5550 2850 60  0000 C CNN
F 1 "WS2812B" H 6000 3600 60  0000 C CNN
F 2 "AAA_Mie_lib_verificate:ws2812b" V 5700 3250 60  0001 C CNN
F 3 "" V 5700 3250 60  0000 C CNN
	1    5750 3250
	1    0    0    -1  
$EndComp
Text Label 3750 3250 2    60   ~ 0
IO2
Text Label 3150 3050 1    60   ~ 0
IO12
Text Label 2450 3050 1    60   ~ 0
IO13
$Comp
L R R5
U 1 1 5ABA511D
P 6900 1400
F 0 "R5" V 6980 1400 50  0000 C CNN
F 1 "10k" V 6900 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6830 1400 50  0001 C CNN
F 3 "" H 6900 1400 50  0000 C CNN
	1    6900 1400
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5ABA5194
P 6700 1400
F 0 "R6" V 6780 1400 50  0000 C CNN
F 1 "10k" V 6700 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6630 1400 50  0001 C CNN
F 3 "" H 6700 1400 50  0000 C CNN
	1    6700 1400
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5ABA5F95
P 3150 3450
F 0 "SW1" H 3150 3600 50  0000 C CNN
F 1 "SW_PUSH" H 3150 3370 50  0001 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_FSMSM" H 3150 3450 50  0001 C CNN
F 3 "" H 3150 3450 50  0000 C CNN
	1    3150 3450
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5ABA603F
P 2450 3450
F 0 "SW2" H 2450 3600 50  0000 C CNN
F 1 "SW_PUSH" H 2450 3370 50  0001 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_FSMSM" H 2450 3450 50  0001 C CNN
F 3 "" H 2450 3450 50  0000 C CNN
	1    2450 3450
	0    1    1    0   
$EndComp
NoConn ~ 7500 1900
NoConn ~ 7500 2100
NoConn ~ 9300 2000
NoConn ~ 9300 2100
$Comp
L GNDD #PWR07
U 1 1 5ABA865B
P 9150 1500
F 0 "#PWR07" H 9150 1250 50  0001 C CNN
F 1 "GNDD" H 9150 1350 50  0000 C CNN
F 2 "" H 9150 1500 50  0000 C CNN
F 3 "" H 9150 1500 50  0000 C CNN
	1    9150 1500
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR08
U 1 1 5ABA86D2
P 7650 1500
F 0 "#PWR08" H 7650 1250 50  0001 C CNN
F 1 "GNDD" H 7650 1350 50  0000 C CNN
F 2 "" H 7650 1500 50  0000 C CNN
F 3 "" H 7650 1500 50  0000 C CNN
	1    7650 1500
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5AC33A7A
P 4800 3000
F 0 "C3" H 4825 3100 50  0000 L CNN
F 1 "104" H 4825 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4838 2850 50  0001 C CNN
F 3 "" H 4800 3000 50  0000 C CNN
	1    4800 3000
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5AC33CB1
P 5150 3000
F 0 "C4" H 5175 3100 50  0000 L CNN
F 1 "104" H 5175 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5188 2850 50  0001 C CNN
F 3 "" H 5150 3000 50  0000 C CNN
	1    5150 3000
	1    0    0    -1  
$EndComp
NoConn ~ 6250 3250
$Comp
L CONN_01X03 P6
U 1 1 5ADB8584
P 4800 1300
F 0 "P6" H 4800 1550 50  0000 C CNN
F 1 "CONN_01X03" V 4900 1300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 4800 1300 50  0001 C CNN
F 3 "" H 4800 1300 50  0000 C CNN
	1    4800 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9300 2200 9450 2200
Wire Wire Line
	9450 2200 9450 1550
Wire Wire Line
	9300 2300 9650 2300
Wire Wire Line
	9650 2300 9650 1550
Wire Wire Line
	6250 1200 10000 1200
Wire Wire Line
	9450 1200 9450 1250
Wire Wire Line
	9650 1200 9650 1250
Connection ~ 9450 1200
Wire Wire Line
	7300 1200 7300 1250
Connection ~ 8400 1200
Wire Wire Line
	7300 1550 7300 1800
Wire Wire Line
	7300 1800 7500 1800
Wire Wire Line
	1200 4900 1400 4900
Wire Wire Line
	1400 4900 1400 4650
Wire Wire Line
	1400 4650 1900 4650
Wire Wire Line
	1800 5250 1400 5250
Wire Wire Line
	1400 5250 1400 5000
Wire Wire Line
	1400 5000 1200 5000
Wire Wire Line
	1250 6600 1400 6600
Wire Wire Line
	1400 6600 1400 6350
Wire Wire Line
	1400 6350 1900 6350
Wire Wire Line
	1800 6950 1400 6950
Wire Wire Line
	1400 6950 1400 6700
Wire Wire Line
	1400 6700 1250 6700
Wire Wire Line
	5950 1600 5950 1500
Connection ~ 9150 1200
Connection ~ 7650 1200
Wire Wire Line
	7100 1250 7100 1200
Connection ~ 7300 1200
Wire Wire Line
	7100 1550 7100 2000
Wire Wire Line
	7100 2000 7500 2000
Connection ~ 7100 1200
Wire Wire Line
	2300 4650 3850 4650
Wire Wire Line
	2750 4650 2750 4800
Wire Wire Line
	2300 5250 3850 5250
Wire Wire Line
	2750 5100 2750 5800
Wire Wire Line
	3050 6350 2300 6350
Wire Wire Line
	2750 6350 2750 6500
Wire Wire Line
	2300 6950 3450 6950
Wire Wire Line
	2750 6800 2750 7450
Connection ~ 2750 5250
Connection ~ 2750 6950
Wire Wire Line
	10000 1200 10000 1750
Connection ~ 9650 1200
Wire Wire Line
	5100 6350 5100 6500
Wire Wire Line
	5100 6500 5550 6500
Wire Wire Line
	5400 6200 5700 6200
Connection ~ 5550 6200
Wire Wire Line
	5600 5700 5600 5850
Wire Wire Line
	5600 5850 6050 5850
Wire Wire Line
	5900 5550 6200 5550
Connection ~ 6050 5550
Connection ~ 5250 6500
Connection ~ 5750 5850
Connection ~ 4250 3750
Wire Wire Line
	6700 1200 6700 1250
Connection ~ 6700 1200
Wire Wire Line
	6900 1200 6900 1250
Connection ~ 6900 1200
Wire Wire Line
	6900 1550 6900 2300
Wire Wire Line
	6900 2300 7500 2300
Wire Wire Line
	7500 2400 6700 2400
Wire Wire Line
	6700 2400 6700 1550
Connection ~ 3150 3750
Wire Notes Line
	750  4550 750  7700
Wire Notes Line
	750  7700 4300 7700
Wire Notes Line
	4300 7700 4300 4550
Wire Notes Line
	4300 4550 750  4550
Connection ~ 2750 4650
Wire Wire Line
	3050 4650 3050 7250
Connection ~ 2750 6350
Connection ~ 3050 4650
Wire Wire Line
	4750 3250 5250 3250
Wire Wire Line
	5150 2750 5150 2850
Connection ~ 5150 2750
Wire Wire Line
	4800 2750 4800 2850
Connection ~ 4800 2750
Wire Wire Line
	4800 3750 4800 3150
Connection ~ 4800 3750
Wire Wire Line
	5150 3750 5150 3150
Connection ~ 5150 3750
Wire Wire Line
	3150 3050 3150 3150
Wire Wire Line
	4900 5350 5100 5350
Wire Wire Line
	5100 5350 5100 5950
Wire Wire Line
	4900 5250 5600 5250
Wire Wire Line
	5600 5250 5600 5300
Wire Wire Line
	3850 5350 3450 5350
Wire Wire Line
	3450 5350 3450 6950
$Comp
L Omron_G3MB-202 RL1B1
U 1 1 5AE7194D
P 2050 6000
F 0 "RL1B1" H 2050 6300 60  0000 C CNN
F 1 "Omron_G3MB-202" H 2050 6000 60  0000 C CNN
F 2 "AAA mie lib verificate:G3MB" H 2050 6000 60  0001 C CNN
F 3 "" H 2050 6000 60  0001 C CNN
	1    2050 6000
	1    0    0    -1  
$EndComp
$Comp
L Omron_G3MB-202 RL2B1
U 1 1 5AE71AF0
P 2050 7650
F 0 "RL2B1" H 2050 7950 60  0000 C CNN
F 1 "Omron_G3MB-202" H 2050 7650 60  0000 C CNN
F 2 "AAA mie lib verificate:G3MB" H 2050 7650 60  0001 C CNN
F 3 "" H 2050 7650 60  0001 C CNN
	1    2050 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5600 3050 5600
Connection ~ 3050 5600
Wire Wire Line
	3050 7250 2400 7250
Connection ~ 3050 6350
Wire Wire Line
	2750 7450 2400 7450
Wire Wire Line
	2750 5800 2400 5800
Wire Wire Line
	1300 4900 1300 5600
Wire Wire Line
	1300 5600 1650 5600
Connection ~ 1300 4900
Wire Wire Line
	1200 5000 1200 5800
Wire Wire Line
	1200 5800 1650 5800
Wire Wire Line
	1300 6600 1300 7250
Wire Wire Line
	1300 7250 1650 7250
Connection ~ 1300 6600
Wire Wire Line
	1250 6700 1250 7450
Wire Wire Line
	1250 7450 1650 7450
Wire Wire Line
	3850 4650 3850 5150
$Comp
L Fuse F1
U 1 1 5AE8392B
P 1250 900
F 0 "F1" V 1330 900 50  0000 C CNN
F 1 "250V/1A" V 1175 900 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" V 1180 900 50  0001 C CNN
F 3 "" H 1250 900 50  0000 C CNN
	1    1250 900 
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 5AE83B72
P 1600 1100
F 0 "C5" H 1625 1200 50  0000 L CNN
F 1 ".1uF/275V" H 1625 1000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L13.0mm_W6.0mm_P10.00mm_FKS3_FKP3_MKS4" H 1638 950 50  0001 C CNN
F 3 "" H 1600 1100 50  0000 C CNN
	1    1600 1100
	1    0    0    -1  
$EndComp
$Comp
L L_Core_Iron L1
U 1 1 5AE83BDF
P 1950 900
F 0 "L1" V 1900 900 50  0000 C CNN
F 1 "10mH" V 2060 900 50  0000 C CNN
F 2 "AAA mie lib verificate:CDRH127" H 1950 900 50  0001 C CNN
F 3 "" H 1950 900 50  0000 C CNN
	1    1950 900 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  900  1100 900 
Wire Wire Line
	950  1000 1100 1000
Wire Wire Line
	1100 1000 1100 1300
Wire Wire Line
	1400 900  1800 900 
Connection ~ 1600 900 
Wire Wire Line
	2100 900  2450 900 
Wire Wire Line
	1100 1300 2450 1300
$Comp
L Varistor RV1
U 1 1 5AE8445F
P 2300 1100
F 0 "RV1" V 2425 1100 50  0000 C CNN
F 1 "Varistor" V 2175 1100 50  0000 C CNN
F 2 "Varistors:RV_Disc_D15.5_W4.2_P7.5" V 2230 1100 50  0001 C CNN
F 3 "" H 2300 1100 50  0000 C CNN
	1    2300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 900  2300 950 
Connection ~ 2300 900 
Wire Wire Line
	2300 1250 2300 1300
Connection ~ 2300 1300
Wire Wire Line
	1600 1250 1600 1300
Connection ~ 1600 1300
Wire Wire Line
	1600 950  1600 900 
$Comp
L CONN_01X03 P7
U 1 1 5AE8530D
P 3950 1300
F 0 "P7" H 3950 1550 50  0000 C CNN
F 1 "CONN_01X03" V 4050 1300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 3950 1300 50  0001 C CNN
F 3 "" H 3950 1300 50  0000 C CNN
	1    3950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 900  3600 900 
Wire Wire Line
	3600 900  3600 1200
Wire Wire Line
	3600 1200 3750 1200
Wire Wire Line
	3450 1300 3750 1300
$Comp
L +5V #PWR09
U 1 1 5AE85BAE
P 5000 1200
F 0 "#PWR09" H 5000 1050 50  0001 C CNN
F 1 "+5V" H 5000 1340 50  0000 C CNN
F 2 "" H 5000 1200 50  0000 C CNN
F 3 "" H 5000 1200 50  0000 C CNN
	1    5000 1200
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR010
U 1 1 5AE85C37
P 5250 1300
F 0 "#PWR010" H 5250 1050 50  0001 C CNN
F 1 "GNDD" H 5250 1150 50  0000 C CNN
F 2 "" H 5250 1300 50  0000 C CNN
F 3 "" H 5250 1300 50  0000 C CNN
	1    5250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1300 5250 1300
Wire Wire Line
	2450 3050 2450 3150
Wire Wire Line
	4250 2750 5750 2750
$Comp
L +5V #PWR011
U 1 1 5AE86AC2
P 4800 2750
F 0 "#PWR011" H 4800 2600 50  0001 C CNN
F 1 "+5V" H 4800 2890 50  0000 C CNN
F 2 "" H 4800 2750 50  0000 C CNN
F 3 "" H 4800 2750 50  0000 C CNN
	1    4800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3750 5750 3750
$Comp
L GNDD #PWR012
U 1 1 5AE86E57
P 4250 3750
F 0 "#PWR012" H 4250 3500 50  0001 C CNN
F 1 "GNDD" H 4250 3600 50  0000 C CNN
F 2 "" H 4250 3750 50  0000 C CNN
F 3 "" H 4250 3750 50  0000 C CNN
	1    4250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1200 5650 1200
$Comp
L WS2812B LED1
U 1 1 5ABA2DCD
P 4250 3250
F 0 "LED1" H 4050 2850 60  0000 C CNN
F 1 "WS2812B" H 4500 3600 60  0000 C CNN
F 2 "AAA_Mie_lib_verificate:ws2812b" V 4200 3250 60  0001 C CNN
F 3 "" V 4200 3250 60  0000 C CNN
	1    4250 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC