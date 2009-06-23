EESchema Schematic File Version 2  date Mon 22 Jun 2009 02:50:33 PM CDT
LIBS:power,device,transistors,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,opto,atmel,contrib,valves,./Timing_Unit.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 2 2
Title ""
Date "12 jun 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 7404 U8
U 5 1 4A27E13A
P 2950 7350
F 0 "U8" H 3050 7550 60  0000 C CNN
F 1 "MM74HC04M" H 3400 7450 60  0000 C CNN
	5    2950 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5850 6550 5850
Wire Wire Line
	2150 2650 2150 5200
Wire Wire Line
	3600 6300 3600 5400
Wire Wire Line
	4200 3450 4200 5000
Wire Wire Line
	4300 2300 4300 4800
Wire Wire Line
	4400 2100 4400 4600
Connection ~ 700  900 
Wire Wire Line
	600  900  900  900 
Connection ~ 3600 6300
Connection ~ 2700 1950
Wire Wire Line
	1650 1950 2700 1950
Connection ~ 800  900 
Wire Wire Line
	850  1350 850  1300
Wire Wire Line
	750  1350 750  1300
Wire Wire Line
	1650 1850 2050 1850
Wire Wire Line
	2050 1850 2050 1900
Wire Wire Line
	1150 7450 1500 7450
Connection ~ 9250 6100
Wire Wire Line
	1650 5100 4150 5100
Wire Wire Line
	1650 4900 4250 4900
Wire Wire Line
	1650 4700 4350 4700
Wire Wire Line
	4750 4050 3900 4050
Wire Wire Line
	3900 4050 3900 2550
Wire Wire Line
	3900 2550 1650 2550
Wire Wire Line
	4750 3550 4150 3550
Wire Wire Line
	4750 2900 4000 2900
Wire Wire Line
	4000 2900 4000 2350
Wire Wire Line
	4000 2350 1650 2350
Wire Wire Line
	4750 2700 4100 2700
Wire Wire Line
	4100 2700 4100 2150
Wire Wire Line
	4100 2150 1650 2150
Wire Wire Line
	4750 2400 4250 2400
Wire Wire Line
	4750 2200 4350 2200
Connection ~ 4600 4400
Wire Wire Line
	5100 4800 4600 4800
Wire Wire Line
	4600 4800 4600 3050
Wire Wire Line
	9700 6650 10050 6650
Wire Wire Line
	9700 6050 10050 6050
Wire Wire Line
	9700 5450 10050 5450
Wire Wire Line
	7350 6250 8050 6250
Wire Wire Line
	7350 5850 8050 5850
Wire Wire Line
	8050 6050 7800 6050
Wire Wire Line
	4600 3050 4750 3050
Wire Wire Line
	4600 4400 4750 4400
Wire Wire Line
	4750 3150 4500 3150
Wire Wire Line
	4500 4500 4750 4500
Wire Wire Line
	7800 5950 8050 5950
Wire Wire Line
	7800 6350 8050 6350
Wire Wire Line
	7350 5750 8050 5750
Wire Wire Line
	7350 6150 8050 6150
Wire Wire Line
	7350 6450 8050 6450
Wire Wire Line
	6550 6150 6450 6150
Wire Wire Line
	6450 6150 6450 6050
Wire Wire Line
	6450 6050 6550 6050
Connection ~ 6450 6050
Wire Wire Line
	4400 2100 4750 2100
Wire Wire Line
	4300 2300 4750 2300
Wire Wire Line
	1650 2050 4150 2050
Wire Wire Line
	4150 2050 4150 2600
Wire Wire Line
	4150 2600 4750 2600
Wire Wire Line
	1650 2250 4050 2250
Wire Wire Line
	4050 2250 4050 2800
Wire Wire Line
	4050 2800 4750 2800
Wire Wire Line
	4200 3450 4750 3450
Wire Wire Line
	1650 2450 3950 2450
Wire Wire Line
	3950 2450 3950 3950
Wire Wire Line
	3950 3950 4750 3950
Wire Wire Line
	4400 4600 1650 4600
Wire Wire Line
	4300 4800 1650 4800
Wire Wire Line
	4200 5000 1650 5000
Wire Wire Line
	2150 2650 1650 2650
Wire Wire Line
	2150 5200 1650 5200
Wire Wire Line
	9250 6100 9250 6350
Wire Wire Line
	9250 6350 9000 6350
Wire Wire Line
	9000 6350 9000 6800
Wire Wire Line
	1150 7250 1500 7250
Wire Wire Line
	4500 3150 4500 4550
