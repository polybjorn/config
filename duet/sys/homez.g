M280 P0 S160            ; Precautionary alarm release
M280 P0 S90             ; Ensure the pin is raised

G91                     ; Relative positioning
G1 H2 Z5 F6000          ; Lift Z relative to current position

G90                     ; Absolute positioning
G1 X140 Y90 F10000      ; Go to the center of the bed
G30                     ; Home Z by probing the bed

G91                     ; Relative positioning
G1 Z5 F100              ; Lift Z relative to current position
G90                     ; Absolute positioning