v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -320 150 -320 {lab=in}
N 120 -320 120 -200 {lab=in}
N 120 -200 150 -200 {lab=in}
N 190 -350 190 -320 {lab=VDD}
N 190 -290 190 -230 {lab=#net1}
N 190 -200 190 -170 {lab=VSS}
N 340 -320 370 -320 {lab=#net1}
N 340 -320 340 -200 {lab=#net1}
N 340 -200 370 -200 {lab=#net1}
N 410 -350 410 -320 {lab=VDD}
N 410 -290 410 -230 {lab=out}
N 410 -200 410 -170 {lab=VSS}
N 190 -260 340 -260 {lab=#net1}
N 190 -170 190 -130 {lab=VSS}
N 410 -170 410 -130 {lab=VSS}
N 190 -410 190 -350 {lab=VDD}
N 410 -410 410 -350 {lab=VDD}
N 530 -540 530 -410 {lab=VDD}
N 540 -130 540 -10 {lab=VSS}
N 30 -260 120 -260 {lab=in}
N 190 -130 540 -130 {lab=VSS}
N 190 -410 530 -410 {lab=VDD}
N 410 -260 590 -260 {lab=out}
C {symbols/pfet_03v3.sym} 170 -320 0 0 {name=M16
L=0.28u
W=1u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 170 -200 0 0 {name=M17
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {ipin.sym} 30 -260 0 0 {name=p1 lab=in
}
C {opin.sym} 590 -260 0 0 {name=p2 lab=out}
C {iopin.sym} 530 -540 0 0 {name=p3 lab=VDD}
C {iopin.sym} 540 -10 0 0 {name=p4 lab=VSS}
C {symbols/nfet_03v3.sym} 390 -200 0 0 {name=M2
L=0.28u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 390 -320 0 0 {name=M1
L=0.28u
W=1u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
