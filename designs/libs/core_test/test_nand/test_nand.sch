v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -330 120 -280 {lab=Y}
N 120 -280 410 -280 {lab=Y}
N 410 -330 410 -280 {lab=Y}
N 270 -280 270 -230 {lab=Y}
N 270 -170 270 -120 {lab=#net1}
N 120 -360 410 -360 {lab=VDD}
N 120 -440 120 -390 {lab=VDD}
N 120 -440 410 -440 {lab=VDD}
N 410 -440 410 -390 {lab=VDD}
N 80 -360 80 -200 {lab=A}
N 80 -200 230 -200 {lab=A}
N 260 -560 260 -440 {lab=VDD}
N 270 -90 380 -90 {lab=VSS}
N 270 -200 380 -200 {lab=VSS}
N 30 -360 80 -360 {lab=A}
N 270 -260 490 -260 {lab=Y}
N 450 -360 490 -360 {lab=B}
N 270 -60 270 0 {lab=VSS}
N 190 -90 230 -90 {lab=B}
C {iopin.sym} 260 -560 0 0 {name=p3 lab=VDD}
C {lab_pin.sym} 270 -360 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 -200 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 -90 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {iopin.sym} 270 0 0 0 {name=p4 lab=VSS}
C {ipin.sym} 30 -360 0 0 {name=p1 lab=A}
C {ipin.sym} 490 -360 0 1 {name=p2 lab=B}
C {opin.sym} 490 -260 0 0 {name=p9 lab=Y}
C {lab_pin.sym} 190 -90 0 0 {name=p6 sig_type=std_logic lab=B}
C {symbols/nfet_05v0.sym} 250 -200 0 0 {name=M1
L=0.60u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 250 -90 0 0 {name=M2
L=0.60u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 100 -360 0 0 {name=M3
L=0.50u
W=0.30u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 430 -360 0 1 {name=M4
L=0.50u
W=0.30u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
