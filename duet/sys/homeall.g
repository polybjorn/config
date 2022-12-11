; /opt/dsf/sd/sys/homeall.g

M280 P0 S160            ; Precautionary alarm release
M280 P0 S90             ; Ensure the pin is raised

G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z

G1 H1 X-260 F1800       ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X5 F6000          ; go back a few mm
G1 H1 X-260 F360        ; move slowly to X axis endstop once more (second pass)

M400

G1 H1 Y303 F1800        ; move quickly to Y axis endstop and stop there (first pass)
G1 H2 Y5 F6000          ; go back a few mm
G1 H1 X-5
M400
G1 H1 Y303 F360         ; move slowly to Y axis endstop once more (second pass)

G90                     ; Absolute positioning
G1 X90 Y140 F3600       ; Go to the center
G30                     ; Home Z by probing the bed

G91                     ; Relative positioning
G1 Z5 F6000             ; Lift Z
G90                     ; Absolute positioning