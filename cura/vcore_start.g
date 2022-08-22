G28                    ;run homeall.g
G90                    ;set to absolute positioning
G1 Z10                 ;move Z to +10mm

M104 S220              ;set extruder temperature 220C (25-220 in 2m16s)
G4 P130000             ;dwell for 130 seconds
M140 S60               ;set bed temperature 60C (25-60 in 46s)

G1 X0 Y0 F15000        ;go home
G1 Z0.2                ;move Z to +0.2mm
G1 Y80.0 E24 F1200     ;print a 80mm intro line
G4 P5000               ;cool to break of filament
G1 Z10                 ;move Z to +10mm

G1 X140.0 Y90.0 F15000 ;go to center