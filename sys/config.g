; Configuration file for Duet 3 Mini 5+ (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Thu May 06 2021 15:02:27 GMT+0200 (Mitteleuropäische Sommerzeit)

; General preferences
G90                                          ; send absolute coordinates...
M83                                          ; ...but relative extruder moves
M550 P"endocrine-wifi"                       ; set printer name

; Network
M552 S1                                      ; enable network
M586 P0 S1                                   ; enable HTTP
M586 P1 S0                                   ; disable FTP
M586 P2 S0                                   ; disable Telnet

; Drives
M569 P0.0 S1                                 ; physical drive 0.0 goes forwards
M569 P0.1 S1                                 ; physical drive 0.1 goes forwards
M569 P0.2 S0                                 ; physical drive 0.2 goes backwards
M569 P0.3 S0                                 ; physical drive 0.3 goes backwards
M584 X0.0 Y0.1 Z0.2 E0.3                     ; set drive mapping
M350 X16 Y16 Z16 E16 I1                      ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z800.00 E93.00             ; set steps per mm
M566 X900.00 Y900.00 Z60.00 E300.00          ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z600.00 E3600.00      ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z100.00 E5000.00        ; set accelerations (mm/s^2)
M906 X600 Y600 Z600 E800 I30                 ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                      ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                             ; set axis minima
M208 X220 Y220 Z300 S0                       ; set axis maxima

; Endstops
M574 X1 S1 P"io5.in"                         ; configure active-high endstop for low end on X via pin io5.in
M574 Y1 S1 P"io6.in"                         ; configure active-high endstop for low end on Y via pin io6.in
M574 Z1 S1 P"io2.in"                         ; configure active-high endstop for low end on Z via pin io2.in

; Z-Probe
M558 P0 H5 F120 T6000                        ; disable Z probe but set dive height, probe speed and travel speed
M557 X15:215 Y15:195 S20                     ; define mesh grid

; Heaters
M308 S0 P"temp0" Y"thermistor" T100000 B4138 ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out0" T0                           ; create bed heater output on out0 and map it to sensor 0
M307 H0 B0 S1.00                             ; disable bang-bang mode for the bed heater and set PWM limit
M307 H0 R0.277 C451.8 D23.8 I0 B0 V23.8      ; configure model for bed heater
M140 H0                                      ; map heated bed to heater 0
M143 H0 S80                                  ; set temperature limit for heater 0 to 80C

M308 S1 P"temp1" Y"thermistor" T100000 B4138 ; configure sensor 1 as thermistor on pin temp1
M950 H1 C"out1" T1                           ; create nozzle heater output on out1 and map it to sensor 1
M307 H1 B0 S1.00                             ; disable bang-bang mode for heater  and set PWM limit
M143 H1 S250                                 ; set temperature limit for heater 1 to 250C

M308 S2 P"temp1" Y"thermistor" T100000 B4138 ; configure sensor 2 as thermistor on pin temp2
M950 H2 C"out1" T2                           ; create nozzle heater output on out1 and map it to sensor 1
M307 H2 B0 S1.00                             ; disable bang-bang mode for heater  and set PWM limit
M143 H2 S250                                 ; set temperature limit for heater 1 to 250C

; Ventiladores
M950 F0 C"fan0" Q500 T1:2			; Crear el ventilador 0 en el pin fan0 y establecer su frecuencia
M106 P0 S1 T45 H1 C"Fan Tool"			; Ponga el nombre y el valor del ventilador 0. El control termostatico esta activado

; Fans
M950 F0 C"out3" Q500                         ; create fan 0 on pin out3 and set its frequency
M106 P0 C"PartCool" S0 H1 T45                ; set fan 0 name and value. Thermostatic control is turned on
M950 F1 C"out4" Q500                         ; create fan 1 on pin out4 and set its frequency
M106 P1 C"HotEnd" S1 H1 T45                  ; set fan 1 name and value. Thermostatic control is turned on
M950 F2 C"out5" Q500                         ; create fan 2 on pin out5 and set its frequency
M106 P2 C"Case" S1 H-1                       ; set fan 2 name and value. Thermostatic control is turned off

; Tools
M563 P0 S"HotEnd" D0 H1 F0                   ; define tool 0
G10 P0 X0 Y0 Z0                              ; set tool 0 axis offsets
G10 P0 R0 S0                                 ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
M575 P1 S1 B57600                            ; enable support for PanelDue
M501                                         ; load saved parameters from non-volatile memory
T0                                           ; select first tool

M586 C"*"                                    ; CORS anfragen erlauben
