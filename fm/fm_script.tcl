
############################  Search PATH ################################

set PROJECT_PATH /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/Projects/System
set LIB_PATH     /home/IC/tsmc_fb_cl013g_sc/aci/sc-m

lappend search_path $LIB_PATH/synopsys
lappend search_path $PROJECT_PATH/RTL/ALU
lappend search_path $PROJECT_PATH/RTL/FIFO
lappend search_path $PROJECT_PATH/RTL/Clock_Divider
lappend search_path $PROJECT_PATH/RTL/Clock_Gating
lappend search_path $PROJECT_PATH/RTL/DATA_SYNC
lappend search_path $PROJECT_PATH/RTL/RegFile
lappend search_path $PROJECT_PATH/RTL/PULSE_GEN
lappend search_path $PROJECT_PATH/RTL/RST_SYNC
lappend search_path $PROJECT_PATH/RTL/SYS_CTRL
lappend search_path $PROJECT_PATH/RTL/divmux
lappend search_path $PROJECT_PATH/RTL/UART_RX
lappend search_path $PROJECT_PATH/RTL/UART_TX
lappend search_path $PROJECT_PATH/RTL/Top

########################### Define Top Module ############################
                                                   
set top_module TOP_SYS

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/Projects/System/syn/$top_module.svf"

####################### Read Reference tech libs ########################
 

set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

###################  Read Reference Design Files ######################## 
read_verilog -container Ref "ALU.v"
read_verilog -container Ref "sync.v"
read_verilog -container Ref "MEMO.v"
read_verilog -container Ref "WFIFO.v"
read_verilog -container Ref "RFIFO.v"
read_verilog -container Ref "FIFO_TOP.v"
read_verilog -container Ref "divmux.v"
read_verilog -container Ref "CLK_Divider_Integer.v"
read_verilog -container Ref "CLK_GATE.v"
read_verilog -container Ref "bussynchro.v"
read_verilog -container Ref "RegFile.v"
read_verilog -container Ref "PulseGene.v"
read_verilog -container Ref "resetsynchro.v"
read_verilog -container Ref "SYS_CTRL.v"
read_verilog -container Ref "data_sampling.v"
read_verilog -container Ref "deserializer.v"
read_verilog -container Ref "edge_bit_counter.v"
read_verilog -container Ref "parity_check.v"
read_verilog -container Ref "stop_check.v"
read_verilog -container Ref "start_check.v"
read_verilog -container Ref "uart_rx_top.v"
read_verilog -container Ref "finitestatemachine.v"
read_verilog -container Ref "mux.v"
read_verilog -container Ref "parity.v"
read_verilog -container Ref "serializer.v"
read_verilog -container Ref "fsm.v"
read_verilog -container Ref "top_tx.v"
read_verilog -container Ref "TOPSYS.v"

######################## set the top Reference Design ######################## 

set_reference_design TOP_SYS
set_top TOP_SYS

####################### Read Implementation tech libs ######################## 

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

#################### Read Implementation Design Files ######################## 

read_verilog -container Imp -netlist "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/Projects/System/syn/netlists/TOP_SYS.v"

####################  set the top Implementation Design ######################

set_implementation_design TOP_SYS
set_top TOP_SYS


## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui