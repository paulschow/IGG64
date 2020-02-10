EESchema Schematic File Version 4
EELAYER 29 0
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
L Device:R R1
U 1 1 5E7F383E
P 1400 1200
F 0 "R1" V 1193 1200 50  0000 C CNN
F 1 "10k" V 1284 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1330 1200 50  0001 C CNN
F 3 "~" H 1400 1200 50  0001 C CNN
	1    1400 1200
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J1
U 1 1 5E7F3D72
P 9850 1850
F 0 "J1" H 9930 1842 50  0000 L CNN
F 1 "Conn_01x16" H 9930 1751 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical_SMD" H 9850 1850 50  0001 C CNN
F 3 "~" H 9850 1850 50  0001 C CNN
	1    9850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E7F5DEE
P 1950 1600
F 0 "#PWR01" H 1950 1350 50  0001 C CNN
F 1 "GND" H 1955 1427 50  0000 C CNN
F 2 "" H 1950 1600 50  0001 C CNN
F 3 "" H 1950 1600 50  0001 C CNN
	1    1950 1600
	1    0    0    -1  
$EndComp
Text GLabel 1050 1200 0    50   Input ~ 0
input1
Text GLabel 2750 700  2    50   Output ~ 0
output1
Wire Wire Line
	1050 1200 1250 1200
Wire Wire Line
	1950 1000 1950 700 
Wire Wire Line
	1650 1200 1550 1200
Wire Wire Line
	1950 1600 1950 1400
Text GLabel 9450 1150 0    50   Input ~ 0
input1
Text GLabel 9450 1250 0    50   Input ~ 0
input2
Text GLabel 9450 1350 0    50   Input ~ 0
input3
Text GLabel 9450 1450 0    50   Input ~ 0
input4
Text GLabel 9450 1550 0    50   Input ~ 0
input5
Text GLabel 9450 1650 0    50   Input ~ 0
input6
Text GLabel 9450 1750 0    50   Input ~ 0
input7
Text GLabel 9450 1850 0    50   Input ~ 0
input8
Text GLabel 9450 1950 0    50   Input ~ 0
input9
Text GLabel 9450 2050 0    50   Input ~ 0
input10
Text GLabel 9450 2150 0    50   Input ~ 0
input11
Text GLabel 9450 2250 0    50   Input ~ 0
input12
Text GLabel 9450 2350 0    50   Input ~ 0
input13
Text GLabel 9450 2450 0    50   Input ~ 0
input14
Text GLabel 9450 2550 0    50   Input ~ 0
input15
Text GLabel 9450 2650 0    50   Input ~ 0
input16
Wire Wire Line
	9450 1150 9650 1150
Wire Wire Line
	9450 1250 9650 1250
Wire Wire Line
	9450 1350 9650 1350
Wire Wire Line
	9450 1450 9650 1450
Wire Wire Line
	9450 1550 9650 1550
Wire Wire Line
	9450 1650 9650 1650
Wire Wire Line
	9450 1750 9650 1750
Wire Wire Line
	9450 1850 9650 1850
Wire Wire Line
	9450 1950 9650 1950
Wire Wire Line
	9450 2050 9650 2050
Wire Wire Line
	9450 2150 9650 2150
Wire Wire Line
	9450 2250 9650 2250
Wire Wire Line
	9450 2350 9650 2350
Wire Wire Line
	9450 2450 9650 2450
Wire Wire Line
	9450 2550 9650 2550
Wire Wire Line
	9450 2650 9650 2650
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 5E7FC20E
P 1850 1200
F 0 "Q1" H 2041 1246 50  0000 L CNN
F 1 "Q_NPN_BEC" H 2041 1155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 1300 50  0001 C CNN
F 3 "~" H 1850 1200 50  0001 C CNN
	1    1850 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5E7FF222
P 9850 4750
F 0 "J3" H 9930 4742 50  0000 L CNN
F 1 "Conn_01x02" H 9930 4651 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 9850 4750 50  0001 C CNN
F 3 "~" H 9850 4750 50  0001 C CNN
	1    9850 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5E7FFB53
P 9550 5000
F 0 "#PWR017" H 9550 4750 50  0001 C CNN
F 1 "GND" H 9555 4827 50  0000 C CNN
F 2 "" H 9550 5000 50  0001 C CNN
F 3 "" H 9550 5000 50  0001 C CNN
	1    9550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5000 9550 4850
