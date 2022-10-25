; General preferences
M111                                  ; Debugging off
G21                                   ; Use millimeter units
G90                                   ; Send absolute coordinates...
M83                                   ; ...but relative extruder moves
M669 K1                               ; CoreXY
M550 P"duet3"                         ; Printer name
M404 N1.75                            ; Filament width

; Drives
M569 P0 S0 D3                         ; Drive 0 (Z left) goes backwards
M569 P1 S1 D3                         ; Drive 1 (Z rear) goes forwards
M569 P2 S0 D3                         ; Drive 2 (Z right) goes backwards
M569 P3 S0 D3                         ; Drive 3 (Y) goes backwards
M569 P4 S1 D3                         ; Drive 4 (X) goes forwards
M569 P5 S1 D3                         ; Drive 5 (E) goes forwards

M584 X4 Y3 Z0:1:2 E5                  ; Drive mapping
M350 X16 Y16 Z16 E16 I1               ; Microstepping

M92 X80 Y80 Z400 E830                 ; Axis steps per unit (0.9 angle/step)
M906 X1000 Y1000 Z800 E800 I30        ; Motor currents
M84 S35                               ; Idle timeout

; Axis limits
M208 X0 Y0 Z0 S1                      ; Axis minimum coordinates
M208 X255 Y298 Z286.5 S0              ; Axis maximum coordinates

; Endstops
M574 X1 S3                            ; X endstop
M574 Y1 S3                            ; Y endstop
M915 X Y R0 F0                        ; Motor stall detection
M671 X282:-25:282 Y-15:135:298 S2     ; Z leadscrew positions
M557 X0:228 Y0:295 P5                 ; Mesh grid

; Heaters
M308 S0 P"temp0" Y"thermistor" T100000 B3950 A"Heated bed"  ; Heated bed
M950 H0 C"out1" T0                             ; Heated bed mapping
M307 H0 R0.792 K0.312:0 D10.79 E1.35 S1 B0     ; Heated bed tuning result (M303)
M140 H0 R0 S0                                  ; Heated bed mapping
M143 H0 S110                                   ; Heated bed temperature limit

M308 S1 P"temp1" Y"thermistor" T100000 B4725 C7.060000e-8 A"Extruder"  ; Extruder
M950 H1 C"out2" T1                             ; Extruder mapping
M307 H1 R1.917 K0.404:0.111 D4.88 E1.35 S1 B0  ; Extruder tuning result (M303)
M143 H1 S250                                   ; Extruder temperature limit

; Fans
M950 F0 C"out7" Q500                  ; Hotend fan
M106 P0 C"Hotend Fan" S0 H1 T45 L255  ; Hotend fan configuration
M950 F1 C"out4" Q500                  ; Layer fan
M106 P1 C"Layer Fan" S0 H-1 L255      ; Layer fan configuration

; Tools
M563 P0 S"Titan Aero" D0 H1 F1        ; Extruder
G10 P0 X0 Y0 Z0                       ; Extruder axis offsets
G10 P0 R0 S0                          ; Extruder active and standby temperatures

; Z-probe
M950 S2 C"io7.out"                    ; Create a servo pin on io7
M558 P9 C"io7.in" H5 F240 T6000 A5    ; set Z probe type to unmodulated and the dive height + speeds
G31 P25 X45.00 Y0.00 Z3.03            ; set Z probe trigger value, offset and trigger height, more Z means closer to the bed

; Speed and acceleration
M566 X400 Y400 Z6 E120 P1             ; Maximum instantaneous speed changes (mm/min)
M203 X10800 Y10800 Z1000 E3600        ; Maximum axis speeds (mm/min)
M201 X3000 Y3000 Z100 E3600           ; Axis accelerations (mm/s^2)

if !exists(global.filamentFeedSpeed)
	global filamentFeedSpeed = 180 ; global to set the feed speed used in filament changes - adjusted per filament in filament config.c 
else
	set global.filamentFeedSpeed = 180

if !exists(global.filamentRetractSpeed)
	global filamentRetractSpeed = 300 ; global to set the retract speed used in filament changes - adjusted per filament in filament config.c 
else
	set global.filamentRetractSpeed = 300

T0                                    ; Select tool
M568 P0 R0 S0 A0 ; turn off heater on tool zero
M140 S-273.1 ; turn off bed

if !exists(global.LastTemp) || global.LastTemp=null
	global LastTemp=heat.heaters[1].current ; Set variable to current extruder temp.
else
	set global.LastTemp=heat.heaters[1].current ; Set variable to current extruder temp.

G4 P10

if !exists(global.LastCheckTime)
	global LastCheckTime=0 ; variable for use in daemon.g 
else
	set global.LastCheckTime=0 ; variable for use in daemon.g

if !exists(global.BedPreheatTemp)
	global BedPreheatTemp=0 ; variable for use in preheating 
else
	set global.BedPreheatTemp=0 ; variable for use in preheating 

; extrusion
if !exists(global.LoadedFilament) || global.LoadedFilament=null; global variable to hold filament name
	global LoadedFilament="No_Filament" ; create a filament variable

G4 P10

;create a global to tack if the filament is flexible and stop retracts when paused/cancelled/stopped
; global is set to true in filament/config.g if it's a flexible filament
if !exists(global.filamentIsFlexible)
	global filamentIsFlexible = false
else
	set global.filamentIsFlexible=false

;load config for filament

if move.extruders[state.currentTool].filament=""
	echo "No filament loaded.  Cold extrude & retract set to defaults"
	M302 S190 R110 ; Allow extrusion starting from 190°C and retractions already from 110°C (defaults)
	set global.LoadedFilament="No_Filament"
else
	set global.LoadedFilament=move.extruders[state.currentTool].filament ; set the variable to the currently loaded filament
	echo "Loading config for " ^ global.LoadedFilament ^ " filament"
	M703 ; if a filament is loaded, set all the heats and speeds for it by loading config.g
