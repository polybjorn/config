M402   ; run ~/sys/retractprobe.g macro

if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28

G92 E0 ; reset extruder position