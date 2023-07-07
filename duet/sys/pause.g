; /opt/dsf/sd/sys/pause.g

; Filament standby
M83                     ; relative extruder moves
G1 E-3 F1200            ; retract 3mm of filament at 1200mm/min

; Move extruder to safe distance
G91                     ; relative positioning
G1 Z5 F6000             ; lower heated bed
G90                     ; absolute positioning
G1 X0 Y175 F6000        ; move away

