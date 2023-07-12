; 0:/filaments/PVB/unload.g

M291 P"Nozzle is heating up" R"Unloading PVB" T5   ; Display message
G10 S210                                           ; Heat up the current tool to 210C
M116                                               ; Wait for the temperatures to be reached
M291 P"Retracting filament..." R"Unloading PVB" T5 ; Display another message
G1 E-20 F300                                       ; Retract 20mm of filament at 300mm/min
G1 E-80 F600                                       ; Retract 80mm of filament at 600mm/min
M400                                               ; Wait for the moves to finish
M292                                               ; Hide the message again
M84 E0:1                                           ; Turn off extruder drives 1 and 2

