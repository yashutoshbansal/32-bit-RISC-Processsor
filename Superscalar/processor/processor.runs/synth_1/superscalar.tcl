# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/Final program/processor/processor.cache/wt} [current_project]
set_property parent.project_path {D:/Final program/processor/processor.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {d:/Final program/processor/processor.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  {D:/Final program/reg_file/reg_file.srcs/sources_1/new/reg_file.v}
  {D:/Final program/control_uni/control_uni.srcs/sources_1/new/control_unit.v}
  {D:/Final program/ALUCU1/ALUCU1.srcs/sources_1/new/ALU_CU.v}
  {D:/Final program/ALU1/ALU1.srcs/sources_1/new/Alu.v}
  {D:/Final program/PC1/PC1.srcs/sources_1/new/program_counter.v}
  {D:/Final program/processor/processor.srcs/sources_1/new/combine.v}
  {D:/Final program/Data Memory/data.srcs/sources_1/new/data.v}
  {D:/Final program/processor/processor.srcs/sources_1/new/superscalar.v}
  {D:/Final program/processor/processor.srcs/sources_1/new/instr_mem.v}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top superscalar -part xc7k70tfbv676-1


write_checkpoint -force -noxdef superscalar.dcp

catch { report_utilization -file superscalar_utilization_synth.rpt -pb superscalar_utilization_synth.pb }
