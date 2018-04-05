
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name processor -dir "C:/Users/mtayler/Documents/ceng450_processor/planAhead_run_2" -part xc3s1200efg320-5
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/mtayler/Documents/ceng450_processor/motherboard.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/mtayler/Documents/ceng450_processor} }
set_property target_constrs_file "motherboard.ucf" [current_fileset -constrset]
add_files [list {motherboard.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "C:/Users/mtayler/Documents/ceng450_processor/motherboard.xdl"
if {[catch {read_twx -name results_1 -file "C:/Users/mtayler/Documents/ceng450_processor/motherboard.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/mtayler/Documents/ceng450_processor/motherboard.twx\": $eInfo"
}
