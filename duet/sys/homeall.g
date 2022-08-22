M201 X500.00 Y500.00    ; Reduce acceleration for homing moves

; BLTouch
M280 P0 S160            ; Precautionary alarm release
M280 P0 S90             ; Ensure the pin is raised

M400                    ; waiting for previous action to finish
M913 X70 Y70            ; drop motor current to 70%
M400                    ; waiting for previous action to finish

G91                     ; Relative positioning
G1 H2 Z5 F3600          ; Lift Z relative to current position
G1 H1 X-320.5 F3600     ; Move quickly to X and Y axis endstops and stop there (first pass)
G1 H1 Y-320.5 F3600     ; Move quickly to X and Y axis endstops and stop there (first pass)

G1 H2 X5 Y5 F600        ; Go back a few mm

G1 H1 X-320.5 F3600     ; Move slowly to X and Y axis endstops once more (second pass)
G1 H1 Y-320.5 F3600     ; Move slowly to X and Y axis endstops once more (second pass)

M400                    ; waiting for previous action to finish
M913 X100 Y100          ; return current to 100%
M400                    ; waiting for previous action to finish

M201 X3000 Y3000        ; Return to full acceleration

G90                     ; Absolute positioning
G1 X140 Y90 F3600       ; Go to the center of the bed (300x300)
G30                     ; Home Z by probing the bed

G91                     ; Relative positioning
G1 Z5 F100              ; Lift Z relative to current position
G90                     ; Absolute positioning
