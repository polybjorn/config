; /opt/dsf/sd/sys/homeall.g

; Intro
M280 P0 S160            ; alarm release and push pin up (BLTouch)
M280 P0 S90             ; retract probe (BLTouch V3.1)
G91                     ; relative positioning
G1 H2 Z10 F6000         ; lower heated bed

; Home XYZ axis
G1 H1 X-260 F1800       ; home X axis, first pass, low endstop
G1 H2 X5 F6000          ; reverse X axis
G1 H1 X-260 F360        ; home X axis, second pass, low endstop
M400                    ; flush moves
G1 H1 Y303 F1800        ; home Y axis, first pass, high endstop
G1 H2 Y5 F6000          ; reverse XY axis
G1 H1 X-5               ; ..
M400                    ; flush moves
G1 H1 Y303 F360         ; home Y axis, second pass, high endstop
M400                    ; flush moves
G90                     ; absolute positioning
G1 X90 Y130 F3600       ; go to center
G30                     ; Z-probe

; Outro
G91                     ; relative positioning
G1 Z-30 F6000           ; raise heated bed
G90                     ; absolute positioning

