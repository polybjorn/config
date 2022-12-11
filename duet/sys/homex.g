; /opt/dsf/sd/sys/homex.g

G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z

G1 H1 X-260 F1800       ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X5 F6000          ; go back a few mm
G1 H1 X-260 F360        ; move slowly to X axis endstop once more (second pass)

G1 H2 Z-5 F6000         ; lower Z
G90                     ; absolute positioning

