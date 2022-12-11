; /opt/dsf/sd/sys/homez.g

; Intro
M280 P0 S160            ; release alarm and retract probe (BLTouch V3.1)
M280 P0 S90             ; retract probe (BLTouch V3.1)
G91                     ; relative positioning
G1 H2 Z10 F6000         ; lower heated bed

; Home Z axis
G90                     ; absolute positioning
G1 X90 Y130 F3600       ; go to center
G30                     ; Z-probe

; Outro
G91                     ; relative positioning
G1 Z-5 F6000            ; raise heated bed
G90                     ; absolute positioning

