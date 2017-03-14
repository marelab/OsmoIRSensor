EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:marelab
LIBS:OsmoIRSensor-cache
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
L ATTINY45-S U1
U 1 1 58C3B07D
P 3550 3250
F 0 "U1" H 2400 3650 50  0000 C CNN
F 1 "ATTINY45-S" H 4550 2850 50  0000 C CNN
F 2 "marelab:SOIC-8" H 4500 3250 50  0001 C CIN
F 3 "" H 3550 3250 50  0000 C CNN
F 4 "Value" H 3550 3250 60  0001 C CNN "man#"
	1    3550 3250
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58C3B236
P 6400 3675
F 0 "R4" V 6480 3675 50  0000 C CNN
F 1 "10K" V 6400 3675 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6330 3675 50  0001 C CNN
F 3 "" H 6400 3675 50  0000 C CNN
F 4 "Value" H 6400 3675 60  0001 C CNN "man#"
	1    6400 3675
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58C3B37A
P 8625 2650
F 0 "R3" V 8705 2650 50  0000 C CNN
F 1 "422R" V 8625 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8555 2650 50  0001 C CNN
F 3 "" H 8625 2650 50  0000 C CNN
F 4 "Value" H 8625 2650 60  0001 C CNN "man#"
	1    8625 2650
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58C3B3AD
P 7050 3000
F 0 "R2" V 7130 3000 50  0000 C CNN
F 1 "4K7" V 7050 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6980 3000 50  0001 C CNN
F 3 "" H 7050 3000 50  0000 C CNN
F 4 "Value" H 7050 3000 60  0001 C CNN "man#"
	1    7050 3000
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 58C3B3F7
P 6825 3475
F 0 "R1" V 6905 3475 50  0000 C CNN
F 1 "220R" V 6825 3475 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6755 3475 50  0001 C CNN
F 3 "" H 6825 3475 50  0000 C CNN
F 4 "Value" H 6825 3475 60  0001 C CNN "man#"
	1    6825 3475
	1    0    0    -1  
$EndComp
$Comp
L Resonator X1
U 1 1 58C3B452
P 5400 3700
F 0 "X1" H 5400 3825 50  0000 C CNN
F 1 "20MHz" H 5575 3475 50  0000 C CNN
F 2 "marelab:RESONATOR" H 5375 3700 50  0001 C CNN
F 3 "" H 5375 3700 50  0000 C CNN
F 4 "Value" H 5400 3700 60  0001 C CNN "man#"
	1    5400 3700
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 58C3B4BD
P 6825 3850
F 0 "D1" H 6825 3950 50  0000 C CNN
F 1 "LED PWR" V 6825 3600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 6825 3850 50  0001 C CNN
F 3 "" H 6825 3850 50  0000 C CNN
F 4 "Value" H 6825 3850 60  0001 C CNN "man#"
	1    6825 3850
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 58C3B51C
P 8625 3050
F 0 "D2" H 8625 3150 50  0000 C CNN
F 1 "LED IR" V 8625 2800 50  0000 C CNN
F 2 "LEDs:LED_PLCC-2" H 8625 3050 50  0001 C CNN
F 3 "" H 8625 3050 50  0000 C CNN
F 4 "Value" H 8625 3050 60  0001 C CNN "man#"
	1    8625 3050
	0    1    -1   0   
$EndComp
$Comp
L TSOP75436WTR U2
U 1 1 58C3BD94
P 9050 2950
F 0 "U2" H 7900 3150 50  0000 C CNN
F 1 "TSOP75436WTR" H 8025 2525 50  0000 C CNN
F 2 "marelab:SMD-IR" H 8050 2650 50  0001 C CIN
F 3 "" H 9050 2950 50  0000 C CNN
F 4 "Value" H 9050 2950 60  0001 C CNN "man#"
	1    9050 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03_PCB_DIRECT J2
U 1 1 58C3CA64
P 6100 1900
F 0 "J2" H 6100 2100 50  0000 C CNN
F 1 "CONN_02X03_PCB_DIRECT" H 6100 2200 50  0000 C CNN
F 2 "marelab:CON3x2PCB" H 6100 1675 50  0001 C CNN
F 3 "" H 6100 700 50  0000 C CNN
F 4 "Value" H 6100 1900 60  0001 C CNN "man#"
	1    6100 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2000 6400 2000
Wire Wire Line
	6400 2000 6400 3525
Wire Wire Line
	6400 3500 4900 3500
$Comp
L +5V #PWR01
U 1 1 58C3D1C1
P 6400 3875
F 0 "#PWR01" H 6400 3725 50  0001 C CNN
F 1 "+5V" H 6400 4015 50  0000 C CNN
F 2 "" H 6400 3875 50  0000 C CNN
F 3 "" H 6400 3875 50  0000 C CNN
	1    6400 3875
	-1   0    0    1   
$EndComp
Connection ~ 6400 3500
Wire Wire Line
	6400 3875 6400 3825
Wire Wire Line
	4900 3400 5200 3400
Wire Wire Line
	5200 3400 5200 3700
Wire Wire Line
	5200 3700 5250 3700
Wire Wire Line
	4900 3300 5600 3300
Wire Wire Line
	5600 3300 5600 3700
Wire Wire Line
	5600 3700 5550 3700
$Comp
L GND #PWR02
U 1 1 58C3D3D9
P 5400 3975
F 0 "#PWR02" H 5400 3725 50  0001 C CNN
F 1 "GND" H 5400 3825 50  0000 C CNN
F 2 "" H 5400 3975 50  0000 C CNN
F 3 "" H 5400 3975 50  0000 C CNN
	1    5400 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3900 5400 3975
