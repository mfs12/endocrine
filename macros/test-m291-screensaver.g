M291 R"0. No buttons" P"0. No buttons are displayed (non-blocking)" S0
;M300 S300 P1000
G4 S5
M400
M291 R"1. Only Close" P"1. Only Close is displayed (non-blocking)" S1
;M300 S300 P1000
G4 S5
M400
M291 R"2. Only OK" P"2. Only OK is displayed (blocking, send M292 to resume the execution)" S2
;M300 S300 P1000
G4 S5
M400
M291 R"3. OK and Cancel" P"3. OK and Cancel are displayed (blocking, send M292 to resume the execution or M292 P1 to cancel the operation in progress)" S3
