analyze -library WORK -format vhdl {constants.vhd fa.vhd carryselect.vhd iv.vhd nd2.vhd mux21_generic.vhd sum_generator.vhdl G.vhd Pg.vhd PGnetwork.vhd sparsetree.vhd p4_adder.vhd}

elaborate p4_adder -architecture structural -library WORK

compile -exact_map
