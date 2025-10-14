v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -140 120 -90 {lab=#net1}
N 120 -140 160 -140 {lab=#net1}
N 160 -140 160 -120 {lab=#net1}
N 160 -220 160 -140 {lab=#net1}
N 200 -190 200 -160 {lab=TIEH}
N 200 -160 260 -160 {lab=TIEH}
N 200 -280 200 -250 {lab=VDD}
N 200 -220 210 -220 {lab=VDD}
N 210 -280 210 -220 {lab=VDD}
N 200 -280 210 -280 {lab=VDD}
N 160 -90 170 -90 {lab=VSS}
N 170 -90 170 -40 {lab=VSS}
N 160 -40 170 -40 {lab=VSS}
N 160 -60 160 -40 {lab=VSS}
C {symbols/pfet_06v0.sym} 180 -220 0 0 {name=M1
L=0.55u
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
C {symbols/nfet_06v0.sym} 140 -90 0 0 {name=M2
L=0.70u
W=1u
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
C {iopin.sym} 160 -40 2 0 {name=p1 lab=VSS}
C {iopin.sym} 210 -280 0 0 {name=p2 lab=VDD}
C {iopin.sym} 260 -160 0 0 {name=p3 lab=TIEH}
