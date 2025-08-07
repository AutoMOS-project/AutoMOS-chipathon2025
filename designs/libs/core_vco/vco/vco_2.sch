v {xschem version=3.4.7 file_version=1.2}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
}
V {}
S {}
E {}
N 20 -240 20 -220 {lab=SUB}
N 370 -680 1040 -680 {lab=VDD}
N 1040 -680 1040 -630 {lab=VDD}
N 780 -680 780 -630 {lab=VDD}
N 550 -680 550 -630 {lab=VDD}
N 550 -630 550 -600 {lab=VDD}
N 780 -630 780 -600 {lab=VDD}
N 1040 -630 1040 -600 {lab=VDD}
N 190 -570 260 -570 {lab=IBIAS}
N 260 -600 260 -570 {lab=IBIAS}
N 370 -220 370 -190 {lab=VSS}
N 280 -220 330 -220 {lab=VIN}
N 480 -460 510 -460 {lab=#net1}
N 480 -460 480 -340 {lab=#net1}
N 480 -340 510 -340 {lab=#net1}
N 710 -460 740 -460 {lab=#net2}
N 710 -460 710 -340 {lab=#net2}
N 710 -340 740 -340 {lab=#net2}
N 970 -460 1000 -460 {lab=#net3}
N 970 -460 970 -340 {lab=#net3}
N 970 -340 1000 -340 {lab=#net3}
N 550 -570 550 -490 {lab=#net4}
N 780 -570 780 -490 {lab=#net5}
N 1040 -570 1040 -490 {lab=#net6}
N 550 -430 550 -370 {lab=#net2}
N 550 -400 710 -400 {lab=#net2}
N 780 -430 780 -370 {lab=#net3}
N 780 -400 970 -400 {lab=#net3}
N 1040 -430 1040 -370 {lab=#net7}
N 1040 -310 1040 -250 {lab=#net8}
N 1040 -220 1040 -190 {lab=VSS}
N 780 -220 780 -190 {lab=VSS}
N 780 -310 780 -250 {lab=#net9}
N 550 -310 550 -250 {lab=#net10}
N 550 -220 550 -190 {lab=VSS}
N 320 -220 320 -150 {lab=VIN}
N 320 -150 510 -150 {lab=VIN}
N 510 -220 510 -150 {lab=VIN}
N 370 -190 370 -170 {lab=VSS}
N 370 -170 780 -170 {lab=VSS}
N 780 -170 1040 -170 {lab=VSS}
N 1040 -190 1040 -170 {lab=VSS}
N 780 -190 780 -170 {lab=VSS}
N 550 -190 550 -170 {lab=VSS}
N 740 -220 740 -150 {lab=VIN}
N 510 -150 740 -150 {lab=VIN}
N 740 -150 1000 -150 {lab=VIN}
N 1000 -220 1000 -150 {lab=VIN}
N 450 -400 480 -400 {lab=#net1}
N 1190 -400 1190 -90 {lab=#net7}
N 1040 -400 1190 -400 {lab=#net7}
N 720 -710 720 -680 {lab=VDD}
N 550 -340 620 -340 {lab=VSS}
N 780 -340 860 -340 {lab=VSS}
N 1040 -340 1120 -340 {lab=VSS}
N 540 -460 620 -460 {lab=VDD}
N 780 -460 860 -460 {lab=VDD}
N 1040 -460 1120 -460 {lab=VDD}
N 230 -600 260 -600 {lab=IBIAS}
N 370 -680 370 -630 {lab=VDD}
N 260 -600 330 -600 {lab=IBIAS}
N 370 -570 370 -250 {lab=#net11}
N 190 -680 370 -680 {lab=VDD}
N 190 -680 190 -630 {lab=VDD}
N 180 -490 190 -490 {lab=IBIAS}
N 190 -570 190 -490 {lab=IBIAS}
N 370 -630 370 -600 {lab=VDD}
N 190 -630 190 -600 {lab=VDD}
N 1040 -680 1360 -680 {lab=VDD}
N 1360 -680 1370 -680 {lab=VDD}
N 1370 -680 1370 -440 {lab=VDD}
N 1190 -400 1310 -400 {lab=#net7}
N 1040 -170 1370 -170 {lab=VSS}
N 1370 -360 1370 -170 {lab=VSS}
N 1190 -90 1190 -40 {lab=#net7}
N 450 -400 450 -30 {lab=#net1}
N 450 -30 450 -20 {lab=#net1}
N 450 -20 770 -20 {lab=#net1}
N 300 -650 300 -600 {lab=IBIAS}
N 300 -650 1000 -650 {lab=IBIAS}
N 1000 -650 1000 -600 {lab=IBIAS}
N 740 -650 740 -600 {lab=IBIAS}
N 510 -650 510 -600 {lab=IBIAS}
N 1190 -40 1190 -20 {lab=#net7}
N 1440 -400 1500 -400 {lab=VOUT}
N 890 -10 1190 -10 {lab=#net7}
N 1190 -20 1190 -10 {lab=#net7}
N 840 -100 840 -80 {lab=VDD}
N 840 40 840 70 {lab=VSS}
N 890 -40 930 -40 {lab=#net12}
C {iopin.sym} 720 -710 3 0 {name=p1 lab=VDD}
C {iopin.sym} 690 -170 3 0 {name=p2 lab=VSS}
C {iopin.sym} 20 -220 1 0 {name=p3 lab=SUB}
C {noconn.sym} 20 -240 0 0 {name=l1}
C {iopin.sym} 180 -490 2 0 {name=p6 lab=IBIAS}
C {iopin.sym} 1500 -400 1 0 {name=p4 lab=VOUT}
C {ipin.sym} 930 -40 0 1 {name=p5 lab=EN}
C {iopin.sym} 280 -220 2 0 {name=p7 lab=VIN}
C {symbols/pfet_03v3.sym} 210 -600 0 1 {name=M1
L=0.36u
W=0.36u
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
C {symbols/nfet_03v3.sym} 350 -220 0 0 {name=M14
L=0.36u
W=0.96u
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
C {lab_pin.sym} 620 -460 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 860 -460 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1120 -460 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 350 -600 0 0 {name=M15
L=0.36u
W=1.5u
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
C {lab_pin.sym} 620 -340 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 860 -340 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 -340 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 530 -340 0 0 {name=M9
L=0.5u
W=0.5u
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
C {symbols/pfet_03v3.sym} 530 -460 0 0 {name=M5
L=0.5u
W=0.5u
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
C {symbols/pfet_03v3.sym} 530 -600 0 0 {name=M2
L=0.36u
W=1.5u
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
C {symbols/pfet_03v3.sym} 760 -600 0 0 {name=M3
L=0.36u
W=1.5u
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
C {symbols/pfet_03v3.sym} 1020 -600 0 0 {name=M4
L=0.36u
W=1.5u
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
C {symbols/nfet_03v3.sym} 530 -220 0 0 {name=M11
L=0.36u
W=0.96u
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
C {symbols/nfet_03v3.sym} 760 -220 0 0 {name=M12
L=0.36u
W=0.96u
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
C {symbols/nfet_03v3.sym} 1020 -220 0 0 {name=M13
L=0.36u
W=0.96u
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
C {symbols/pfet_03v3.sym} 760 -460 0 0 {name=M6
L=0.5u
W=0.5u
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
C {symbols/pfet_03v3.sym} 1020 -460 0 0 {name=M7
L=0.5u
W=0.5u
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
C {symbols/nfet_03v3.sym} 760 -340 0 0 {name=M8
L=0.5u
W=0.5u
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
C {symbols/nfet_03v3.sym} 1020 -340 0 0 {name=M10
L=0.5u
W=0.5u
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
C {libs/core_vco/vco_buffer/vco_buffer_2.sym} 1310 -360 0 0 {name=x1}
C {libs/core_vco/vco_and/vco_and.sym} 890 40 0 1 {name=x2}
C {lab_pin.sym} 840 -100 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 840 70 0 0 {name=p15 sig_type=std_logic lab=VSS}