Wire Wire Line
	9550 4750 9650 4750
Wire Wire Line
	9650 4850 9550 4850
Connection ~ 9550 4850
Wire Wire Line
	9550 4850 9550 4750
Wire Wire Line
	1950 700  2750 700 
$Comp
L Device:R R2
U 1 1 5E80786A
P 1400 2400
F 0 "R2" V 1193 2400 50  0000 C CNN
F 1 "10k" V 1284 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1330 2400 50  0001 C CNN
F 3 "~" H 1400 2400 50  0001 C CNN
	1    1400 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E807870
P 1950 2800
F 0 "#PWR02" H 1950 2550 50  0001 C CNN
F 1 "GND" H 1955 2627 50  0000 C CNN
F 2 "" H 1950 2800 50  0001 C CNN
F 3 "" H 1950 2800 50  0001 C CNN
	1    1950 2800
	1    0    0    -1  
$EndComp
Text GLabel 1050 2400 0    50   Input ~ 0
input2
Text GLabel 2750 1900 2    50   Output ~ 0
output2
Wire Wire Line
	1050 2400 1250 2400
Wire Wire Line
	1950 2200 1950 1900
Wire Wire Line
	1650 2400 1550 2400
Wire Wire Line
	1950 2800 1950 2600
$Comp
L Device:Q_NPN_BEC Q2
U 1 1 5E80787C
P 1850 2400
F 0 "Q2" H 2041 2446 50  0000 L CNN
F 1 "Q_NPN_BEC" H 2041 2355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 2500 50  0001 C CNN
F 3 "~" H 1850 2400 50  0001 C CNN
	1    1850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1900 2750 1900
$Comp
L Device:R R3
U 1 1 5E808C4F
P 1400 3600
F 0 "R3" V 1193 3600 50  0000 C CNN
F 1 "10k" V 1284 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1330 3600 50  0001 C CNN
F 3 "~" H 1400 3600 50  0001 C CNN
	1    1400 3600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E808C55
P 1950 4000
F 0 "#PWR03" H 1950 3750 50  0001 C CNN
F 1 "GND" H 1955 3827 50  0000 C CNN
F 2 "" H 1950 4000 50  0001 C CNN
F 3 "" H 1950 4000 50  0001 C CNN
	1    1950 4000
	1    0    0    -1  
$EndComp
Text GLabel 1050 3600 0    50   Input ~ 0
input3
Text GLabel 2750 3100 2    50   Output ~ 0
output3
Wire Wire Line
	1050 3600 1250 3600
Wire Wire Line
	1950 3400 1950 3100
Wire Wire Line
	1650 3600 1550 3600
Wire Wire Line
	1950 4000 1950 3800
$Comp
L Device:Q_NPN_BEC Q3
U 1 1 5E808C61
P 1850 3600
F 0 "Q3" H 2041 3646 50  0000 L CNN
F 1 "Q_NPN_BEC" H 2041 3555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 3700 50  0001 C CNN
F 3 "~" H 1850 3600 50  0001 C CNN
	1    1850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3100 2750 3100
$Comp
L Device:R R4
U 1 1 5E80A570
P 1400 4800
F 0 "R4" V 1193 4800 50  0000 C CNN
F 1 "10k" V 1284 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1330 4800 50  0001 C CNN
F 3 "~" H 1400 4800 50  0001 C CNN
	1    1400 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E80A576
P 1950 5200
F 0 "#PWR04" H 1950 4950 50  0001 C CNN
F 1 "GND" H 1955 5027 50  0000 C CNN
F 2 "" H 1950 5200 50  0001 C CNN
F 3 "" H 1950 5200 50  0001 C CNN
	1    1950 5200
	1    0    0    -1  
$EndComp
Text GLabel 1050 4800 0    50   Input ~ 0
input4
Text GLabel 2750 4300 2    50   Output ~ 0
output4
Wire Wire Line
	1050 4800 1250 4800
Wire Wire Line
	1950 4600 1950 4300
Wire Wire Line
	1650 4800 1550 4800
Wire Wire Line
	1950 5200 1950 5000
