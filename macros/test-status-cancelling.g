; home all axis
G28

; start sleep job
M32 P"0:/gcodes/sleep-job.gcode"

; wait 5s
G4 S5

; cancel job
M112
