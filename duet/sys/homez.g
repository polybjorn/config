; /opt/dsf/sd/sys/homez.g

; Intro
M401                    ; run ~/sys/deployprobe.g macro
M402                    ; run ~/sys/retractprobe.g macro
G91                     ; relative positioning
G1 H2 Z5 F6000          ; lower heated bed

; Home Z axis
G90                     ; absolute positioning
G1 X85 Y150 F3600       ; move to center
G30                     ; Z-probe

; Outro
G91                     ; relative positioning
G1 Z5 F6000             ; lower heated bed
G90                     ; absolute positioning

