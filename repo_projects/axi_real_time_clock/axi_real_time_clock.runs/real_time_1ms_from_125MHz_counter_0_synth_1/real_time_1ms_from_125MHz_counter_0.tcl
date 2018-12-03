# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a200tfbg676-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.cache/wt [current_project]
set_property parent.project_path /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part xilinx.com:ac701:part0:1.2 [current_project]
set_property ip_repo_paths /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.srcs/sources_1 [current_project]
read_ip /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.srcs/sources_1/ip/real_time_1ms_from_125MHz_counter_0/real_time_1ms_from_125MHz_counter_0.xci
set_property used_in_implementation false [get_files -all /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.srcs/sources_1/ip/real_time_1ms_from_125MHz_counter_0/real_time_1ms_from_125MHz_counter_0.dcp]
set_property is_locked true [get_files /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.srcs/sources_1/ip/real_time_1ms_from_125MHz_counter_0/real_time_1ms_from_125MHz_counter_0.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top real_time_1ms_from_125MHz_counter_0 -part xc7a200tfbg676-2 -mode out_of_context
rename_ref -prefix_all real_time_1ms_from_125MHz_counter_0_
write_checkpoint -noxdef real_time_1ms_from_125MHz_counter_0.dcp
catch { report_utilization -file real_time_1ms_from_125MHz_counter_0_utilization_synth.rpt -pb real_time_1ms_from_125MHz_counter_0_utilization_synth.pb }
if { [catch {
  file copy -force /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.runs/real_time_1ms_from_125MHz_counter_0_synth_1/real_time_1ms_from_125MHz_counter_0.dcp /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.srcs/sources_1/ip/real_time_1ms_from_125MHz_counter_0/real_time_1ms_from_125MHz_counter_0.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.srcs/sources_1/ip/real_time_1ms_from_125MHz_counter_0/real_time_1ms_from_125MHz_counter_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.srcs/sources_1/ip/real_time_1ms_from_125MHz_counter_0/real_time_1ms_from_125MHz_counter_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.srcs/sources_1/ip/real_time_1ms_from_125MHz_counter_0/real_time_1ms_from_125MHz_counter_0_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim /n/15/moore.1424/xillinx/axi_real_time_clock/axi_real_time_clock.srcs/sources_1/ip/real_time_1ms_from_125MHz_counter_0/real_time_1ms_from_125MHz_counter_0_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}