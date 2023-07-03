; 0:/filaments/PETG/load.g

M291 P"Nozzle is heating up" R"Loading PETG" T5 ; Display message
G10 S240                                        ; Set current tool temperature to 240C
M116                                            ; Wait for the temperatures to be reached
M291 P"Feeding filament..." R"Loading PETG" T5  ; Display new message
M83                                             ; Extruder to relative mode
G1 E10 F100                                     ; Feed 10mm of filament at 100mm/min
G1 E50 F300                                     ; Feed 50mm of filament at 300mm/min
G1 E10 F100                                     ; Feed 10mm of filament at 100mm/min
G4 P1000                                        ; Wait one second
G1 E-1 F300                                     ; Retract 1mm of filament at 600mm/min
M400                                            ; Wait for moves to complete
M292                                            ; Hide the message
G10 S0                                          ; Turn off the heater again

