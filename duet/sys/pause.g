; /opt/dsf/sd/sys/pause.g

; Filament standby
M83                     ; relative extruder moves
G1 E-2 F1800            ; retract 2mm of filament at 1200mm/min

; Move extruder to safe distance
G91                     ; relative positioning
G1 Z5 F6000             ; lower heated bed
G90                     ; absolute positioning
G1 X0 Y125 F6000        ; move away

