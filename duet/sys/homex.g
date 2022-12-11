; /opt/dsf/sd/sys/homex.g

G91                     ; relative positioning
G1 H2 Z10 F6000         ; lower heated bed

- - - Home X axis start - - -

G1 H1 X-260 F1800       ; home X axis, first pass, low endstop
G1 H2 X5 F6000          ; reverse X axis
G1 H1 X-260 F360        ; home X axis, second pass, low endstop

- - - Home X axis stop - - -

G1 H2 Z-5 F6000         ; raise heated bed
G90                     ; absolute positioning

