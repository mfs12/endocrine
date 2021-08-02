; start sleep job
M37 P"0:/gcodes/sleep-job.gcode"

; wait 5s
G4 S5

; cancel job
M112
