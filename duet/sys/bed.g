; /opt/dsf/sd/sys/bed.g

if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28

G30 P0 X245 Y3.616 Z-99999  ; probe left leadscrew
G30 P1 X0 Y153.616 Z-99999  ; probe rear leadscrew
G30 P2 X245 Y280.617 Z-99999 S3 ; probe right leadscrew and level bed

G90                         ; absolute positioning
G1 X100 Y175 F10000         ; go to center
G30                         ; Z-probe

