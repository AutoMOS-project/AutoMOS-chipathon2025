v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 650 -490 650 -440 {lab=#net1}
N 650 -440 940 -440 {lab=#net1}
N 940 -490 940 -440 {lab=#net1}
N 800 -440 800 -390 {lab=#net1}
N 800 -330 800 -280 {lab=#net2}
N 650 -520 940 -520 {lab=VDD}
N 650 -600 650 -550 {lab=VDD}
N 650 -600 940 -600 {lab=VDD}
N 940 -600 940 -550 {lab=VDD}
N 940 -600 1050 -600 {lab=VDD}
N 610 -520 610 -360 {lab=A}
N 610 -360 760 -360 {lab=A}
N 480 -250 760 -250 {lab=B}
N 980 -650 980 -520 {lab=B}
N 480 -650 980 -650 {lab=B}
N 480 -650 480 -250 {lab=B}
N 410 -520 610 -520 {lab=A}
N 420 -250 480 -250 {lab=B}
N 410 -250 420 -250 {lab=B}
N 800 -220 800 -160 {lab=VSS}
N 790 -720 790 -600 {lab=VDD}
N 1400 -420 1400 -370 {lab=VDD}
N 1400 -310 1400 -260 {lab=Y}
N 1400 -200 1400 -140 {lab=VSS}
N 1400 -600 1400 -420 {lab=VDD}
N 1050 -600 1400 -600 {lab=VDD}
N 1350 -340 1360 -340 {lab=#net1}
N 1290 -340 1350 -340 {lab=#net1}
N 1290 -340 1290 -230 {lab=#net1}
N 1290 -230 1360 -230 {lab=#net1}
N 800 -160 800 -140 {lab=VSS}
N 800 -140 1400 -140 {lab=VSS}
N 1150 -140 1150 -80 {lab=VSS}
N 800 -420 1210 -420 {lab=#net1}
N 1210 -420 1210 -280 {lab=#net1}
N 1210 -280 1290 -280 {lab=#net1}
N 1400 -280 1540 -280 {lab=Y}
N 800 -250 910 -250 {lab=VSS}
N 1400 -230 1470 -230 {lab=VSS}
N 1400 -340 1470 -340 {lab=VDD}
N 800 -360 910 -360 {lab=VSS}
C {symbols/nfet_03v3.sym} 780 -360 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 630 -520 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 960 -520 0 1 {name=M3
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
C {symbols/nfet_03v3.sym} 780 -250 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 1380 -230 0 0 {name=M6
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
C {ipin.sym} 410 -520 0 0 {name=p1 lab=A}
C {ipin.sym} 410 -250 0 0 {name=p2 lab=B}
C {iopin.sym} 790 -720 0 0 {name=p3 lab=VDD}
C {iopin.sym} 1150 -80 0 0 {name=p4 lab=VSS}
C {opin.sym} 1540 -280 0 0 {name=p6 lab=Y}
C {lab_pin.sym} 810 -520 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1470 -340 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 1380 -340 0 0 {name=M5
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
C {lab_pin.sym} 910 -360 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 910 -250 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1470 -230 0 1 {name=p9 sig_type=std_logic lab=VSS}