Connection ~ 4500 4500
Wire Wire Line
	1650 4400 2050 4400
Wire Wire Line
	2050 4400 2050 4450
Wire Wire Line
	750  1300 850  1300
Connection ~ 800  1300
Wire Wire Line
	6050 1650 2700 1650
Wire Wire Line
	1650 4500 2700 4500
Wire Wire Line
	3600 5400 1650 5400
Wire Wire Line
	2700 4500 2700 1650
Wire Wire Line
	4350 2200 4350 4700
Wire Wire Line
	4250 2400 4250 4900
Wire Wire Line
	4150 3550 4150 5100
Wire Wire Line
	850  600  850  700 
Wire Wire Line
	5950 5750 6550 5750
NoConn ~ 1650 6200
NoConn ~ 1650 6300
NoConn ~ 1650 3900
NoConn ~ 1650 4000
NoConn ~ 1650 1350
NoConn ~ 1650 1450
Text Label 850  700  0    40   ~ 0
A1_VIN
Text Label 850  650  0    40   ~ 0
A2_VIN
$Comp
L +BATT #PWR038
U 1 1 4A203740
P 850 600
F 0 "#PWR038" H 850 550 20  0001 C CNN
F 1 "+BATT" H 850 700 30  0000 C CNN
	1    850  600 
	1    0    0    -1  
$EndComp
Text Label 1650 1550 0    60   ~ 0
A1_VIN
Text Label 1650 4100 0    60   ~ 0
A2_VIN
NoConn ~ 1650 3750
NoConn ~ 1650 3650
Text Label 1650 3750 0    60   ~ 0
A1_A4
Text Label 1650 3650 0    60   ~ 0
A1_A3
Text Label 1650 6300 0    60   ~ 0
A2_A4
Text Label 1650 6200 0    60   ~ 0
A2_A3
$Comp
L CONN_25 P14
U 1 1 4A20365B
P 1300 5100
F 0 "P14" V 1250 5100 60  0000 C CNN
F 1 "CONN_25" V 1350 5100 60  0000 C CNN
	1    1300 5100
	-1   0    0    1   
$EndComp
$Comp
L CONN_25 P13
U 1 1 4A20362F
P 1300 2550
F 0 "P13" V 1250 2550 60  0000 C CNN
F 1 "CONN_25" V 1350 2550 60  0000 C CNN
F 4 "MSH26ECT-ND" H 1300 2550 60  0001 C CNN "Digikey Part"
F 5 "3M9104-ND" H 1300 2550 60  0001 C CNN "Digikey Part 2"
	1    1300 2550
	-1   0    0    1   
$EndComp
Text HLabel 6050 3550 2    60   Output ~ 0
EXP_TRIGGER_OFF
Text HLabel 6050 3450 2    60   Output ~ 0
EXP_TRIGGER_ON
Text HLabel 6050 2400 2    60   Output ~ 0
PWR_SR_L
Text HLabel 6050 2300 2    60   Output ~ 0
PWR_SR_C
Text HLabel 6050 2200 2    60   Output ~ 0
PWR_SR_D
Text HLabel 6050 2100 2    60   Output ~ 0
TXi
Text HLabel 6050 1650 2    60   Input ~ 0
RXi
$Comp
L GND #PWR039
U 1 1 4A20324D
P 3600 6800
F 0 "#PWR039" H 3600 6800 30  0001 C CNN
F 1 "GND" H 3600 6730 30  0001 C CNN
	1    3600 6800
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 4A203241
P 3600 6550
F 0 "R11" V 3680 6550 50  0000 C CNN
F 1 "20k" V 3600 6550 50  0000 C CNN
F 4 "RR12P20.0KDCT-ND" H 3600 6550 60  0001 C CNN "Digikey Part"
	1    3600 6550
	1    0    0    -1  
$EndComp
Text Label 4000 6300 0    40   ~ 0
~TAKEOVER
$Comp
L DIODE D1
U 1 1 4A203201
P 3800 6300
F 0 "D1" H 3800 6400 40  0000 C CNN
F 1 "DIODE" H 3800 6200 40  0000 C CNN
F 4 "641-1007-1-ND" H 3800 6300 60  0001 C CNN "Digikey Part"
	1    3800 6300
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR040
U 1 1 4A203166
P 900 900
F 0 "#PWR040" H 900 1000 30  0001 C CNN
F 1 "VCC" H 900 1000 30  0000 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
NoConn ~ 4750 3750
NoConn ~ 4750 3650
$Comp
L CAPAPOL C1
U 1 1 4A203123
P 800 1100
F 0 "C1" H 850 1200 50  0000 L CNN
F 1 "10uF" H 850 1000 50  0000 L CNN
F 4 "490-3347-1-ND" H 800 1100 60  0001 C CNN "Digikey Part"
	1    800  1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 4A203100
