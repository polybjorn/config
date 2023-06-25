; /opt/dsf/sd/sys/pause.g

; Filament standby
M83                     ; relative extruder moves
G1 E-1 F600             ; retract filament

; Move extruder to safe distance
G91                     ; relative positioning
G1 Z10 F6000            ; lower heated bed
G90                     ; absolute positioning
G1 X0 Y175 F10000       ; move away

