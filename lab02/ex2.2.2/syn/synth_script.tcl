gui_start
analyze -library WORK -format vhdl {iv.vhd mux51.vhd leftshifter.vhd fa.vhd rca.vhd encoder.vhd boothmul.vhd}
elaborate boothmul -architecture structural -library WORK
compile -exact_map

#set_max_delay REQUIRED_TIME -from [all_inputs] -to [all_outputs]