Wire Wire Line
	4900 3200 6825 3200
Wire Wire Line
	5725 3200 5725 2000
Wire Wire Line
	5725 2000 5850 2000
Wire Wire Line
	4900 3100 6500 3100
Wire Wire Line
	6500 3100 6500 1900
Wire Wire Line
	6350 1900 8625 1900
Wire Wire Line
	6600 3000 6600 1800
Wire Wire Line
	6600 1800 6350 1800
$Comp
L GND #PWR03
U 1 1 58C3D47B
P 5450 2025
F 0 "#PWR03" H 5450 1775 50  0001 C CNN
F 1 "GND" H 5450 1875 50  0000 C CNN
F 2 "" H 5450 2025 50  0000 C CNN
F 3 "" H 5450 2025 50  0000 C CNN
	1    5450 2025
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 58C3D4B2
P 5200 2025
F 0 "#PWR04" H 5200 1875 50  0001 C CNN
F 1 "+5V" H 5200 2165 50  0000 C CNN
F 2 "" H 5200 2025 50  0000 C CNN
F 3 "" H 5200 2025 50  0000 C CNN
	1    5200 2025
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 2025 5450 1900
Wire Wire Line
	5450 1900 5850 1900
Wire Wire Line
	5200 2025 5200 1800
Wire Wire Line
	5200 1800 5850 1800
Connection ~ 6600 3000
Wire Wire Line
	7200 3000 7700 3000
$Comp
L GND #PWR05
U 1 1 58C3D72C
P 7575 3500
F 0 "#PWR05" H 7575 3250 50  0001 C CNN
F 1 "GND" H 7575 3350 50  0000 C CNN
F 2 "" H 7575 3500 50  0000 C CNN
F 3 "" H 7575 3500 50  0000 C CNN
	1    7575 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3200 7575 3200
Wire Wire Line
	7575 2900 7575 3500
Wire Wire Line
	7700 2900 7575 2900
Connection ~ 7575 3200
$Comp
L C_Small C1
U 1 1 58C3D85B
P 7375 3300
F 0 "C1" H 7385 3370 50  0000 L CNN
F 1 "22nF" H 7385 3220 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7375 3300 50  0001 C CNN
F 3 "" H 7375 3300 50  0000 C CNN
F 4 "Value" H 7375 3300 60  0001 C CNN "man#"
	1    7375 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7375 3400 7375 3450
Wire Wire Line
	7375 3450 7575 3450
Connection ~ 7575 3450
Wire Wire Line
	7200 3100 7700 3100
Wire Wire Line
	7375 3100 7375 3200
$Comp
L +5V #PWR06
U 1 1 58C3D928
P 7200 3525
F 0 "#PWR06" H 7200 3375 50  0001 C CNN
F 1 "+5V" H 7200 3665 50  0000 C CNN
F 2 "" H 7200 3525 50  0000 C CNN
F 3 "" H 7200 3525 50  0000 C CNN
	1    7200 3525
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 3000 6900 3000
Wire Wire Line
	7200 3100 7200 3525
Connection ~ 7375 3100
Wire Wire Line
	8625 2800 8625 2900
$Comp
L GND #PWR07
U 1 1 58C3DFF0
P 8625 3500
F 0 "#PWR07" H 8625 3250 50  0001 C CNN
F 1 "GND" H 8625 3350 50  0000 C CNN
F 2 "" H 8625 3500 50  0000 C CNN
F 3 "" H 8625 3500 50  0000 C CNN
	1    8625 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8625 3200 8625 3500
Wire Wire Line
	8625 1900 8625 2500
Connection ~ 6500 1900
Wire Wire Line
	6825 3200 6825 3325
Connection ~ 5725 3200
Wire Wire Line
	6825 3625 6825 3700
$Comp
L GND #PWR08
U 1 1 58C3E4AB
P 6825 4050
F 0 "#PWR08" H 6825 3800 50  0001 C CNN
F 1 "GND" H 6825 3900 50  0000 C CNN
F 2 "" H 6825 4050 50  0000 C CNN
F 3 "" H 6825 4050 50  0000 C CNN
	1    6825 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 4000 6825 4050
Text Notes 7375 7500 0    60   ~ 0
Waterproof OsmoIRSensor 
Text Notes 5750 1525 0    60   ~ 0
1.) VCC\n2.) MOSI / IR Out\n3.) GND\n4.) MISO / IR LED\n5.) SCK / SensorOut /LED\n6.) RESET
$Comp
L GND #PWR09
U 1 1 58C3F6D4
P 2025 3650
F 0 "#PWR09" H 2025 3400 50  0001 C CNN
F 1 "GND" H 2025 3500 50  0000 C CNN
F 2 "" H 2025 3650 50  0000 C CNN
F 3 "" H 2025 3650 50  0000 C CNN
	1    2025 3650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 58C3F700
P 2025 3075
F 0 "#PWR010" H 2025 2925 50  0001 C CNN
F 1 "+5V" H 2025 3215 50  0000 C CNN
F 2 "" H 2025 3075 50  0000 C CNN
F 3 "" H 2025 3075 50  0000 C CNN
	1    2025 3075
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 3000 2025 3000
Wire Wire Line
	2025 3000 2025 3075
Wire Wire Line
	2200 3500 2025 3500
Wire Wire Line
	2025 3500 2025 3650
Text Notes 1900 1175 0    60   ~ 0
The IR-DEV Version connects all Pins of J2 to the outside. That makes it possible to reprogramm or analyze the ATTINY or signals. The consumer version just needs 3 pins connected to the outside\n\nPIN1 +5V\nPIN3 GND\nPIN5 SensorOut
$EndSCHEMATC