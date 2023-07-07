M402   ; run ~/sys/retractprobe.g macro

if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28

G92 E0 ; reset extruder position

G1 X240 Y25 F6000      ; intro line location
G1 Z0.3
G1 Y25 E5 F1000        ; intro line 1
G1 Y50 E20 F1000       ; intro line 2

G92 E0 ; reset extruder position