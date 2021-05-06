; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Thu May 06 2021 15:02:27 GMT+0200 (Mitteleuropäische Sommerzeit)
G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z relative to current position
G1 H1 X-225 Y-225 F1800 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X5 Y5 F6000       ; go back a few mm
G1 H1 X-225 Y-225 F360  ; move slowly to X and Y axis endstops once more (second pass)
G1 H1 Z-305 F360        ; move Z down stopping at the endstop
G90                     ; absolute positioning
G92 Z0                  ; set Z position to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F100             ; lift Z relative to current position
;G90                    ; absolute positioning


