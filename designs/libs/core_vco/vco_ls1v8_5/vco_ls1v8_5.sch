v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 -480 490 -480 {lab=VDDH}
N 490 -450 490 -420 {lab=VDDH}
N 190 -450 190 -420 {lab=VDDH}
N 490 -260 490 -230 {lab=VSS}
N 190 -260 190 -230 {lab=VSS}
N 190 -480 190 -450 {lab=VDDH}
N 490 -480 490 -450 {lab=VDDH}
N 190 -390 190 -290 {lab=#net1}
N 490 -390 490 -290 {lab=#net2}
N 230 -420 290 -420 {lab=#net2}
N 290 -420 420 -360 {lab=#net2}
N 420 -360 490 -360 {lab=#net2}
N 420 -420 450 -420 {lab=#net1}
N 290 -360 420 -420 {lab=#net1}
N 190 -360 290 -360 {lab=#net1}
N 190 -230 190 -190 {lab=VSS}
N 190 -190 490 -190 {lab=VSS}
N 490 -230 490 -190 {lab=VSS}
N 710 -290 710 -240 {lab=#net3}
N 530 -260 710 -260 {lab=#net3}
N 750 -320 780 -320 {lab=in}
N 780 -320 780 -210 {lab=in}
N 750 -210 780 -210 {lab=in}
N 350 -190 350 -140 {lab=VSS}
N 350 -140 710 -140 {lab=VSS}
N 710 -180 710 -140 {lab=VSS}
N 90 -260 150 -260 {lab=in}
N 90 -260 130 -260 {lab=in}
N 130 -260 130 -80 {lab=in}
N 130 -80 860 -80 {lab=in}
N 860 -260 860 -80 {lab=in}
N 780 -260 860 -260 {lab=in}
N 350 -510 350 -480 {lab=VDDH}
N 710 -380 710 -350 {lab=VDDL}
N 560 -160 560 -140 {lab=VSS}
N 490 -330 530 -330 {lab=#net2}
N 120 -680 160 -680 {lab=in}
N 120 -700 160 -700 {lab=out}
N 120 -720 160 -720 {lab=VDDL}
N 120 -740 160 -740 {lab=VDDH}
N 120 -760 160 -760 {lab=VSS}
N 710 -210 710 -180 {lab=VSS}
N 710 -350 710 -320 {lab=VDDL}
N 1080 -340 1080 -290 {lab=#net4}
N 1010 -370 1040 -370 {lab=#net2}
N 1010 -370 1010 -260 {lab=#net2}
N 1010 -260 1040 -260 {lab=#net2}
N 1080 -230 1080 -190 {lab=VSS}
N 1080 -430 1080 -400 {lab=VDDH}
N 1080 -260 1080 -230 {lab=VSS}
N 1080 -400 1080 -370 {lab=VDDH}
N 530 -330 590 -330 {lab=#net2}
N 590 -440 590 -330 {lab=#net2}
N 590 -440 930 -440 {lab=#net2}
N 930 -440 930 -310 {lab=#net2}
N 930 -310 1010 -310 {lab=#net2}
N 1250 -340 1250 -290 {lab=#net5}
N 1180 -370 1210 -370 {lab=#net4}
N 1180 -370 1180 -260 {lab=#net4}
N 1180 -260 1210 -260 {lab=#net4}
N 1250 -230 1250 -190 {lab=VSS}
N 1250 -430 1250 -400 {lab=VDDH}
N 1250 -260 1250 -230 {lab=VSS}
N 1250 -400 1250 -370 {lab=VDDH}
N 1080 -430 1250 -430 {lab=VDDH}
N 1080 -190 1250 -190 {lab=VSS}
N 1080 -310 1180 -310 {lab=#net4}
N 1420 -340 1420 -290 {lab=#net6}
N 1350 -370 1380 -370 {lab=#net5}
N 1350 -370 1350 -260 {lab=#net5}
N 1350 -260 1380 -260 {lab=#net5}
N 1420 -230 1420 -190 {lab=VSS}
N 1420 -430 1420 -400 {lab=VDDH}
N 1420 -260 1420 -230 {lab=VSS}
N 1420 -400 1420 -370 {lab=VDDH}
N 1250 -430 1420 -430 {lab=VDDH}
N 1250 -190 1420 -190 {lab=VSS}
N 1250 -310 1350 -310 {lab=#net5}
N 1590 -340 1590 -290 {lab=out}
N 1520 -370 1550 -370 {lab=#net6}
N 1520 -370 1520 -260 {lab=#net6}
N 1520 -260 1550 -260 {lab=#net6}
N 1590 -230 1590 -190 {lab=VSS}
N 1590 -430 1590 -400 {lab=VDDH}
N 1590 -260 1590 -230 {lab=VSS}
N 1590 -400 1590 -370 {lab=VDDH}
N 1420 -430 1590 -430 {lab=VDDH}
N 1420 -190 1590 -190 {lab=VSS}
N 1420 -300 1520 -300 {lab=#net6}
C {symbols/pfet_05v0.sym} 470 -420 0 0 {name=M1
L=0.5u
W=0.3u
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
C {symbols/pfet_05v0.sym} 210 -420 0 1 {name=M2
L=0.5u
W=0.3u
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
C {symbols/nfet_05v0.sym} 170 -260 0 0 {name=M3
L=0.6u
W=0.6u
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
C {symbols/nfet_05v0.sym} 510 -260 0 1 {name=M4
L=0.6u
W=0.6u
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
C {symbols/nfet_03v3.sym} 730 -210 0 1 {name=M5
L=0.28u
W=1.5u
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
C {symbols/pfet_03v3.sym} 730 -320 0 1 {name=M6
L=3u
W=0.3u
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
C {lab_pin.sym} 90 -260 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 560 -160 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 350 -510 0 0 {name=p3 sig_type=std_logic lab=VDDH}
C {lab_pin.sym} 710 -380 0 0 {name=p4 sig_type=std_logic lab=VDDL}
C {iopin.sym} 160 -740 0 0 {name=p5 lab=VDDH}
C {iopin.sym} 160 -720 0 0 {name=p6 lab=VDDL}
C {opin.sym} 160 -700 0 0 {name=p7 lab=out}
C {lab_pin.sym} 1590 -310 0 1 {name=p8 sig_type=std_logic lab=out}
C {iopin.sym} 160 -760 0 0 {name=p9 lab=VSS}
C {ipin.sym} 160 -680 0 1 {name=p10 lab=in}
C {lab_pin.sym} 120 -760 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -720 0 0 {name=p13 sig_type=std_logic lab=VDDL}
C {lab_pin.sym} 120 -740 0 0 {name=p11 sig_type=std_logic lab=VDDH}
C {lab_pin.sym} 120 -680 0 0 {name=p14 sig_type=std_logic lab=in}
C {lab_pin.sym} 120 -700 0 0 {name=p15 sig_type=std_logic lab=out}
C {lab_pin.sym} 1080 -430 0 0 {name=p16 sig_type=std_logic lab=VDDH}
C {symbols/pfet_05v0.sym} 1060 -370 0 0 {name=M7
L=0.6u
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
C {symbols/nfet_05v0.sym} 1060 -260 0 0 {name=M8
L=0.6u
W=1u
nf=2
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
C {lab_pin.sym} 1080 -190 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {symbols/pfet_05v0.sym} 1230 -370 0 0 {name=M9
L=0.6u
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
C {symbols/pfet_05v0.sym} 1400 -370 0 0 {name=M12
L=0.6u
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
C {symbols/pfet_05v0.sym} 1570 -370 0 0 {name=M14
L=0.6u
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
C {symbols/nfet_05v0.sym} 1230 -260 0 0 {name=M10
L=0.6u
W=1u
nf=2
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
C {symbols/nfet_05v0.sym} 1400 -260 0 0 {name=M11
L=0.6u
W=1u
nf=2
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
C {symbols/nfet_05v0.sym} 1570 -260 0 0 {name=M13
L=0.6u
W=1u
nf=2
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