$Comp
L Device:Q_NPN_BEC Q4
U 1 1 5E80A582
P 1850 4800
F 0 "Q4" H 2041 4846 50  0000 L CNN
F 1 "Q_NPN_BEC" H 2041 4755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 4900 50  0001 C CNN
F 3 "~" H 1850 4800 50  0001 C CNN
	1    1850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4300 2750 4300
$Comp
L Device:R R5
U 1 1 5E80C66B
P 1400 5950
F 0 "R5" V 1193 5950 50  0000 C CNN
F 1 "10k" V 1284 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1330 5950 50  0001 C CNN
F 3 "~" H 1400 5950 50  0001 C CNN
	1    1400 5950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E80C671
P 1950 6350
F 0 "#PWR05" H 1950 6100 50  0001 C CNN
F 1 "GND" H 1955 6177 50  0000 C CNN
F 2 "" H 1950 6350 50  0001 C CNN
F 3 "" H 1950 6350 50  0001 C CNN
	1    1950 6350
	1    0    0    -1  
$EndComp
Text GLabel 1050 5950 0    50   Input ~ 0
input5
Text GLabel 2750 5450 2    50   Output ~ 0
output5
Wire Wire Line
	1050 5950 1250 5950
Wire Wire Line
	1950 5750 1950 5450
Wire Wire Line
	1650 5950 1550 5950
Wire Wire Line
	1950 6350 1950 6150
$Comp
L Device:Q_NPN_BEC Q5
U 1 1 5E80C67D
P 1850 5950
F 0 "Q5" H 2041 5996 50  0000 L CNN
F 1 "Q_NPN_BEC" H 2041 5905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 6050 50  0001 C CNN
F 3 "~" H 1850 5950 50  0001 C CNN
	1    1850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5450 2750 5450
$Comp
L Device:R R6
U 1 1 5E80E3E0
P 1400 7150
F 0 "R6" V 1193 7150 50  0000 C CNN
F 1 "10k" V 1284 7150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1330 7150 50  0001 C CNN
F 3 "~" H 1400 7150 50  0001 C CNN
	1    1400 7150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E80E3E6
P 1950 7550
F 0 "#PWR06" H 1950 7300 50  0001 C CNN
F 1 "GND" H 1955 7377 50  0000 C CNN
F 2 "" H 1950 7550 50  0001 C CNN
F 3 "" H 1950 7550 50  0001 C CNN
	1    1950 7550
	1    0    0    -1  
$EndComp
Text GLabel 1050 7150 0    50   Input ~ 0
input6
Text GLabel 2750 6650 2    50   Output ~ 0
output6
Wire Wire Line
	1050 7150 1250 7150
Wire Wire Line
	1950 6950 1950 6650
Wire Wire Line
	1650 7150 1550 7150
Wire Wire Line
	1950 7550 1950 7350
$Comp
L Device:Q_NPN_BEC Q6
U 1 1 5E80E3F2
P 1850 7150
F 0 "Q6" H 2041 7196 50  0000 L CNN
F 1 "Q_NPN_BEC" H 2041 7105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 7250 50  0001 C CNN
F 3 "~" H 1850 7150 50  0001 C CNN
	1    1850 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6650 2750 6650
$Comp
L Device:R R7
U 1 1 5E8131C6
P 4300 1200
F 0 "R7" V 4093 1200 50  0000 C CNN
F 1 "10k" V 4184 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4230 1200 50  0001 C CNN
F 3 "~" H 4300 1200 50  0001 C CNN
	1    4300 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E8131CC
P 4850 1600
F 0 "#PWR07" H 4850 1350 50  0001 C CNN
F 1 "GND" H 4855 1427 50  0000 C CNN
F 2 "" H 4850 1600 50  0001 C CNN
F 3 "" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1200 4150 1200
Wire Wire Line
	4850 1000 4850 700 
Wire Wire Line
	4550 1200 4450 1200
Wire Wire Line
	4850 1600 4850 1400
$Comp
L Device:Q_NPN_BEC Q7
U 1 1 5E8131D8
P 4750 1200
F 0 "Q7" H 4941 1246 50  0000 L CNN
F 1 "Q_NPN_BEC" H 4941 1155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4950 1300 50  0001 C CNN
F 3 "~" H 4750 1200 50  0001 C CNN
	1    4750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 700  5650 700 
