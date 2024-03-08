TOOL_ABOUT ; Remind us which toolhead configuration we're using
M190 S0 ; Remove this if autoemit_temperature_commands is off in Prusa Slicer 2.6 and later
M109 S0 ; Remove this if autoemit_temperature_commands is off in Prusa Slicer 2.6 and later
_PRINT_START_PHASE_INIT EXTRUDER={first_layer_temperature[initial_tool]} BED=[first_layer_bed_temperature] MESH_MIN={first_layer_print_min[0]},{first_layer_print_min[1]} MESH_MAX={first_layer_print_max[0]},{first_layer_print_max[1]} LAYERS={total_layer_count} NOZZLE_SIZE={nozzle_diameter[0]}
; Insert custom gcode here.
_PRINT_START_PHASE_PREHEAT
;Clean_Nozzle
; Insert custom gcode here.
_PRINT_START_PHASE_PROBING
; Insert custom gcode here.
_PRINT_START_PHASE_EXTRUDER
; Insert custom gcode here.
_PRINT_START_PHASE_PURGE

; This is the place to put slicer purge lines if you haven't set a non-zero
; variable_start_purge_length to have START_PRINT automatically calculate and 
; perform the purge (e.g. if using a Mosaic Palette, which requires the slicer
; to generate the purge).

; Load the previously saved skew correction profile
SKEW_PROFILE LOAD=CaliFlower