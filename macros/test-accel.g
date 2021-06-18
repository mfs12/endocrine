; test command to instruct Accelerometer to collect data

; Accelerometer
M955 P0 C"io3.out+io3.in"                    ; configure chip select and interrrupt pin

;G1 X-50 G4 S2 M956 P124.0 S1000 A0 G4 P10 G1 X50 F20000
M956 P0 S10 A0                               ; start recording on Accelerometer 0, 10 Sample, immediately
