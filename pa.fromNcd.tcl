
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name register_file_alu -dir "C:/Users/mfarrow/ceng450_rf_and_alu-master/planAhead_run_1" -part xc3s1200efg320-5
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/mfarrow/ceng450_rf_and_alu-master/alu.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/mfarrow/ceng450_rf_and_alu-master} }
set_property target_constrs_file "alu.ucf" [current_fileset -constrset]
add_files [list {alu.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "C:/Users/mfarrow/ceng450_rf_and_alu-master/alu.xdl"
if {[catch {read_twx -name results_1 -file "C:/Users/mfarrow/ceng450_rf_and_alu-master/alu.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/mfarrow/ceng450_rf_and_alu-master/alu.twx\": $eInfo"
}