$Comp
L Device:R R8
U 1 1 5E815D1B
P 4300 2400
F 0 "R8" V 4093 2400 50  0000 C CNN
F 1 "10k" V 4184 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4230 2400 50  0001 C CNN
F 3 "~" H 4300 2400 50  0001 C CNN
	1    4300 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E815D21
P 4850 2800
F 0 "#PWR08" H 4850 2550 50  0001 C CNN
F 1 "GND" H 4855 2627 50  0000 C CNN
F 2 "" H 4850 2800 50  0001 C CNN
F 3 "" H 4850 2800 50  0001 C CNN
	1    4850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2400 4150 2400
Wire Wire Line
	4850 2200 4850 1900
Wire Wire Line
	4550 2400 4450 2400
Wire Wire Line
	4850 2800 4850 2600
$Comp
L Device:Q_NPN_BEC Q8
U 1 1 5E815D2D
P 4750 2400
F 0 "Q8" H 4941 2446 50  0000 L CNN
F 1 "Q_NPN_BEC" H 4941 2355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4950 2500 50  0001 C CNN
F 3 "~" H 4750 2400 50  0001 C CNN
	1    4750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1900 5650 1900
$Comp
L Device:R R9
U 1 1 5E8181C0
P 4300 3600
F 0 "R9" V 4093 3600 50  0000 C CNN
F 1 "10k" V 4184 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4230 3600 50  0001 C CNN
F 3 "~" H 4300 3600 50  0001 C CNN
	1    4300 3600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E8181C6
P 4850 4000
F 0 "#PWR09" H 4850 3750 50  0001 C CNN
F 1 "GND" H 4855 3827 50  0000 C CNN
F 2 "" H 4850 4000 50  0001 C CNN
F 3 "" H 4850 4000 50  0001 C CNN
	1    4850 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3600 4150 3600
Wire Wire Line
	4850 3400 4850 3100
Wire Wire Line
	4550 3600 4450 3600
Wire Wire Line
	4850 4000 4850 3800
$Comp
L Device:Q_NPN_BEC Q9
U 1 1 5E8181D2
P 4750 3600
F 0 "Q9" H 4941 3646 50  0000 L CNN
F 1 "Q_NPN_BEC" H 4941 3555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4950 3700 50  0001 C CNN
F 3 "~" H 4750 3600 50  0001 C CNN
	1    4750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3100 5650 3100
$Comp
L Device:R R10
U 1 1 5E81B22F
P 4300 4800
F 0 "R10" V 4093 4800 50  0000 C CNN
F 1 "10k" V 4184 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4230 4800 50  0001 C CNN
F 3 "~" H 4300 4800 50  0001 C CNN
	1    4300 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E81B235
P 4850 5200
F 0 "#PWR010" H 4850 4950 50  0001 C CNN
F 1 "GND" H 4855 5027 50  0000 C CNN
F 2 "" H 4850 5200 50  0001 C CNN
F 3 "" H 4850 5200 50  0001 C CNN
	1    4850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4800 4150 4800
Wire Wire Line
	4850 4600 4850 4300
Wire Wire Line
	4550 4800 4450 4800
Wire Wire Line
	4850 5200 4850 5000
$Comp
L Device:Q_NPN_BEC Q10
U 1 1 5E81B241
P 4750 4800
F 0 "Q10" H 4941 4846 50  0000 L CNN
F 1 "Q_NPN_BEC" H 4941 4755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4950 4900 50  0001 C CNN
F 3 "~" H 4750 4800 50  0001 C CNN
	1    4750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4300 5650 4300
$Comp
L Device:R R11
U 1 1 5E81E3A6
P 4300 5950
F 0 "R11" V 4093 5950 50  0000 C CNN
F 1 "10k" V 4184 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4230 5950 50  0001 C CNN
F 3 "~" H 4300 5950 50  0001 C CNN
	1    4300 5950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E81E3AC
P 4850 6350
F 0 "#PWR011" H 4850 6100 50  0001 C CNN
F 1 "GND" H 4855 6177 50  0000 C CNN
F 2 "" H 4850 6350 50  0001 C CNN
F 3 "" H 4850 6350 50  0001 C CNN
	1    4850 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5950 4150 5950
