G28                         ; home

G30 P0 X271 Y5 Z-99999      ; probe near a leadscrew
G30 P1 X46 Y130 Z-99999     ; probe near a leadscrew
G30 P2 X271 Y290 Z-99999 S3 ; probe near a leadscrew and calibrate 3 motors

G90                         ; Absolute positioning
G1 X90 Y130 F10000          ; Go to the center of the bed
G30                         ; Home Z by probing the bed

