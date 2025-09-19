v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 305 -825 1105 -425 {flags=graph
y1=-0.0048
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0016
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="PAD
T1
T2"
color="8 12 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N 760 -120 810 -120 {lab=PAD}
N 760 -120 760 -100 {lab=PAD}
C {pad_bi_24t.sym} 610 -160 0 0 {name=x1}
C {vsource.sym} 300 -100 0 0 {name=V3 value=3.3 savecurrent=false}
C {lab_pin.sym} 300 -70 0 1 {name=p1 sig_type=std_logic lab=GND}
C {lab_pin.sym} 300 -130 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 760 -160 0 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 760 -200 0 1 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 760 -180 0 1 {name=p5 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 760 -220 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 760 -100 0 1 {name=p7 sig_type=std_logic lab=PAD}
C {lab_pin.sym} 460 -180 0 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_pin.sym} 460 -200 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 460 -120 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 460 -100 0 0 {name=p13 sig_type=std_logic lab=GND}
C {vsource.sym} 90 -110 0 0 {name=V1 value="PULSE(0 3.3 0 0 0 250u 500u)" savecurrent=false}
C {lab_pin.sym} 90 -80 0 1 {name=p14 sig_type=std_logic lab=GND}
C {lab_pin.sym} 90 -140 0 1 {name=p15 sig_type=std_logic lab=T1}
C {devices/code_shown.sym} 60 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.include $::PDK_ROOT/gf180mcuD/libs.ref/gf180mcu_fd_io/spice/gf180mcu_fd_io.spice
"}
C {devices/code_shown.sym} 60 -560 0 0 {name=STIMULI only_toplevel=false
value=".control
save all
tran 1u 1600u
remzerovec
write tb_pad_bi_24t.raw
.endc"}
C {lab_pin.sym} 460 -220 0 0 {name=p16 sig_type=std_logic lab=T1}
C {lab_pin.sym} 760 -140 0 1 {name=p17 sig_type=std_logic lab=T2}
C {launcher.sym} 700 -370 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_pad_bi_24t.raw tran"
}
C {res.sym} 840 -120 1 0 {name=R1
value=250
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 870 -120 0 1 {name=p20 sig_type=std_logic lab=PDRV}
C {vsource.sym} 90 -210 0 0 {name=V2 value="PULSE(0 5 0 0 0 50u 100u)" savecurrent=false}
C {lab_pin.sym} 90 -180 0 1 {name=p21 sig_type=std_logic lab=GND}
C {lab_pin.sym} 90 -240 0 1 {name=p22 sig_type=std_logic lab=PDRV}
C {lab_pin.sym} 460 -140 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 460 -160 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {vsource.sym} 300 -210 0 0 {name=V4 value=5 savecurrent=false}
C {lab_pin.sym} 300 -180 0 1 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 300 -240 0 1 {name=p24 sig_type=std_logic lab=DVDD}
