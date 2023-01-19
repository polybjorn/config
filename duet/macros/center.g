; /opt/dsf/sd/macros/center.g

; Intro
G91                     ; relative positioning
G1 H2 Z5 F6000          ; lower heated bed

; Move
G90                     ; absolute positioning
G1 X90 Y130 F3600       ; move to center

; Outro
G91                     ; relative positioning
G1 Z-5 F6000            ; raise heated bed
G90                     ; absolute positioning

