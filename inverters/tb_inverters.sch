v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 50 -902.5 850 -502.5 {flags=graph
y1=-0.00039
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="LV_IN
HV_OUT1
HV_OUT2
HV_OUT3
HV_OUT4"
color="6 10 12 8 4"
dataset=-1
unitx=1
logx=0
logy=0
autoload=0}
B 2 890 -902.5 1690 -502.5 {flags=graph
y1=-0.00039
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="HV_IN
LV_OUT1
LV_OUT2
LV_OUT3
LV_OUT4"
color="6 10 12 8 4"
dataset=-1
unitx=1
logx=0
logy=0
autoload=0}
C {inverter_v1.sym} 250 -450 0 0 {name=x1}
C {vsource.sym} 50 -80 0 0 {name=V3 value=3.3 savecurrent=false}
C {lab_pin.sym} 50 -50 0 1 {name=p1 sig_type=std_logic lab=GND}
C {lab_pin.sym} 50 -110 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} 130 -80 0 0 {name=V4 value=5 savecurrent=false}
C {lab_pin.sym} 130 -50 0 1 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 130 -110 0 1 {name=p24 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 250 -415 0 1 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 250 -485 0 1 {name=p8 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 100 -450 0 0 {name=p11 sig_type=std_logic lab=LV_IN}
C {lab_pin.sym} 400 -450 0 1 {name=p12 sig_type=std_logic lab=HV_OUT1}
C {vsource.sym} 230 -80 0 0 {name=V1 value="PWL(0 0 50u 3.3 100u 0 100.001u 3.3 125u 0 150u 3.3 150.001u 0 175u 3.3 200u 0)" savecurrent=false}
C {lab_pin.sym} 230 -50 0 1 {name=p15 sig_type=std_logic lab=GND}
C {lab_pin.sym} 230 -110 0 1 {name=p16 sig_type=std_logic lab=LV_IN}
C {vsource.sym} 680 -80 0 0 {name=V2 value="PWL(0 0 50u 5 100u 0 100.001u 5 125u 0 150u 5 150.001u 0 175u 5 200u 0)" savecurrent=false}
C {lab_pin.sym} 680 -50 0 1 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} 680 -110 0 1 {name=p18 sig_type=std_logic lab=HV_IN}
C {devices/code_shown.sym} 1010 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical"}
C {devices/code_shown.sym} 1010 -370 0 0 {name=STIMULI only_toplevel=false
value=".control
save all
tran 1u 200u
remzerovec
write tb_inverters.raw
.endc"}
C {launcher.sym} 1070 -450 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_inverters.raw tran"
}
C {inverter_v2.sym} 250 -360 0 0 {name=x3}
C {lab_pin.sym} 250 -325 0 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 250 -395 0 1 {name=p5 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 100 -360 0 0 {name=p7 sig_type=std_logic lab=LV_IN}
C {lab_pin.sym} 400 -360 0 1 {name=p9 sig_type=std_logic lab=HV_OUT2}
C {inverter_v3.sym} 250 -270 0 0 {name=x4}
C {lab_pin.sym} 250 -235 0 1 {name=p19 sig_type=std_logic lab=GND}
C {lab_pin.sym} 250 -305 0 1 {name=p20 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 100 -270 0 0 {name=p21 sig_type=std_logic lab=LV_IN}
C {lab_pin.sym} 400 -270 0 1 {name=p22 sig_type=std_logic lab=HV_OUT3}
C {inverter_v4.sym} 250 -180 0 0 {name=x5}
C {lab_pin.sym} 250 -145 0 1 {name=p25 sig_type=std_logic lab=GND}
C {lab_pin.sym} 250 -215 0 1 {name=p26 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 100 -180 0 0 {name=p27 sig_type=std_logic lab=LV_IN}
C {lab_pin.sym} 400 -180 0 1 {name=p28 sig_type=std_logic lab=HV_OUT4}
C {inverter_v1.sym} 720 -450 0 0 {name=x2}
C {lab_pin.sym} 720 -415 0 1 {name=p6 sig_type=std_logic lab=GND}
C {lab_pin.sym} 720 -485 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 -450 0 0 {name=p13 sig_type=std_logic lab=HV_IN}
C {lab_pin.sym} 870 -450 0 1 {name=p14 sig_type=std_logic lab=LV_OUT1}
C {inverter_v2.sym} 720 -360 0 0 {name=x6}
C {lab_pin.sym} 720 -325 0 1 {name=p29 sig_type=std_logic lab=GND}
C {lab_pin.sym} 720 -395 0 1 {name=p30 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 -360 0 0 {name=p31 sig_type=std_logic lab=HV_IN}
C {lab_pin.sym} 870 -360 0 1 {name=p32 sig_type=std_logic lab=LV_OUT2}
C {inverter_v3.sym} 720 -270 0 0 {name=x7}
C {lab_pin.sym} 720 -235 0 1 {name=p33 sig_type=std_logic lab=GND}
C {lab_pin.sym} 720 -305 0 1 {name=p34 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 -270 0 0 {name=p35 sig_type=std_logic lab=HV_IN}
C {lab_pin.sym} 870 -270 0 1 {name=p36 sig_type=std_logic lab=LV_OUT3}
C {inverter_v4.sym} 720 -180 0 0 {name=x8}
C {lab_pin.sym} 720 -145 0 1 {name=p37 sig_type=std_logic lab=GND}
C {lab_pin.sym} 720 -215 0 1 {name=p38 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 -180 0 0 {name=p39 sig_type=std_logic lab=HV_IN}
C {lab_pin.sym} 870 -180 0 1 {name=p40 sig_type=std_logic lab=LV_OUT4}
