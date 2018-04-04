
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name processor -dir "C:/Users/mtayler/Documents/ceng450_processor/planAhead_run_2" -part xc3s1200efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/mtayler/Documents/ceng450_processor/processor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/mtayler/Documents/ceng450_processor} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "processor.ucf" [current_fileset -constrset]
add_files [list {processor.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
