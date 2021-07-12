; filament_load.g
; called to load filament
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed ; not all axes are homed
  G28                                                                ; home all
G90                 ; absolute positioning

G91             ; relative positioning
G1 Z10 F1500 H2 ; lift Z axis by 10mm

G90                 ; absolute positioning
;M116        	    ; wait for the temperatures to be reached
M300 S300 P1000     ; beep sound when temperature is reached

M291 P"Do you want to load FILAMENT now? Press OK to continue or CANCEL to abort!" S3 ; requires user input to start the filament loading procedure
M291 P"Loading FILAMENT..." S1 T60                                                    ; message confirming that filament is being loaded
G1 Z50
M400                ; wait for current moves to finish

M83                 ; set extruder to relative mode
;G1 E80 F400	        ; feed 80mm of filament fast
;G1 E50 F100	        ; feed 50mm of filament slow
M400                ; wait for current moves to finish
;M292                ; clear messages
