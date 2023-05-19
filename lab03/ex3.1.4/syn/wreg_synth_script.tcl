analyze -library WORK -format vhdl {constants.vhd addr_transformer.vhd registerfilegeneric.vhd window_reg_fsm.vhd top_entity.vhd}
elaborate top_entity -architecture STRUCTURAL -library WORK
compile -exact_map
write -hierarchy -format vhdl -output /home/ms23.51/Desktop/cap3/syn/reports/window_reg/window_reg_vhdldesign.vhdl
report_timing > window_reg_timing.txt
