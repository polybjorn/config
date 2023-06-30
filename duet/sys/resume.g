; /opt/dsf/sd/sys/resume.g

; Reverse pause.g move
G1 R1 X0 Y0 Z5 F6000    ; move to above previous position
G1 R1 X0 Y0 Z0          ; move down to last print move

; Extrude
M83                     ; relative extruder moves
G1 E1 F600              ; extrude filament

