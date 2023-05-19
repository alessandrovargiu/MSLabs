setmentor
vlib work
vcom -reportprogress 300 -work work /home/ms23.51/Desktop/MSLabs/gr51_lab02/ex2.1.1/sim/iv.vhd
vcom -reportprogress 300 -work work /home/ms23.51/Desktop/MSLabs/gr51_lab02/ex2.1.1/sim/nd2.vhd
vcom -reportprogress 300 -work work /home/ms23.51/Desktop/MSLabs/gr51_lab02/ex2.1.1/sim/mux21_generic.vhd
vcom -reportprogress 300 -work work /home/ms23.51/Desktop/MSLabs/gr51_lab02/ex2.1.1/sim/lfsr.vhd
vcom -reportprogress 300 -work work /home/ms23.51/Desktop/MSLabs/gr51_lab02/ex2.1.1/sim/fa.vhd
vcom -reportprogress 300 -work work /home/ms23.51/Desktop/MSLabs/gr51_lab02/ex2.1.1/sim/carryselect.vhd
vcom -reportprogress 300 -work work /home/ms23.51/Desktop/MSLabs/gr51_lab02/ex2.1.1/sim/tb_rca_generic.vhd

vsim -t 10ps work.tbrcag -voptargs=+acc

