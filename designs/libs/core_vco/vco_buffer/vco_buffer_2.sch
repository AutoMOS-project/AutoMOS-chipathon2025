v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -500 470 -500 {lab=in}
N 440 -500 440 -380 {lab=in}
N 440 -380 470 -380 {lab=in}
N 510 -530 510 -500 {lab=VDD}
N 510 -470 510 -410 {lab=#net1}
N 510 -380 510 -350 {lab=VSS}
N 660 -500 690 -500 {lab=#net1}
N 660 -500 660 -380 {lab=#net1}
N 660 -380 690 -380 {lab=#net1}
N 730 -530 730 -500 {lab=VDD}
N 730 -470 730 -410 {lab=#net2}
N 730 -380 730 -350 {lab=VSS}
N 510 -440 660 -440 {lab=#net1}
N 510 -350 510 -310 {lab=VSS}
N 730 -350 730 -310 {lab=VSS}
N 510 -590 510 -530 {lab=VDD}
N 730 -590 730 -530 {lab=VDD}
N 850 -720 850 -590 {lab=VDD}
N 860 -310 860 -190 {lab=VSS}
N 350 -440 440 -440 {lab=in}
N 510 -310 860 -310 {lab=VSS}
N 510 -590 850 -590 {lab=VDD}
N 730 -440 910 -440 {lab=#net2}
C {symbols/pfet_03v3.sym} 490 -500 0 0 {name=M16
L=0.28u
W=1.2u
nf=4
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
C {symbols/nfet_03v3.sym} 490 -380 0 0 {name=M17
L=0.28u
W=1.2u
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
C {ipin.sym} 350 -440 0 0 {name=p1 lab=in
}
C {opin.sym} 910 -440 0 0 {name=p2 lab=out}
C {iopin.sym} 850 -720 0 0 {name=p3 lab=VDD}
C {iopin.sym} 860 -190 0 0 {name=p4 lab=VSS}
C {symbols/pfet_03v3.sym} 710 -500 0 0 {name=M1
L=0.28u
W=1.2u
nf=4
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
C {symbols/nfet_03v3.sym} 710 -380 0 0 {name=M2
L=0.28u
W=1.2u
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
