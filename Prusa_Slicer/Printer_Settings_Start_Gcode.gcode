G90 ; use absolute coordinates
M83 ; extruder relative mode
;M104 S150 ; set temporary nozzle temp to prevent oozing during homing
M140 S{first_layer_bed_temperature[0]} ; set final bed temp
G4 S30 ; allow partial nozzle warmup
G28 ; home all axis
G1 Z10 F240 ; put nozzle 1cm above the bed
G1 X12.0 Y10 F3000 ; get ready to draw the first line
M104 S{first_layer_temperature[0]} ; set final nozzle temp
M190 S{first_layer_bed_temperature[0]} ; wait for bed temp to stabilize
M109 S{first_layer_temperature[0]} ; wait for nozzle temp to stabilize
G1 Z0.28 F240           ; place the nozzle close to the bed
G92 E0
G1 X12.0 Y140 E10 F1500 ; prime the nozzle forwards
G1 X12.3 Y140 F5000     ; move over a little
G92 E0
G1 X12.3 Y10 E10 F1200  ; prime the nozzle backwards
G92 E0