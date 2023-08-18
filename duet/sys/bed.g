; /opt/dsf/sd/sys/bed.g

if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28

G30 P0 X270.06 Y29.335 Z-99999     ; probe left leadscrew
G30 P1 X35.06 Y129.335 Z-99999     ; probe rear leadscrew
G30 P2 X270.06 Y314.335 Z-99999 S3 ; probe right leadscrew and level bed

G90                                ; absolute positioning
G1 X85 Y150 F10000                 ; go to center
G30                                ; probe center

