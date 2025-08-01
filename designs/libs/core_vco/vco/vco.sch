v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -20 130 0 {lab=SUB}
N 480 -460 1150 -460 {lab=VDD}
N 1150 -460 1150 -410 {lab=VDD}
N 890 -460 890 -410 {lab=VDD}
N 660 -460 660 -410 {lab=VDD}
N 660 -410 660 -380 {lab=VDD}
N 890 -410 890 -380 {lab=VDD}
N 1150 -410 1150 -380 {lab=VDD}
N 300 -350 370 -350 {lab=IBIAS}
N 370 -380 370 -350 {lab=IBIAS}
N 480 -0 480 30 {lab=VSS}
N 390 -0 440 -0 {lab=VIN}
N 590 -240 620 -240 {lab=#net1}
N 590 -240 590 -120 {lab=#net1}
N 590 -120 620 -120 {lab=#net1}
N 820 -240 850 -240 {lab=#net2}
N 820 -240 820 -120 {lab=#net2}
N 820 -120 850 -120 {lab=#net2}
N 1080 -240 1110 -240 {lab=#net3}
N 1080 -240 1080 -120 {lab=#net3}
N 1080 -120 1110 -120 {lab=#net3}
N 660 -350 660 -270 {lab=#net4}
N 890 -350 890 -270 {lab=#net5}
N 1150 -350 1150 -270 {lab=#net6}
N 660 -210 660 -150 {lab=#net2}
N 660 -180 820 -180 {lab=#net2}
N 890 -210 890 -150 {lab=#net3}
N 890 -180 1080 -180 {lab=#net3}
N 1150 -210 1150 -150 {lab=#net7}
N 1150 -90 1150 -30 {lab=#net8}
N 1150 -0 1150 30 {lab=VSS}
N 890 0 890 30 {lab=VSS}
N 890 -90 890 -30 {lab=#net9}
N 660 -90 660 -30 {lab=#net10}
N 660 0 660 30 {lab=VSS}
N 430 -0 430 70 {lab=VIN}
N 430 70 620 70 {lab=VIN}
N 620 0 620 70 {lab=VIN}
N 480 30 480 50 {lab=VSS}
N 480 50 890 50 {lab=VSS}
N 890 50 1150 50 {lab=VSS}
N 1150 30 1150 50 {lab=VSS}
N 890 30 890 50 {lab=VSS}
N 660 30 660 50 {lab=VSS}
N 850 -0 850 70 {lab=VIN}
N 620 70 850 70 {lab=VIN}
N 850 70 1110 70 {lab=VIN}
N 1110 0 1110 70 {lab=VIN}
N 560 -180 590 -180 {lab=#net1}
N 1300 -180 1300 130 {lab=#net7}
N 1150 -180 1300 -180 {lab=#net7}
N 830 -490 830 -460 {lab=VDD}
N 660 -120 730 -120 {lab=VSS}
N 890 -120 970 -120 {lab=VSS}
N 1150 -120 1230 -120 {lab=VSS}
N 650 -240 730 -240 {lab=VDD}
N 890 -240 970 -240 {lab=VDD}
N 1150 -240 1230 -240 {lab=VDD}
N 340 -380 370 -380 {lab=IBIAS}
N 480 -460 480 -410 {lab=VDD}
N 370 -380 440 -380 {lab=IBIAS}
N 480 -350 480 -30 {lab=#net11}
N 300 -460 480 -460 {lab=VDD}
N 300 -460 300 -410 {lab=VDD}
N 290 -270 300 -270 {lab=IBIAS}
N 300 -350 300 -270 {lab=IBIAS}
N 480 -410 480 -380 {lab=VDD}
N 300 -410 300 -380 {lab=VDD}
N 1150 -460 1470 -460 {lab=VDD}
N 1470 -460 1480 -460 {lab=VDD}
N 1480 -460 1480 -220 {lab=VDD}
N 1300 -180 1420 -180 {lab=#net7}
N 1150 50 1480 50 {lab=VSS}
N 1480 -140 1480 50 {lab=VSS}
N 1550 -180 1600 -180 {lab=VOUT}
N 1000 180 1300 180 {lab=#net7}
N 1300 130 1300 180 {lab=#net7}
N 1000 210 1080 210 {lab=EN}
N 950 120 950 140 {lab=VDD}
N 950 120 980 120 {lab=VDD}
N 950 260 950 280 {lab=VSS}
N 950 280 980 280 {lab=VSS}
N 560 -180 560 190 {lab=#net1}
N 560 190 560 200 {lab=#net1}
N 560 200 880 200 {lab=#net1}
C {iopin.sym} 830 -490 3 0 {name=p1 lab=VDD}
C {iopin.sym} 800 50 3 0 {name=p2 lab=VSS}
C {iopin.sym} 130 0 1 0 {name=p3 lab=SUB}
C {noconn.sym} 130 -20 0 0 {name=l1}
C {iopin.sym} 290 -270 2 0 {name=p6 lab=IBIAS}
C {iopin.sym} 1600 -180 0 0 {name=p4 lab=VOUT}
C {ipin.sym} 1080 210 0 1 {name=p5 lab=EN}
C {iopin.sym} 390 0 2 0 {name=p7 lab=VIN}
C {symbols/pfet_03v3.sym} 320 -380 0 1 {name=M1
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 1130 -380 0 0 {name=M2
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 640 -380 0 0 {name=M3
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 870 -380 0 0 {name=M4
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 1130 -240 0 0 {name=M5
L=0.28u
W=3u
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
C {symbols/pfet_03v3.sym} 640 -240 0 0 {name=M6
L=0.28u
W=3u
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
C {symbols/pfet_03v3.sym} 870 -240 0 0 {name=M7
L=0.28u
W=3u
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
C {symbols/nfet_03v3.sym} 1130 -120 0 0 {name=M8
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 640 -120 0 0 {name=M9
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 870 -120 0 0 {name=M10
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 1130 0 0 0 {name=M11
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 640 0 0 0 {name=M12
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 870 0 0 0 {name=M13
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 460 0 0 0 {name=M14
L=0.28u
W=0.22u
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
C {lab_pin.sym} 730 -240 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 970 -240 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1230 -240 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 460 -380 0 0 {name=M15
L=0.28u
W=0.22u
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
C {lab_pin.sym} 730 -120 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 970 -120 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1230 -120 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {libs/core_vco/vco_buffer/vco_buffer.sym} 1420 -140 0 0 {name=x1}
C {libs/core_vco/vco_and/vco_and.sym} 1000 260 0 1 {name=x2}
C {lab_pin.sym} 980 120 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 980 280 0 1 {name=p15 sig_type=std_logic lab=VSS
}