P 850 1350
F 0 "#PWR041" H 850 1350 30  0001 C CNN
F 1 "GND" H 850 1280 30  0001 C CNN
	1    850  1350
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR042
U 1 1 4A2030FC
P 750 1350
F 0 "#PWR042" H 750 1350 30  0001 C CNN
F 1 "VSS" H 750 1280 30  0000 C CNN
	1    750  1350
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR043
U 1 1 4A2030F3
P 800 900
F 0 "#PWR043" H 800 1000 30  0001 C CNN
F 1 "VDD" H 800 1010 30  0000 C CNN
	1    800  900 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR044
U 1 1 4A2030E5
P 700 900
F 0 "#PWR044" H 700 990 20  0001 C CNN
F 1 "+5V" H 700 990 30  0000 C CNN
	1    700  900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG045
U 1 1 4A2030DD
P 2050 1850
F 0 "#FLG045" H 2050 2120 30  0001 C CNN
F 1 "PWR_FLAG" H 2050 2080 30  0000 C CNN
	1    2050 1850
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG046
U 1 1 4A2030D9
P 600 900
F 0 "#FLG046" H 600 1170 30  0001 C CNN
F 1 "PWR_FLAG" H 600 1130 30  0000 C CNN
	1    600  900 
	1    0    0    -1  
$EndComp
NoConn ~ 1650 4300
NoConn ~ 1650 4200
NoConn ~ 1650 6100
NoConn ~ 1650 6000
NoConn ~ 1650 5900
NoConn ~ 1650 5800
NoConn ~ 1650 5700
NoConn ~ 1650 3550
NoConn ~ 1650 3450
NoConn ~ 1650 3350
NoConn ~ 1650 3250
NoConn ~ 1650 3150
NoConn ~ 1650 3050
NoConn ~ 1650 2950
NoConn ~ 1650 2850
NoConn ~ 1650 2750
$Comp
L GND #PWR047
U 1 1 4A203076
P 2050 4450
F 0 "#PWR047" H 2050 4450 30  0001 C CNN
F 1 "GND" H 2050 4380 30  0001 C CNN
	1    2050 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR048
U 1 1 4A203068
P 2050 1900
F 0 "#PWR048" H 2050 1900 30  0001 C CNN
F 1 "GND" H 2050 1830 30  0001 C CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR049
U 1 1 4A203063
P 1650 1650
F 0 "#PWR049" H 1650 1740 20  0001 C CNN
F 1 "+5V" H 1650 1740 30  0000 C CNN
	1    1650 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR050
U 1 1 4A203045
P 4500 4550
F 0 "#PWR050" H 4500 4550 30  0001 C CNN
F 1 "GND" H 4500 4480 30  0001 C CNN
	1    4500 4550
	1    0    0    -1  
$EndComp
NoConn ~ 6050 3750
NoConn ~ 6050 3650
NoConn ~ 4750 4250
NoConn ~ 4750 4150
Text Label 5950 5850 0    40   ~ 0
A2_CONTROL_SR_C
Text Label 3200 7350 0    40   ~ 0
A1_RST
Text Label 1150 7250 0    40   ~ 0
TAKEOVER
$Comp
L 74LS30 U7
U 1 1 4A2028AF
P 8650 6100
F 0 "U7" H 8650 6200 60  0000 C CNN
F 1 "CD74HC30M" H 8650 6000 60  0000 C CNN
	1    8650 6100
	1    0    0    -1  
$EndComp
Text Label 9500 6800 0    40   ~ 0
TAKEOVER
$Comp
L GND #PWR051
U 1 1 4A202F7B
P 9250 7000
F 0 "#PWR051" H 9250 7000 30  0001 C CNN
F 1 "GND" H 9250 6930 30  0001 C CNN
	1    9250 7000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR052
U 1 1 4A202F79
P 9250 6600
F 0 "#PWR052" H 9250 6690 20  0001 C CNN
F 1 "+5V" H 9250 6690 30  0000 C CNN
	1    9250 6600
	1    0    0    -1  
$EndComp
$Comp
L 7404 U8
U 1 1 4A202F73
P 9250 6800
F 0 "U8" H 9350 7000 60  0000 C CNN
F 1 "MM74HC04M" H 9350 6500 60  0000 C CNN
	1    9250 6800
	1    0    0    -1  
