; /opt/dsf/sd/sys/config.g

; Version control
; Duet Web Control   3.4.5
; RepRap firmware    3.4.5
; PanelDue firmware  3.4.1-5.0i

; General preferences
M111 S0                                       ; debugging off
G21                                           ; millimeter units
G90                                           ; send absolute coordinates...
M83                                           ; ...but relative extruder moves
M669 K1                                       ; select CoreXY mode
M404 N1.75                                    ; filament width

; Drives
M569 P0 S1 D3                                 ; drive 0 (Z left) goes forwards
M569 P1 S1 D3                                 ; drive 1 (Z rear) goes forwards
M569 P2 S0 D3                                 ; drive 2 (Z right) goes backwards
M569 P3 S0 D3                                 ; drive 3 (Y) goes backwards
M569 P4 S1 D3                                 ; drive 4 (X) goes forwards
M569 P5 S0 D3                                 ; drive 5 (E) goes backwards
M584 X4 Y3 Z0:1:2 E5                          ; drive mapping
M350 X16 Y16 Z16 E16 I1                       ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z400.00 E397                ; set steps per mm
M566 X900.00 Y900.00 Z60.00 E120.00           ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z180.00 E1200.00       ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00 E250.00           ; set accelerations (mm/s^2)
M906 X1600 Y1600 Z1600 E1000 I30              ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                       ; set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                              ; set axis min
M208 X268 Y304 Z285 S0                        ; set axis max

; Endstops
M574 X1 S1 P"!io1.in"                         ; configure switch-type (e.g. microswitch) endstop for low end on X via pin io1.in
M574 Y2 S1 P"!io2.in"                         ; configure switch-type (e.g. microswitch) endstop for low end on Y via pin io2.in
M671 X295:-85:295 Y-55:132:363 S6             ; Z leadscrew positions

; Z-Probe
M950 S0 C"io7.out"                            ; create servo pin 0 for BLTouch
M558 P9 C"io7.in" H5 F120 T6000               ; set Z probe type to bltouch and the dive height + speeds
G31 P500 X35.06 Y29.335 Z2.5                  ; set Z probe trigger value, offset and trigger height (positive value = closer to bed)
M557 X35.06:270.06 Y29.335:309.335 P8:9       ; define mesh grid

; Heaters
M308 S0 P"temp0" Y"thermistor" T100000 B3950  ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out1" T0                            ; create bed heater output on out1 and map it to sensor 0
M307 H0 R0.766 K0.386:0 D8.84 E1.35 S1 B0     ; enable bang-bang mode for the bed heater and set PWM limit
M140 H0 R40                                   ; map heated bed to heater 0
M143 H0 S120                                  ; set temperature limit for heater 0 to 120C
M308 S1 P"temp1" Y"thermistor" T100000 B4725 C7.060000e-8 ; configure sensor 1 as thermistor on pin temp1
M950 H1 C"out2" T1                            ; create nozzle heater output on out2 and map it to sensor 1
M307 H1 R9.689 K0.748:0 D3.20 E1.35 S1 B0     ; disable bang-bang mode for heater  and set PWM limit
M143 H1 S300                                  ; set temperature limit for heater 1 to 300C

; Fans
M950 F0 C"out7" Q500                          ; create fan 0 on pin out7 and set its frequency
M106 P0 C"Hot-end fan" S0 H1 T45              ; set fan 0 name and value. Thermostatic control is turned on
M950 F1 C"out4" Q500                          ; create fan 1 on pin out4 and set its frequency
M106 P1 C"Layer fan" S0 H-1                   ; set fan 1 name and value. Thermostatic control is turned off

; Tools
M563 P0 S"Revo Hemera XS" D0 H1 F0:1          ; define tool 0
G10 P0 X0 Y0 Z0                               ; set tool 0 axis offsets
G10 P0 R0 S0                                  ; set initial tool 0 active and standby temperatures to 0C
M572 D0 S0.05                                 ; pressure advance (default direct drive value)
M568 P0 R140                                  ; tool 0 standby temperature 140C

; PanelDue
M575 P1 S1 B57600                             ; set default serial comms parameters (via pin io0.in)

; Duet3D LIS3DH v0.2 Accelerometer
; M955 P0 C"spi.cs1+spi.cs0" I61                ; direct SPI_DB connector, +Z to -Z
M593 P"ei3" F75                               ; input shaping

; Miscellaneous
T0                                            ; select first tool

