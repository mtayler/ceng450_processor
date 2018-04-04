
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name processor -dir "C:/Users/mtayler/Documents/ceng450_processor/planAhead_run_4" -part xc3s1200efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/mtayler/Documents/ceng450_processor/motherboard.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/mtayler/Documents/ceng450_processor} }
set_property target_constrs_file "motherboard.ucf" [current_fileset -constrset]
add_files [list {motherboard.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
