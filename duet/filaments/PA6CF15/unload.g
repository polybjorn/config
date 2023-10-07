; 0:/filaments/PA6CF15/unload.g

M291 P"Nozzle is heating up" R"Unloading PA6CF15" T5   ; Display message
G10 S270                                               ; Heat up the current tool to 270C
M116                                                   ; Wait for the temperatures to be reached
M291 P"Retracting filament..." R"Unloading PA6CF15" T5 ; Display another message
G1 E-20 F200                                           ; Retract 20mm of filament at 200mm/min
G1 E-50 F400                                           ; Retract 50mm of filament at 400mm/min
M400                                                   ; Wait for the moves to finish
M292                                                   ; Hide the message again
M84 E0:1                                               ; Turn off extruder drives 1 and 2

