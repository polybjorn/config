; 0:/filaments/PLA/config.g

M291 P"loading config.g for PLA" R"Loading config" S1 T2
M302 S185 R90                ; Cold extrusion and retract temperature
set global.BedPreheatTemp=60 ; Heated bed preheat variable
M572 D0 S0.045               ; Pressure advance
M207 S0.3 F2400 Z0	         ; Retraction
; M307 (PID tuning)