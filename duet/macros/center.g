; /opt/dsf/sd/macros/center.g

; Safety measure
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28

; Move
G90                     ; absolute positioning
G1 X85 Y125 F3600       ; move to center

