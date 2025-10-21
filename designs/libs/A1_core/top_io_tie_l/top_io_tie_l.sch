v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -120 200 -70 {lab=#net1}
N 240 -120 240 -100 {lab=TIEH}
N 160 -210 160 -160 {lab=#net1}
N 240 -120 300 -120 {lab=TIEH}
N 200 -270 200 -240 {lab=VDD}
N 200 -210 210 -210 {lab=VDD}
N 210 -270 210 -210 {lab=VDD}
N 200 -270 210 -270 {lab=VDD}
N 240 -70 250 -70 {lab=VSS}
N 250 -70 250 -20 {lab=VSS}
N 240 -20 250 -20 {lab=VSS}
N 240 -40 240 -20 {lab=VSS}
N 200 -180 200 -120 {lab=#net1}
N 160 -160 200 -160 {lab=#net1}
C {symbols/pfet_06v0.sym} 180 -210 0 0 {name=M1
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
C {symbols/nfet_06v0.sym} 220 -70 0 0 {name=M2
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
C {iopin.sym} 240 -20 2 0 {name=p1 lab=VSS}
C {iopin.sym} 210 -270 0 0 {name=p2 lab=VDD}
C {iopin.sym} 300 -120 0 0 {name=p3 lab=TIEL}