Wire Wire Line
	4850 5750 4850 5450
Wire Wire Line
	4550 5950 4450 5950
Wire Wire Line
	4850 6350 4850 6150
$Comp
L Device:Q_NPN_BEC Q11
U 1 1 5E81E3B8
P 4750 5950
F 0 "Q11" H 4941 5996 50  0000 L CNN
F 1 "Q_NPN_BEC" H 4941 5905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4950 6050 50  0001 C CNN
F 3 "~" H 4750 5950 50  0001 C CNN
	1    4750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5450 5650 5450
$Comp
L Device:R R12
U 1 1 5E8214EB
P 4300 7100
F 0 "R12" V 4093 7100 50  0000 C CNN
F 1 "10k" V 4184 7100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4230 7100 50  0001 C CNN
F 3 "~" H 4300 7100 50  0001 C CNN
	1    4300 7100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E8214F1
P 4850 7500
F 0 "#PWR012" H 4850 7250 50  0001 C CNN
F 1 "GND" H 4855 7327 50  0000 C CNN
F 2 "" H 4850 7500 50  0001 C CNN
F 3 "" H 4850 7500 50  0001 C CNN
	1    4850 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 7100 4150 7100
Wire Wire Line
	4850 6900 4850 6600
Wire Wire Line
	4550 7100 4450 7100
Wire Wire Line
	4850 7500 4850 7300
$Comp
L Device:Q_NPN_BEC Q12
U 1 1 5E8214FD
P 4750 7100
F 0 "Q12" H 4941 7146 50  0000 L CNN
F 1 "Q_NPN_BEC" H 4941 7055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4950 7200 50  0001 C CNN
F 3 "~" H 4750 7100 50  0001 C CNN
	1    4750 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6600 5650 6600
$Comp
L Device:R R13
U 1 1 5E824F6C
P 6800 1200
F 0 "R13" V 6593 1200 50  0000 C CNN
F 1 "10k" V 6684 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6730 1200 50  0001 C CNN
F 3 "~" H 6800 1200 50  0001 C CNN
	1    6800 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5E824F72
P 7350 1600
F 0 "#PWR013" H 7350 1350 50  0001 C CNN
F 1 "GND" H 7355 1427 50  0000 C CNN
F 2 "" H 7350 1600 50  0001 C CNN
F 3 "" H 7350 1600 50  0001 C CNN
	1    7350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1200 6650 1200
Wire Wire Line
	7350 1000 7350 700 
Wire Wire Line
	7050 1200 6950 1200
Wire Wire Line
	7350 1600 7350 1400
$Comp
L Device:Q_NPN_BEC Q13
U 1 1 5E824F7E
P 7250 1200
F 0 "Q13" H 7441 1246 50  0000 L CNN
F 1 "Q_NPN_BEC" H 7441 1155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7450 1300 50  0001 C CNN
F 3 "~" H 7250 1200 50  0001 C CNN
	1    7250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 700  8150 700 
$Comp
L Device:R R14
U 1 1 5E828D21
P 6800 2350
F 0 "R14" V 6593 2350 50  0000 C CNN
F 1 "10k" V 6684 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6730 2350 50  0001 C CNN
F 3 "~" H 6800 2350 50  0001 C CNN
	1    6800 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5E828D27
P 7350 2750
F 0 "#PWR014" H 7350 2500 50  0001 C CNN
F 1 "GND" H 7355 2577 50  0000 C CNN
F 2 "" H 7350 2750 50  0001 C CNN
F 3 "" H 7350 2750 50  0001 C CNN
	1    7350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2350 6650 2350
Wire Wire Line
	7350 2150 7350 1850
Wire Wire Line
	7050 2350 6950 2350
Wire Wire Line
	7350 2750 7350 2550
$Comp
L Device:Q_NPN_BEC Q14
U 1 1 5E828D33
P 7250 2350
F 0 "Q14" H 7441 2396 50  0000 L CNN
F 1 "Q_NPN_BEC" H 7441 2305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7450 2450 50  0001 C CNN
F 3 "~" H 7250 2350 50  0001 C CNN
	1    7250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1850 8150 1850
