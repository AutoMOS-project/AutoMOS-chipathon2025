v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 920 -390 920 -340 {lab=Q}
N 850 -420 880 -420 {lab=#net1}
N 850 -310 880 -310 {lab=#net1}
N 920 -280 920 -240 {lab=#net2}
N 920 -480 920 -450 {lab=#net3}
N 920 -310 920 -280 {lab=#net2}
N 920 -450 920 -420 {lab=#net3}
N 1140 -390 1140 -340 {lab=QB}
N 1070 -420 1100 -420 {lab=Q}
N 1070 -310 1100 -310 {lab=Q}
N 1140 -480 1140 -450 {lab=#net3}
N 1140 -310 1140 -280 {lab=#net2}
N 1140 -450 1140 -420 {lab=#net3}
N 1070 -420 1070 -310 {lab=Q}
N 850 -420 850 -310 {lab=#net1}
N 920 -370 1070 -370 {lab=Q}
N 680 -250 680 -210 {lab=#net4}
N 680 -410 680 -310 {lab=#net1}
N 680 -360 850 -360 {lab=#net1}
N 680 -500 680 -470 {lab=#net3}
N 580 -440 640 -440 {lab=#net5}
N 580 -440 580 -180 {lab=#net5}
N 580 -180 640 -180 {lab=#net5}
N 470 -500 470 -470 {lab=#net3}
N 370 -440 430 -440 {lab=CLK}
N 370 -440 370 -180 {lab=CLK}
N 370 -180 430 -180 {lab=CLK}
N 470 -410 470 -360 {lab=#net6}
N 470 -300 470 -210 {lab=#net5}
N 470 -250 580 -250 {lab=#net5}
N 260 -500 260 -470 {lab=#net3}
N 160 -440 220 -440 {lab=D}
N 160 -440 160 -180 {lab=D}
N 160 -180 220 -180 {lab=D}
N 260 -410 260 -360 {lab=#net7}
N 260 -300 260 -210 {lab=#net8}
N 260 -380 400 -380 {lab=#net7}
N 400 -380 400 -330 {lab=#net7}
N 400 -330 430 -330 {lab=#net7}
N 110 -330 160 -330 {lab=D}
N 190 -330 220 -330 {lab=CLK}
N 190 -330 190 -120 {lab=CLK}
N 130 -120 190 -120 {lab=CLK}
N 120 -120 130 -120 {lab=CLK}
N 190 -120 370 -120 {lab=CLK}
N 370 -180 370 -120 {lab=CLK}
N 370 -120 610 -120 {lab=CLK}
N 610 -280 610 -120 {lab=CLK}
N 610 -280 640 -280 {lab=CLK}
N 260 -150 260 -70 {lab=#net2}
N 260 -70 680 -70 {lab=#net2}
N 680 -150 680 -70 {lab=#net2}
N 470 -150 470 -70 {lab=#net2}
N 920 -240 920 -70 {lab=#net2}
N 1140 -280 1140 -70 {lab=#net2}
N 680 -70 1140 -70 {lab=#net2}
N 680 -180 680 -150 {lab=#net2}
N 680 -280 770 -280 {lab=VDD}
N 680 -470 680 -440 {lab=#net3}
N 470 -180 470 -160 {lab=#net9}
N 470 -470 470 -440 {lab=#net3}
N 470 -330 520 -330 {lab=VDD}
N 260 -330 300 -330 {lab=VSS}
N 260 -470 260 -440 {lab=#net3}
N 260 -500 1140 -500 {lab=#net3}
N 1140 -500 1140 -480 {lab=#net3}
N 920 -500 920 -480 {lab=#net3}
N 1010 -370 1010 -330 {lab=Q}
N 1140 -370 1200 -370 {lab=QB}
N 620 -550 620 -500 {lab=#net3}
N 630 -70 630 -30 {lab=#net2}
C {symbols/nfet_03v3.sym} 900 -310 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} 900 -420 0 0 {name=M6
L=0.28u
W=2u
nf=1
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
C {symbols/nfet_03v3.sym} 1120 -310 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 1120 -420 0 0 {name=M2
L=0.28u
W=2u
nf=1
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
C {symbols/pfet_03v3.sym} 660 -440 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 660 -280 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 660 -180 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} 450 -440 0 0 {name=M8
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
C {symbols/pfet_03v3.sym} 450 -330 0 0 {name=M9
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
C {symbols/nfet_03v3.sym} 450 -180 0 0 {name=M10
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
C {symbols/pfet_03v3.sym} 240 -440 0 0 {name=M11
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
C {symbols/nfet_03v3.sym} 240 -330 0 0 {name=M12
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 240 -180 0 0 {name=M13
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
C {lab_pin.sym} 770 -280 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -330 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -330 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 -330 0 0 {name=p1 sig_type=std_logic lab=D}
C {lab_pin.sym} 120 -120 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 1200 -370 0 1 {name=p3 sig_type=std_logic lab=QB}
C {lab_pin.sym} 1010 -330 0 1 {name=p4 sig_type=std_logic lab=Q}
C {lab_pin.sym} 620 -550 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 630 -30 0 0 {name=p9 sig_type=std_logic lab=VSS}
