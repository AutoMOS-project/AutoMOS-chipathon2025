v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 350 -410 350 -360 {lab=VDD}
N 350 -300 350 -250 {lab=OUT}
N 350 -190 350 -130 {lab=VSS}
N 300 -330 310 -330 {lab=IN}
N 240 -330 300 -330 {lab=IN}
N 240 -330 240 -220 {lab=IN}
N 240 -220 310 -220 {lab=IN}
N 160 -270 240 -270 {lab=IN}
N 350 -270 490 -270 {lab=OUT}
N 350 -220 420 -220 {lab=VSS}
N 350 -330 420 -330 {lab=VDD}
C {lab_pin.sym} 420 -330 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 -220 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {opin.sym} 490 -270 0 0 {name=p1 lab=OUT}
C {ipin.sym} 160 -270 0 0 {name=p2 lab=IN}
C {iopin.sym} 350 -410 0 0 {name=p3 lab=VDD}
C {iopin.sym} 350 -130 0 0 {name=p4 lab=VSS}
C {symbols/nfet_05v0.sym} 330 -220 0 0 {name=M1
L=0.60u
W=0.50u
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
C {symbols/pfet_05v0.sym} 330 -330 0 0 {name=M2
L=0.50u
W=0.50u
nf=1
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
