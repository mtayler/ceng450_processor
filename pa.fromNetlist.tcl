
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name processor -dir "/home/mtayler/ceng450/processor/planAhead_run_1" -part xc3s1200efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/mtayler/ceng450/processor/processor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/mtayler/ceng450/processor} }
set_property target_constrs_file "processor.ucf" [current_fileset -constrset]
add_files [list {processor.ucf}] -fileset [get_property constrset [current_run]]
link_design
