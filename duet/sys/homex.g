M400                    ; Wait for current moves to finish
M913 X40 Y40            ; drop motor current to 40%
M400
G91                     ; relative positioning
G1 H2 Z10 F3600         ; lift Z relative to current position
G1 H1 X-320.5 F3600     ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X5 F3600          ; go back a few mm
G1 H1 X-320.5 F3600     ; move slowly to X axis endstop once more (second pass)
G1 H2 Z-10 F3600        ; lower Z again
G90                     ; absolute positioning
M400
M913 X100 Y100          ; return current to 100%
M400