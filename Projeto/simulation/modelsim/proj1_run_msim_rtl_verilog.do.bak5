transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/bruno/OneDrive/Desktop/SD/projeto1 {C:/Users/bruno/OneDrive/Desktop/SD/projeto1/conc.v}
vlog -vlog01compat -work work +incdir+C:/Users/bruno/OneDrive/Desktop/SD/projeto1 {C:/Users/bruno/OneDrive/Desktop/SD/projeto1/janela.v}
vcom -93 -work work {C:/Users/bruno/OneDrive/Desktop/SD/projeto1/rom_1.vhd}
vcom -93 -work work {C:/Users/bruno/OneDrive/Desktop/SD/projeto1/vga_sync.vhd}
vcom -93 -work work {C:/Users/bruno/OneDrive/Desktop/SD/projeto1/video_pll.vhd}

