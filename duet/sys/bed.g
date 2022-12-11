; /opt/dsf/sd/sys/bed.g

G28                         ; home XYZ axis

G30 P0 X271 Y5 Z-99999      ; probe left leadscrew
G30 P1 X46 Y130 Z-99999     ; probe rear leadscrew
G30 P2 X271 Y290 Z-99999 S3 ; probe right leadscrew and level bed

G90                         ; absolute positioning
G1 X90 Y130 F10000          ; go to center
G30                         ; Z-probe