$EndComp
Text Label 1150 7450 0    40   ~ 0
A2_RST_REQ
$Comp
L 74LS08 U3
U 1 1 4A202F17
P 2100 7350
F 0 "U3" H 2100 7400 60  0000 C CNN
F 1 "74HC08DB" H 2100 7300 60  0000 C CNN
	1    2100 7350
	1    0    0    -1  
$EndComp
Text Label 1650 3550 0    60   ~ 0
A1_A2
Text Label 1650 3450 0    60   ~ 0
A1_A1
Text Label 1650 3350 0    60   ~ 0
A1_A0
Text Label 1650 3250 0    60   ~ 0
A1_P13
Text Label 1650 3150 0    60   ~ 0
A1_P12
Text Label 1650 3050 0    60   ~ 0
A1_P11
Text Label 1650 2950 0    60   ~ 0
A1_P10
Text Label 1650 2850 0    60   ~ 0
A1_P9
Text Label 1650 2750 0    60   ~ 0
A1_P8
Text Label 1650 2650 0    60   ~ 0
A1_HEARTBEAT
Text Label 1650 2550 0    60   ~ 0
A1_EXP_TRIGGER_OFF
Text Label 1650 2450 0    60   ~ 0
A1_EXP_TRIGGER_ON
Text Label 1650 2350 0    60   ~ 0
A1_POWER_SR_L
Text Label 1650 2250 0    60   ~ 0
A1_POWER_SR_C
Text Label 1650 2150 0    60   ~ 0
A1_POWER_SR_D
Text Label 1650 2050 0    60   ~ 0
A1_TXi
Text Label 1650 1950 0    60   ~ 0
A1_RXi
Text Label 1650 1850 0    60   ~ 0
A1_GND
Text Label 1650 1750 0    60   ~ 0
A1_RST
Text Label 1650 1650 0    60   ~ 0
A1_5v
Text Label 5100 4800 0    40   ~ 0
~TAKEOVER
Text Label 9250 6100 0    40   ~ 0
~TAKEOVER
Text Label 5950 5750 0    40   ~ 0
A2_CONTROL_SR_D
$Comp
L +5V #PWR053
U 1 1 4A202BC1
P 6450 6050
F 0 "#PWR053" H 6450 6140 20  0001 C CNN
F 1 "+5V" H 6450 6140 30  0000 C CNN
	1    6450 6050
	1    0    0    -1  
$EndComp
NoConn ~ 6550 6450
NoConn ~ 6550 6350
$Comp
L +5V #PWR054
U 1 1 4A202B32
P 6950 5550
F 0 "#PWR054" H 6950 5640 20  0001 C CNN
F 1 "+5V" H 6950 5640 30  0000 C CNN
	1    6950 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR055
U 1 1 4A202B30
P 6950 6650
F 0 "#PWR055" H 6950 6650 30  0001 C CNN
F 1 "GND" H 6950 6580 30  0001 C CNN
	1    6950 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 4A202B1F
P 10300 6850
F 0 "#PWR056" H 10300 6850 30  0001 C CNN
F 1 "GND" H 10300 6780 30  0001 C CNN
	1    10300 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR057
U 1 1 4A202B1E
P 10300 6250
F 0 "#PWR057" H 10300 6250 30  0001 C CNN
F 1 "GND" H 10300 6180 30  0001 C CNN
	1    10300 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR058
U 1 1 4A202B12
P 10300 5650
F 0 "#PWR058" H 10300 5650 30  0001 C CNN
F 1 "GND" H 10300 5580 30  0001 C CNN
	1    10300 5650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR059
U 1 1 4A202B02
P 10300 6450
F 0 "#PWR059" H 10300 6540 20  0001 C CNN
F 1 "+5V" H 10300 6540 30  0000 C CNN
	1    10300 6450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR060
U 1 1 4A202B00
P 10300 5850
F 0 "#PWR060" H 10300 5940 20  0001 C CNN
F 1 "+5V" H 10300 5940 30  0000 C CNN
	1    10300 5850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR061
U 1 1 4A202AFC
P 10300 5250
F 0 "#PWR061" H 10300 5340 20  0001 C CNN
F 1 "+5V" H 10300 5340 30  0000 C CNN
	1    10300 5250
	1    0    0    -1  
$EndComp
Text Label 10550 6650 0    40   ~ 0
CODE_O_7
Text Label 9700 6650 0    40   ~ 0
CODE_I_7
$Comp
L 7404 U8
U 4 1 4A202AC8
P 10300 6650
F 0 "U8" H 10400 6850 60  0000 C CNN
F 1 "MM74HC04M" H 10750 6750 60  0000 C CNN
	4    10300 6650
	1    0    0    -1  
