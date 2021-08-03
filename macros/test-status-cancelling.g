; home all axis
G28
G92 X0 Y0 Z0

; start sleep job
M32 "0:/gcodes/sleep-job.gcode"

; wait 5s
G4 S5

; cancel job
M25
M0
