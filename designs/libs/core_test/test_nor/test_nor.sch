v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -420 320 -370 {lab=#net1}
N 170 -280 170 -240 {lab=Y}
N 170 -280 490 -280 {lab=Y}
N 490 -280 490 -240 {lab=Y}
N 320 -310 320 -280 {lab=Y}
N 170 -210 170 -180 {lab=VSS}
N 490 -210 490 -180 {lab=VSS}
N 170 -180 170 -130 {lab=VSS}
N 170 -130 490 -130 {lab=VSS}
N 490 -180 490 -130 {lab=VSS}
N 320 -530 320 -480 {lab=VDD}
N 320 -480 320 -450 {lab=VDD}
N 320 -340 420 -340 {lab=VDD}
N 320 -130 320 -90 {lab=VSS}
N 90 -210 130 -210 {lab=B}
N 530 -210 570 -210 {lab=A}
N 240 -450 280 -450 {lab=A}
N 240 -340 280 -340 {lab=B}
C {symbols/nfet_03v3.sym} 150 -210 0 0 {name=M1
L=0.28u
W=0.3u
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
C {symbols/pfet_03v3.sym} 300 -450 0 0 {name=M2
L=0.28u
W=0.3u
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
C {symbols/pfet_03v3.sym} 300 -340 0 0 {name=M3
L=0.28u
W=0.3u
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
C {symbols/nfet_03v3.sym} 510 -210 0 1 {name=M4
L=0.28u
W=0.3u
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
C {lab_pin.sym} 570 -210 0 1 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} 90 -210 0 0 {name=p1 sig_type=std_logic lab=B}
C {iopin.sym} 320 -530 0 0 {name=p3 lab=VDD}
C {iopin.sym} 320 -90 0 0 {name=p4 lab=VSS}
C {opin.sym} 490 -280 0 0 {name=p5 lab=Y}
C {lab_pin.sym} 420 -340 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {ipin.sym} 240 -450 0 0 {name=p7 lab=A}
C {ipin.sym} 240 -340 0 0 {name=p8 lab=B}