$Comp
L Device:R R15
U 1 1 5E82CCBE
P 6800 3550
F 0 "R15" V 6593 3550 50  0000 C CNN
F 1 "10k" V 6684 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6730 3550 50  0001 C CNN
F 3 "~" H 6800 3550 50  0001 C CNN
	1    6800 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E82CCC4
P 7350 3950
F 0 "#PWR015" H 7350 3700 50  0001 C CNN
F 1 "GND" H 7355 3777 50  0000 C CNN
F 2 "" H 7350 3950 50  0001 C CNN
F 3 "" H 7350 3950 50  0001 C CNN
	1    7350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3550 6650 3550
Wire Wire Line
	7350 3350 7350 3050
Wire Wire Line
	7050 3550 6950 3550
Wire Wire Line
	7350 3950 7350 3750
$Comp
L Device:Q_NPN_BEC Q15
U 1 1 5E82CCD0
P 7250 3550
F 0 "Q15" H 7441 3596 50  0000 L CNN
F 1 "Q_NPN_BEC" H 7441 3505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7450 3650 50  0001 C CNN
F 3 "~" H 7250 3550 50  0001 C CNN
	1    7250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3050 8150 3050
$Comp
L Device:R R16
U 1 1 5E831203
P 6800 4800
F 0 "R16" V 6593 4800 50  0000 C CNN
F 1 "10k" V 6684 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6730 4800 50  0001 C CNN
F 3 "~" H 6800 4800 50  0001 C CNN
	1    6800 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5E831209
P 7350 5200
F 0 "#PWR016" H 7350 4950 50  0001 C CNN
F 1 "GND" H 7355 5027 50  0000 C CNN
F 2 "" H 7350 5200 50  0001 C CNN
F 3 "" H 7350 5200 50  0001 C CNN
	1    7350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4800 6650 4800
Wire Wire Line
	7350 4600 7350 4300
Wire Wire Line
	7050 4800 6950 4800
Wire Wire Line
	7350 5200 7350 5000
$Comp
L Device:Q_NPN_BEC Q16
U 1 1 5E831215
P 7250 4800
F 0 "Q16" H 7441 4846 50  0000 L CNN
F 1 "Q_NPN_BEC" H 7441 4755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7450 4900 50  0001 C CNN
F 3 "~" H 7250 4800 50  0001 C CNN
	1    7250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4300 8150 4300
Text GLabel 5650 700  2    50   Output ~ 0
output7
Text GLabel 5650 1900 2    50   Output ~ 0
output8
Text GLabel 5650 3100 2    50   Output ~ 0
output9
Text GLabel 5650 4300 2    50   Output ~ 0
output10
Text GLabel 5650 5450 2    50   Output ~ 0
output11
Text GLabel 5650 6600 2    50   Output ~ 0
output12
Text GLabel 8150 700  2    50   Output ~ 0
output13
Text GLabel 8150 1850 2    50   Output ~ 0
output14
Text GLabel 8150 3050 2    50   Output ~ 0
output15
Text GLabel 8150 4300 2    50   Output ~ 0
output16
Text GLabel 3950 1200 0    50   Input ~ 0
input7
Text GLabel 3950 2400 0    50   Input ~ 0
input8
Text GLabel 3950 3600 0    50   Input ~ 0
input9
Text GLabel 3950 4800 0    50   Input ~ 0
input10
Text GLabel 3950 5950 0    50   Input ~ 0
input11
Text GLabel 3950 7100 0    50   Input ~ 0
input12
Text GLabel 6450 1200 0    50   Input ~ 0
input13
Text GLabel 6450 2350 0    50   Input ~ 0
input14
Text GLabel 6450 3550 0    50   Input ~ 0
input15
Text GLabel 6450 4800 0    50   Input ~ 0
input16
Text GLabel 9450 2900 0    50   Output ~ 0
output1
Text GLabel 9450 3000 0    50   Output ~ 0
output2
Text GLabel 9450 3100 0    50   Output ~ 0
output3
Text GLabel 9450 3200 0    50   Output ~ 0
output4
Text GLabel 9450 3300 0    50   Output ~ 0
output5
Text GLabel 9450 3400 0    50   Output ~ 0
output6
Text GLabel 9450 3500 0    50   Output ~ 0
output7
Text GLabel 9450 3600 0    50   Output ~ 0
output8
Text GLabel 9450 3700 0    50   Output ~ 0
output9
Text GLabel 9450 3800 0    50   Output ~ 0
output10
Text GLabel 9450 3900 0    50   Output ~ 0
output11
Text GLabel 9450 4000 0    50   Output ~ 0
output12
Text GLabel 9450 4100 0    50   Output ~ 0
output13
Text GLabel 9450 4200 0    50   Output ~ 0
output14
Text GLabel 9450 4300 0    50   Output ~ 0
output15
Text GLabel 9450 4400 0    50   Output ~ 0
output16
Wire Wire Line
	9450 2900 9650 2900
