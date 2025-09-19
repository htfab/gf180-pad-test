v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 50 -820 850 -420 {flags=graph
y1=-0.00039
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0008
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="HV_OUT
LV_OUT"
color="15 6"
dataset=-1
unitx=1
logx=0
logy=0
}
C {basic_shifter_lh.sym} 250 -260 0 0 {name=x1}
C {basic_shifter_hl.sym} 740 -260 0 0 {name=x2}
C {vsource.sym} 50 -80 0 0 {name=V3 value=3.3 savecurrent=false}
C {lab_pin.sym} 50 -50 0 1 {name=p1 sig_type=std_logic lab=GND}
C {lab_pin.sym} 50 -110 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} 130 -80 0 0 {name=V4 value=5 savecurrent=false}
C {lab_pin.sym} 130 -50 0 1 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 130 -110 0 1 {name=p24 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 190 -190 0 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 310 -190 0 1 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 680 -190 0 1 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 800 -190 0 1 {name=p6 sig_type=std_logic lab=GND}
C {lab_pin.sym} 190 -330 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 310 -330 0 1 {name=p8 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 680 -330 0 1 {name=p9 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 800 -330 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -260 0 0 {name=p11 sig_type=std_logic lab=LV_IN}
C {lab_pin.sym} 400 -260 0 1 {name=p12 sig_type=std_logic lab=HV_OUT}
C {lab_pin.sym} 590 -260 0 0 {name=p13 sig_type=std_logic lab=HV_IN}
C {lab_pin.sym} 890 -260 0 1 {name=p14 sig_type=std_logic lab=LV_OUT}
C {vsource.sym} 230 -80 0 0 {name=V1 value="PULSE(0 3.3 0 0 0 50u 100u)" savecurrent=false}
C {lab_pin.sym} 230 -50 0 1 {name=p15 sig_type=std_logic lab=GND}
C {lab_pin.sym} 230 -110 0 1 {name=p16 sig_type=std_logic lab=LV_IN}
C {vsource.sym} 420 -80 0 0 {name=V2 value="PULSE(0 5 0 0 0 50u 100u)" savecurrent=false}
C {lab_pin.sym} 420 -50 0 1 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} 420 -110 0 1 {name=p18 sig_type=std_logic lab=HV_IN}
C {devices/code_shown.sym} 850 -80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical"}
C {devices/code_shown.sym} 1060 -240 0 0 {name=STIMULI only_toplevel=false
value=".control
save all
tran 1u 800u
remzerovec
write tb_basic_shifters.raw
.endc"}
C {launcher.sym} 970 -440 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_basic_shifters.raw tran"
}
