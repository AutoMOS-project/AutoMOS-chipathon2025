v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 3 110 -710 110 -670 {}
L 3 110 -670 120 -680 {}
L 3 100 -680 120 -680 {}
L 3 100 -680 110 -670 {}
L 3 350 -710 350 -670 {}
L 3 350 -670 360 -680 {}
L 3 340 -680 360 -680 {}
L 3 340 -680 350 -670 {}
L 3 660 -710 660 -670 {}
L 3 660 -670 670 -680 {}
L 3 650 -680 670 -680 {}
L 3 650 -680 660 -670 {}
A 3 47.43902439024399 -662.80487804878 46.22096014206645 126.416378519886 360 {}
P 4 1 720 -490 {}
T {2u} 100 -740 0 0 0.4 0.4 {}
T {2u} 340 -740 0 0 0.4 0.4 {}
T {8u} 650 -740 0 0 0.4 0.4 {}
T {IDC (typ)=12u} -100 -740 0 0 0.4 0.4 {}
N 260 -480 260 -430 {lab=#net1}
N 260 -480 350 -480 {lab=#net1}
N 350 -520 350 -480 {lab=#net1}
N 440 -480 440 -430 {lab=#net1}
N 350 -480 440 -480 {lab=#net1}
N 350 -560 350 -520 {lab=#net1}
N 350 -660 350 -620 {lab=VDD}
N 150 -590 310 -590 {lab=ibias}
N 110 -650 110 -620 {lab=VDD}
N 110 -660 110 -650 {lab=VDD}
N 110 -660 350 -660 {lab=VDD}
N 260 -370 260 -240 {lab=#net2}
N 300 -210 400 -210 {lab=#net2}
N 260 -270 320 -270 {lab=#net2}
N 320 -270 320 -210 {lab=#net2}
N 440 -370 440 -240 {lab=#net3}
N 260 -180 260 -150 {lab=VSS}
N 260 -150 440 -150 {lab=VSS}
N 440 -180 440 -150 {lab=VSS}
N 250 -200 250 -150 {lab=VSS}
N 440 -210 450 -210 {lab=VSS}
N 450 -210 450 -150 {lab=VSS}
N 440 -150 450 -150 {lab=VSS}
N 250 -150 260 -150 {lab=VSS}
N 250 -210 250 -200 {lab=VSS}
N 250 -210 260 -210 {lab=VSS}
N 540 -210 620 -210 {lab=#net3}
N 540 -270 540 -210 {lab=#net3}
N 440 -280 540 -280 {lab=#net3}
N 540 -280 540 -270 {lab=#net3}
N 660 -180 660 -150 {lab=VSS}
N 450 -150 520 -150 {lab=VSS}
N 520 -150 660 -150 {lab=VSS}
N 660 -210 670 -210 {lab=VSS}
N 670 -210 670 -150 {lab=VSS}
N 660 -150 670 -150 {lab=VSS}
N 180 -590 180 -530 {lab=ibias}
N 110 -530 180 -530 {lab=ibias}
N 110 -560 110 -480 {lab=ibias}
N 350 -660 660 -660 {lab=VDD}
N 660 -660 660 -620 {lab=VDD}
N 570 -590 620 -590 {lab=ibias}
N 180 -530 560 -530 {lab=ibias}
N 570 -590 570 -530 {lab=ibias}
N 560 -530 570 -530 {lab=ibias}
N 660 -590 670 -590 {lab=VDD}
N 670 -660 670 -590 {lab=VDD}
N 660 -660 670 -660 {lab=VDD}
N 350 -590 360 -590 {lab=VDD}
N 360 -660 360 -590 {lab=VDD}
N 100 -590 110 -590 {lab=VDD}
N 100 -660 100 -590 {lab=VDD}
N 100 -660 110 -660 {lab=VDD}
N 660 -560 660 -240 {lab=vout}
N 260 -400 300 -400 {lab=VDD}
N 400 -400 440 -400 {lab=VDD}
N 200 -400 220 -400 {lab=vn}
N 480 -400 490 -400 {lab=vp}
N 480 -400 490 -400 {lab=vp}
N 660 -400 800 -400 {lab=vout}
N 80 -660 100 -660 {lab=VDD}
N 220 -150 250 -150 {lab=VSS}
N 540 -360 660 -360 {lab=vout}
N 540 -300 540 -280 {lab=#net3}
C {ipin.sym} 200 -400 0 0 {name=p2 lab=vn
}
C {ipin.sym} 490 -400 2 0 {name=p3 lab=vp}
C {lab_pin.sym} 300 -400 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -400 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {opin.sym} 800 -400 0 0 {name=p7 lab=vout}
C {ipin.sym} 110 -480 3 0 {name=p8 lab=ibias
}
C {iopin.sym} 80 -660 2 0 {name=p9 lab=VDD}
C {iopin.sym} 220 -150 2 0 {name=p10 lab=VSS}
C {title.sym} 170 -30 0 0 {name=l1 author="Luighi Viton"}
C {symbols/cap_nmos_03v3_b.sym} 540 -330 0 0 {name=CM
W=15u
L=15u
model=cap_nmos_03v3_b
spiceprefix=X
m=1}
C {symbols/pfet_05v0.sym} 130 -590 0 1 {name=Mpref0
L=1u
W=1u
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
C {symbols/nfet_05v0.sym} 280 -210 0 1 {name=Mnload0
L=2u
W=1u
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
C {symbols/pfet_05v0.sym} 330 -590 0 0 {name=Mpref1
L=1u
W=1u
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
C {symbols/pfet_05v0.sym} 640 -590 0 0 {name=Mpref2
L=1u
W=1u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 240 -400 0 0 {name=Mpdiff0
L=1u
W=4u
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
C {symbols/pfet_05v0.sym} 460 -400 0 1 {name=Mpdiff1
L=1u
W=4u
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
C {symbols/nfet_05v0.sym} 420 -210 0 0 {name=Mnload1
L=2u
W=1u
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
C {symbols/nfet_05v0.sym} 640 -210 0 0 {name=Mncs
L=2u
W=1u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