Wire Wire Line
	9450 3000 9650 3000
Wire Wire Line
	9450 3100 9650 3100
Wire Wire Line
	9450 3200 9650 3200
Wire Wire Line
	9450 3300 9650 3300
Wire Wire Line
	9450 3400 9650 3400
Wire Wire Line
	9450 3500 9650 3500
Wire Wire Line
	9450 3600 9650 3600
Wire Wire Line
	9450 3700 9650 3700
Wire Wire Line
	9450 3800 9650 3800
Wire Wire Line
	9450 3900 9650 3900
Wire Wire Line
	9450 4000 9650 4000
Wire Wire Line
	9450 4100 9650 4100
Wire Wire Line
	9450 4200 9650 4200
Wire Wire Line
	9450 4300 9650 4300
Wire Wire Line
	9450 4400 9650 4400
$Comp
L Connector_Generic:Conn_01x16 J2
U 1 1 5E7F6787
P 9850 3600
F 0 "J2" H 9930 3592 50  0000 L CNN
F 1 "Conn_01x16" H 9930 3501 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical_SMD" H 9850 3600 50  0001 C CNN
F 3 "~" H 9850 3600 50  0001 C CNN
	1    9850 3600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E8E0B2F
P 8900 5200
F 0 "H1" V 8854 5350 50  0000 L CNN
F 1 "MountingHole_Pad" V 8945 5350 50  0000 L CNN
F 2 "MountingHole_3.2mm_M3_ISO14580_Pad" H 8900 5200 50  0001 C CNN
F 3 "~" H 8900 5200 50  0001 C CNN
	1    8900 5200
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E8E1502
P 8900 5400
F 0 "H2" V 8854 5550 50  0000 L CNN
F 1 "MountingHole_Pad" V 8945 5550 50  0000 L CNN
F 2 "MountingHole_3.2mm_M3_ISO14580_Pad" H 8900 5400 50  0001 C CNN
F 3 "~" H 8900 5400 50  0001 C CNN
	1    8900 5400
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5E8E171A
P 8900 5600
F 0 "H3" V 8854 5750 50  0000 L CNN
F 1 "MountingHole_Pad" V 8945 5750 50  0000 L CNN
F 2 "MountingHole_3.2mm_M3_ISO14580_Pad" H 8900 5600 50  0001 C CNN
F 3 "~" H 8900 5600 50  0001 C CNN
	1    8900 5600
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5E8E197A
P 8900 5800
F 0 "H4" V 8854 5950 50  0000 L CNN
F 1 "MountingHole_Pad" V 8945 5950 50  0000 L CNN
F 2 "MountingHole_3.2mm_M3_ISO14580_Pad" H 8900 5800 50  0001 C CNN
F 3 "~" H 8900 5800 50  0001 C CNN
	1    8900 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5E8E1C14
P 8650 5950
F 0 "#PWR018" H 8650 5700 50  0001 C CNN
F 1 "GND" H 8655 5777 50  0000 C CNN
F 2 "" H 8650 5950 50  0001 C CNN
F 3 "" H 8650 5950 50  0001 C CNN
	1    8650 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5950 8650 5800
Wire Wire Line
	8650 5200 8800 5200
Wire Wire Line
	8800 5400 8650 5400
Connection ~ 8650 5400
Wire Wire Line
	8650 5400 8650 5200
Wire Wire Line
	8800 5600 8650 5600
Connection ~ 8650 5600
Wire Wire Line
	8650 5600 8650 5400
Wire Wire Line
	8800 5800 8650 5800
Connection ~ 8650 5800
Wire Wire Line
	8650 5800 8650 5600
$EndSCHEMATC
