;end.g

; Move away
G91               ; relative positioning
G1 H2 Z5 F6000    ; lower heated bed
G90               ; absolute positioning
G1 X90 Y130 F3600 ; move to center

; Turn off
M400              ; flush moves
M84               ; stop idle hold
M104 S0           ; turn off hotend
M140 S-273.1      ; turn off heated bed
M106 P0 S1 T45    ; cooling fan speed

