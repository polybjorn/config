M291 P"loading config.g for PLA" R"Loading config" S1 T2
M302 S185 R90                ; set cold extrude and retract temperatures
set global.BedPreheatTemp=60 ; set be preheat variable
; M592 D0:1 A0.012 B0        ; set non linear extrusion
M572 D0 S0.045               ; set pressure advance
M207 S0.3 F2400 Z0	         ; set retraction
; M593 F25                   ; cancel ringing at 25Hz