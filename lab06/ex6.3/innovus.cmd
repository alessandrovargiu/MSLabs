#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Jun 15 13:36:07 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.11-s130_1 (64bit) 08/05/2020 15:53 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.11-s130_1 NR200802-2257/20_11-UB (database version 18.20.512) {superthreading v2.9}
#@(#)CDS: AAE 20.11-s008 (64bit) 08/05/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.11-s059_1 () Aug  2 2020 05:46:30 ( )
#@(#)CDS: SYNTECH 20.11-s028_1 () Aug  1 2020 06:14:27 ( )
#@(#)CDS: CPE v20.11-s013
#@(#)CDS: IQuantus/TQuantus 19.1.3-s260 (64bit) Thu May 28 10:57:28 PDT 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set fpIsMaxIoHeight 0
set init_gnd_net gnd
set init_mmmc_file Default.view
set init_oa_search_lib {}
set init_pwr_net vdd
set init_verilog BOOTHMUL-structural-topt.v
set init_lef_file /eda/dk/nangate45/lef/NangateOpenCellLibrary.lef
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { vdd gnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
place_design
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell BOOTHMUL -pin {A[0]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[1]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[2]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[3]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[4]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[5]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[6]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[7]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[8]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[9]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[10]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[11]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[12]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[13]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[14]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[15]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[16]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[17]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[18]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[19]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[20]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[21]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[22]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[23]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[24]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[25]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[26]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[27]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[28]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[29]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[30]} -status unplaced -silent
setPtnPinStatus -cell BOOTHMUL -pin {A[31]} -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Bottom -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{P[0]} {P[1]} {P[2]} {P[3]} {P[4]} {P[5]} {P[6]} {P[7]} {P[8]} {P[9]} {P[10]} {P[11]} {P[12]} {P[13]} {P[14]} {P[15]} {P[16]} {P[17]} {P[18]} {P[19]} {P[20]} {P[21]} {P[22]} {P[23]} {P[24]} {P[25]} {P[26]} {P[27]} {P[28]} {P[29]} {P[30]} {P[31]} {P[32]} {P[33]} {P[34]} {P[35]} {P[36]} {P[37]} {P[38]} {P[39]} {P[40]} {P[41]} {P[42]} {P[43]} {P[44]} {P[45]} {P[46]} {P[47]} {P[48]} {P[49]} {P[50]} {P[51]} {P[52]} {P[53]} {P[54]} {P[55]} {P[56]} {P[57]} {P[58]} {P[59]} {P[60]} {P[61]} {P[62]} {P[63]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{P[0]} {P[1]} {P[2]} {P[3]} {P[4]} {P[5]} {P[6]} {P[7]} {P[8]} {P[9]} {P[10]} {P[11]} {P[12]} {P[13]} {P[14]} {P[15]} {P[16]} {P[17]} {P[18]} {P[19]} {P[20]} {P[21]} {P[22]} {P[23]} {P[24]} {P[25]} {P[26]} {P[27]} {P[28]} {P[29]} {P[30]} {P[31]} {P[32]} {P[33]} {P[34]} {P[35]} {P[36]} {P[37]} {P[38]} {P[39]} {P[40]} {P[41]} {P[42]} {P[43]} {P[44]} {P[45]} {P[46]} {P[47]} {P[48]} {P[49]} {P[50]} {P[51]} {P[52]} {P[53]} {P[54]} {P[55]} {P[56]} {P[57]} {P[58]} {P[59]} {P[60]} {P[61]} {P[62]} {P[63]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{P[0]} {P[1]} {P[2]} {P[3]} {P[4]} {P[5]} {P[6]} {P[7]} {P[8]} {P[9]} {P[10]} {P[11]} {P[12]} {P[13]} {P[14]} {P[15]} {P[16]} {P[17]} {P[18]} {P[19]} {P[20]} {P[21]} {P[22]} {P[23]} {P[24]} {P[25]} {P[26]} {P[27]} {P[28]} {P[29]} {P[30]} {P[31]} {P[32]} {P[33]} {P[34]} {P[35]} {P[36]} {P[37]} {P[38]} {P[39]} {P[40]} {P[41]} {P[42]} {P[43]} {P[44]} {P[45]} {P[46]} {P[47]} {P[48]} {P[49]} {P[50]} {P[51]} {P[52]} {P[53]} {P[54]} {P[55]} {P[56]} {P[57]} {P[58]} {P[59]} {P[60]} {P[61]} {P[62]} {P[63]}}
setPinAssignMode -pinEditInBatch false
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
gui_select -rect {62.71000 131.34850 85.65250 83.69950}
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setAnalysisMode -analysisType onChipVariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
saveDesign BOOTHMULInnovusDesign
win
set_analysis_view -setup {default} -hold {default}
reset_parasitics
extractRC
rcOut -setload BOOTHMUL.setload -rc_corner standard
rcOut -setres BOOTHMUL.setres -rc_corner standard
rcOut -spf BOOTHMUL.spf -rc_corner standard
rcOut -spef BOOTHMUL.spef -rc_corner standard
reset_parasitics
extractRC
rcOut -spef BOOTHMUL.spef -rc_corner standard
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix BOOTHMUL_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix BOOTHMUL_postRoute -outDir timingReports
getAnalysisMode -checkType
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all -late > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
getAnalysisMode -checkType
getAnalysisMode -checkType
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all -late > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
getAnalysisMode -checkType
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all -early > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
verifyConnectivity -type all -error 1000 -warning 50
reportGateCount -level 5 -limit 100 -outfile BOOTHMUL.gateCount
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network BOOTHMUL.sdf
saveNetlist PostRouteBOOTHMUL.v
write_sdf  -ideal_clock_network TimingDelayBOOTHMUL.sdf
