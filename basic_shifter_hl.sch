v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 -180 380 -180 {lab=#net1}
N 380 -230 380 -180 {lab=#net1}
N 380 -230 410 -230 {lab=#net1}
N 380 -180 380 -130 {lab=#net1}
N 380 -130 410 -130 {lab=#net1}
N 270 -200 270 -180 {lab=#net1}
N 270 -180 270 -160 {lab=#net1}
N 200 -230 200 -180 {lab=HV_IN}
N 200 -230 230 -230 {lab=HV_IN}
N 200 -180 200 -130 {lab=HV_IN}
N 200 -130 230 -130 {lab=HV_IN}
N 160 -180 200 -180 {lab=HV_IN}
N 450 -200 450 -180 {lab=LV_OUT}
N 450 -180 450 -160 {lab=LV_OUT}
N 450 -180 490 -180 {lab=LV_OUT}
N 270 -260 270 -230 {lab=DVDD}
N 270 -130 270 -100 {lab=DVSS}
N 450 -260 450 -230 {lab=VDD}
N 450 -130 450 -100 {lab=#net2}
C {symbols/nfet_06v0.sym} 250 -130 0 0 {name=M1
L=0.7u
W=8u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 250 -230 0 0 {name=M2
L=0.7u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 430 -130 0 0 {name=M3
L=0.7u
W=2.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 430 -230 0 0 {name=M4
L=0.7u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {ipin.sym} 160 -180 0 0 {name=p2 lab=HV_IN}
C {opin.sym} 490 -180 0 0 {name=p6 lab=LV_OUT}
C {iopin.sym} 270 -260 0 0 {name=p8 lab=DVDD}
C {iopin.sym} 270 -100 0 0 {name=p9 lab=DVSS}
C {iopin.sym} 450 -260 0 0 {name=p12 lab=VDD}
C {iopin.sym} 450 -100 0 0 {name=p13 lab=VSS}
