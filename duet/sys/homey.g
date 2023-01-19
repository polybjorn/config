; /opt/dsf/sd/sys/homey.g

; Intro
G91                     ; relative positioning
G1 H2 Z5 F6000          ; lower heated bed

; Home Y axis
G1 H1 Y303 F1800        ; home Y axis, first pass, high endstop
G1 H2 Y5 F6000          ; reverse XY axis
G1 H1 X-5               ; ..
M400                    ; wait for previous moves
G1 H1 Y303 F360         ; home Y axis, second pass, high endstop

; Outro
G1 H2 Z-5 F6000         ; raise heated bed
G90                     ; absolute positioning

