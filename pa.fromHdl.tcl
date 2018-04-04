
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name processor -dir "C:/Users/mtayler/Documents/ceng450_processor/planAhead_run_4" -part xc3s1200efg320-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "motherboard.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../../Downloads/Final_Test_Part1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {RF8_16.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {RAM_16.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ALU8_16.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {processor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Display_Controller.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {motherboard.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top motherboard $srcset
add_files [list {motherboard.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s1200efg320-5
