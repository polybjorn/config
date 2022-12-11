; /opt/dsf/sd/sys/homez.g

; BLTouch
M280 P0 S160            ; Precautionary alarm release
M280 P0 S90             ; Ensure the pin is raised

G91                     ; Relative positioning
G1 H2 Z5 F6000          ; lift Z

G90                     ; Absolute positioning
G1 X90 Y130 F3600       ; Go to the center
G30                     ; Home Z by probing the bed

G91                     ; Relative positioning
G1 Z5 F6000             ; Lift Z
G90                     ; Absolute positioning

