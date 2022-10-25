if move.extruders[state.currentTool].filament!= global.LoadedFilament
	if job.file.fileName!=null
		M25
	M291 R"Incorrect filament loaded" P{"Incorrect filament loaded  - ("  ^ move.extruders[state.currentTool].filament ^ ").  Print calls for (" ^ global.LoadedFilament ^ ")." } S0 T3
	G4 S3
	M291 R"Change filament?" P"Press OK to begin filament change or CANCEL to abort job" S3
	M564 S0 H0; allow movement without homing
	M291 R"Incorrect Filament" P{"Move head and press OK to begin unloading " ^ move.extruders[state.currentTool].filament} S3 Z1
	M702 ; unload current filament
	M291 R"Ready to load" P{"Move head and press OK to begin loading " ^ global.LoadedFilament}  S3 Z1
	M701 S{global.LoadedFilament} ; load new filament
	M564 S1 H1 ; do not allow movement unless homed
	if job.file.fileName!=null
		M291 R"Filament loaded" P"Print ready to be resumed" S3