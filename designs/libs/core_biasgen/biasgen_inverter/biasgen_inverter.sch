v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -250 120 -250 {lab=IN}
N 90 -250 90 -130 {lab=IN}
N 90 -130 120 -130 {lab=IN}
N 160 -220 160 -160 {lab=OUT}
N 160 -100 160 -60 {lab=VSS}
N 160 -310 160 -280 {lab=VDD}
N 160 -190 200 -190 {lab=OUT}
N 160 -250 170 -250 {lab=VDD}
N 170 -310 170 -250 {lab=VDD}
N 160 -310 170 -310 {lab=VDD}
N 160 -130 170 -130 {lab=VSS}
N 170 -130 170 -60 {lab=VSS}
N 160 -60 170 -60 {lab=VSS}
C {symbols/nfet_05v0.sym} 140 -130 0 0 {name=M1
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
C {symbols/pfet_05v0.sym} 140 -250 0 0 {name=M2
L=0.50u
W=0.60u
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
C {iopin.sym} 160 -310 2 0 {name=p1 lab=VDD}
C {iopin.sym} 160 -60 2 0 {name=p2 lab=VSS}
C {ipin.sym} 90 -190 0 0 {name=p3 lab=IN}
C {opin.sym} 200 -190 0 0 {name=p4 lab=OUT}
