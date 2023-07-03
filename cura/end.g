; Move away
G91               ; relative positioning
G1 H2 Z2 F6000    ; lower heated bed
G92 E0            ; zero the extruder
G1 E-2 F600       ; retract 1mm of filament at 600mm/min
G90               ; absolute positioning
G1 X5 Y175 F10000 ; move away

; Turn off
M400              ; flush moves
M84               ; stop idle hold
M104 S0           ; turn off hotend
M140 S-273.1      ; turn off heated bed
M106 P0 S1 T45    ; cooling fan speed