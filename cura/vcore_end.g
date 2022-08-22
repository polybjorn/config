M104 S0     ;set extruder temperature 0C
M140 S0     ;set bed temperature 0C

G92 E1      ;set new extruder position +1mm
G1 E-1 F300 ;retract filament 1mm

G28 X298 Y0 ;move extruder away
M84         ;stop idle hold