$EndComp
Text Label 10550 6050 0    40   ~ 0
CODE_O_4
Text Label 9700 6050 0    40   ~ 0
CODE_I_4
$Comp
L 7404 U8
U 3 1 4A202AC2
P 10300 6050
F 0 "U8" H 10400 6250 60  0000 C CNN
F 1 "MM74HC04M" H 10750 6150 60  0000 C CNN
	3    10300 6050
	1    0    0    -1  
$EndComp
Text Label 10550 5450 0    40   ~ 0
CODE_O_3
Text Label 9700 5450 0    40   ~ 0
CODE_I_3
$Comp
L 7404 U8
U 2 1 4A202A20
P 10300 5450
F 0 "U8" H 10400 5650 60  0000 C CNN
F 1 "MM74HC04M" H 10750 5550 60  0000 C CNN
	2    10300 5450
	1    0    0    -1  
$EndComp
Text Label 7800 6450 0    40   ~ 0
CODE_O_8
Text Label 7800 6350 0    40   ~ 0
CODE_O_7
Text Label 7800 6250 0    40   ~ 0
CODE_O_6
Text Label 7800 6150 0    40   ~ 0
CODE_O_5
Text Label 7800 6050 0    40   ~ 0
CODE_O_4
Text Label 7800 5950 0    40   ~ 0
CODE_O_3
Text Label 7800 5850 0    40   ~ 0
CODE_O_1
Text Label 7800 5750 0    40   ~ 0
CODE_O_0
Text Label 7350 6450 0    40   ~ 0
CODE_I_8
Text Label 7350 6350 0    40   ~ 0
CODE_I_7
Text Label 7350 6250 0    40   ~ 0
CODE_I_6
Text Label 7350 6150 0    40   ~ 0
CODE_I_5
Text Label 7350 6050 0    40   ~ 0
CODE_I_4
Text Label 7350 5950 0    40   ~ 0
CODE_I_3
Text Label 7350 5850 0    40   ~ 0
CODE_I_1
Text Label 7350 5750 0    40   ~ 0
CODE_I_0
$Comp
L 74HC4094 #U062
U 1 1 4A202901
P 6950 6100
F 0 "#U062" H 6700 6600 60  0001 C CNN
F 1 "74HC4094" H 7250 5600 60  0000 C CNN
	1    6950 6100
	1    0    0    -1  
$EndComp
$Comp
L 40257 U5
U 1 1 4A201893
P 5400 4000
F 0 "U5" H 5150 4650 60  0000 C CNN
F 1 "CD40257BMG4" H 5600 4650 60  0000 C CNN
	1    5400 4000
	1    0    0    -1  
$EndComp
$Comp
L 40257 U4
U 1 1 4A20187A
P 5400 2650
F 0 "U4" H 5150 3300 60  0000 C CNN
F 1 "CD40257BMG4" H 5600 3300 60  0000 C CNN
	1    5400 2650
	1    0    0    -1  
$EndComp
Text Label 1650 6100 0    60   ~ 0
A2_A2
Text Label 1650 6000 0    60   ~ 0
A2_A1
Text Label 1650 5900 0    60   ~ 0
A2_A0
Text Label 1650 5800 0    60   ~ 0
A2_P13
Text Label 1650 5700 0    60   ~ 0
A2_P12
Text Label 1650 5600 0    60   ~ 0
A2_CONTROL_SR_C
Text Label 1650 5500 0    60   ~ 0
A2_CONTROL_SR_D
Text Label 1650 5400 0    60   ~ 0
A2_TAKEOVER_CHECK
Text Label 1650 5300 0    60   ~ 0
A2_RST_REQ
Text Label 1650 5200 0    60   ~ 0
A2_P7
Text Label 1650 5100 0    60   ~ 0
A2_EXP_TRIGGER_OFF
Text Label 1650 5000 0    60   ~ 0
A2_EXP_TRIGGER_ON
Text Label 1650 4900 0    60   ~ 0
A2_POWER_SR_L
Text Label 1650 4800 0    60   ~ 0
A2_POWER_SR_C
Text Label 1650 4700 0    60   ~ 0
A2_POWER_SR_D
Text Label 1650 4600 0    60   ~ 0
A2_TXi
Text Label 1650 4500 0    60   ~ 0
A2_RXi
Text Label 1650 4400 0    60   ~ 0
A2_GND
Text Label 1650 4300 0    60   ~ 0
A2_RST
Text Label 1650 4200 0    60   ~ 0
A2_5v
$EndSCHEMATC
