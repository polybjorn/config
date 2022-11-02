; M561                        clear any bed transform
G28                         ; home

G30 P0 X0 Y260 Z-99999      ; probe near a leadscrew
G30 P1 X125 Y45 Z-99999     ; probe near a leadscrew - old Y45
G30 P2 X280 Y260 Z-99999 S3 ; probe near a leadscrew and calibrate 3 motors

G90                         ; Absolute positioning
G1 X140 Y90 F10000          ; Go to the center of the bed
G30                         ; Home Z by probing the bed