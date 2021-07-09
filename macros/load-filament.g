; Load filament script for F410
; For Fusion3 F410
; Revision 2021.02.12

; reset filament monitor
M42 P1 S0           ; set pin exp.e5stop LOW
G4 P100             ; wait 100ms
M42 P1 S1           ; set pin exp.e5stop HIGH
;
M291 P"Heating Print Head, Please Wait..." T0 S1
M83					; extruder in relative mode
T0					; select tool 0
M104 S260			; set extruder temperature and do not wait
G91					; relative mode
G1 Z50 F500 H4		; move Z axis down 50mm, check for endstop activation while moving
G90					; absolute mode
M83					; relative extruder
M109 S260			; set extruder temp and wait
M291 P"Loading Filament, Please Wait..." T0 S1
; reset filament monitor
M42 P1 S0           ; set pin exp.e5stop LOW    |
G4 P100             ; wait 100ms        |- This resets the filament monitor
M42 P1 S1           ; set pin exp.e5stop HIGH
;
G1 E1 F200			; soft start
G1 E650 F1000		; rapid feed
G1 E250 F200		; slow filament feed
G1 E-5 F600			; retract to prevent oozing
G4 P50				; Pause command to keep M104 from turning off the heater
M104 S0				; shut off extruder heater
M84	Z E				; disable z axis & extruder, since unload is never run during a print this is safe

M291 P"Load Filament Complete!" T0 S1

; reset filament monitor
M42 P1 S0           ; set pin exp.e5stop LOW    |
G4 P100             ; wait 100ms        |- This resets the filament monitor
M42 P1 S1           ; set pin exp.e5stop HIGH
;