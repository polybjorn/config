; /opt/dsf/sd/sys/stop.g

; Filament standby
M83                     ; relative extruder moves
G1 E-1 F300             ; retract filament
G92 E0                  ; zero the extruder

; Move extruder to safe distance
G91                     ; relative positioning
G1 Z10 F6000            ; lower heated bed
G90                     ; absolute positioning
G1 X0 Y175 F10000       ; move away

; Turn off
M400              ; flush moves
M84               ; stop idle hold
M104 S0           ; turn off hotend
M140 S-273.1      ; turn off heated bed
M106 P0 S1 T45    ; layer fan speed