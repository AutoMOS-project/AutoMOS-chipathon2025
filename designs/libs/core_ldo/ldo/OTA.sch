v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 640 -800 660 -800 {lab=VSS}
N 640 -800 640 -750 {lab=VSS}
N 640 -750 660 -750 {lab=VSS}
N 1340 -800 1360 -800 {lab=VSS}
N 1360 -800 1360 -750 {lab=VSS}
N 1340 -750 1360 -750 {lab=VSS}
N 1180 -990 1180 -930 {lab=#net1}
N 1180 -930 1340 -930 {lab=#net1}
N 1180 -1020 1200 -1020 {lab=#net1}
N 1200 -1020 1200 -970 {lab=#net1}
N 1180 -970 1200 -970 {lab=#net1}
N 1100 -1020 1140 -1020 {lab=VREF}
N 1500 -990 1500 -930 {lab=#net1}
N 1340 -930 1500 -930 {lab=#net1}
N 1480 -1020 1500 -1020 {lab=#net1}
N 1480 -1020 1480 -970 {lab=#net1}
N 1480 -970 1500 -970 {lab=#net1}
N 1540 -1020 1580 -1020 {lab=VFB}
N 1180 -1170 1180 -1050 {lab=#net2}
N 1500 -1170 1500 -1050 {lab=#net3}
N 1180 -1290 1180 -1230 {lab=VDD}
N 1500 -1290 1500 -1230 {lab=VDD}
N 1340 -1330 1340 -1290 {lab=VDD}
N 1340 -930 1340 -830 {lab=#net1}
N 1740 -640 1760 -640 {lab=VSS}
N 1760 -640 1760 -590 {lab=VSS}
N 1740 -590 1760 -590 {lab=VSS}
N 1740 -920 1800 -920 {lab=VOTA}
N 1180 -1200 1200 -1200 {lab=VDD}
N 1200 -1250 1200 -1200 {lab=VDD}
N 1180 -1250 1200 -1250 {lab=VDD}
N 1480 -1200 1500 -1200 {lab=VDD}
N 1480 -1250 1480 -1200 {lab=VDD}
N 1480 -1250 1500 -1250 {lab=VDD}
N 940 -700 940 -670 {lab=#net4}
N 980 -640 1020 -640 {lab=#net4}
N 940 -1170 940 -700 {lab=#net4}
N 940 -610 940 -550 {lab=VSS}
N 920 -640 940 -640 {lab=VSS}
N 920 -640 920 -590 {lab=VSS}
N 920 -590 940 -590 {lab=VSS}
N 980 -1200 1140 -1200 {lab=#net2}
N 1740 -1170 1740 -670 {lab=VOTA}
N 1540 -1200 1700 -1200 {lab=#net3}
N 1740 -1290 1740 -1230 {lab=VDD}
N 1020 -640 1700 -640 {lab=#net4}
N 940 -550 1740 -550 {lab=VSS}
N 1740 -610 1740 -550 {lab=VSS}
N 1340 -770 1340 -550 {lab=VSS}
N 1080 -1120 1180 -1120 {lab=#net2}
N 1080 -1200 1080 -1120 {lab=#net2}
N 1040 -720 1040 -640 {lab=#net4}
N 940 -720 1040 -720 {lab=#net4}
N 1500 -1120 1600 -1120 {lab=#net3}
N 1600 -1200 1600 -1120 {lab=#net3}
N 940 -1290 940 -1230 {lab=VDD}
N 940 -1290 1740 -1290 {lab=VDD}
N 1740 -1200 1760 -1200 {lab=VDD}
N 1760 -1250 1760 -1200 {lab=VDD}
N 1740 -1250 1760 -1250 {lab=VDD}
N 920 -1200 940 -1200 {lab=VDD}
N 920 -1250 920 -1200 {lab=VDD}
N 920 -1250 940 -1250 {lab=VDD}
N 700 -800 1300 -800 {lab=IBIAS}
N 660 -550 940 -550 {lab=VSS}
N 660 -770 660 -550 {lab=VSS}
N 760 -880 760 -800 {lab=IBIAS}
N 660 -880 760 -880 {lab=IBIAS}
N 660 -920 660 -830 {lab=IBIAS}
N 1170 -550 1170 -510 {lab=VSS}
C {iopin.sym} 1340 -1330 3 0 {name=p1 lab=VDD}
C {iopin.sym} 1170 -510 1 0 {name=p2 lab=VSS}
C {iopin.sym} 1800 -920 0 0 {name=p3 lab=VOTA}
C {iopin.sym} 1100 -1020 2 0 {name=p5 lab=VREF}
C {iopin.sym} 660 -920 3 0 {name=p6 lab=IBIAS}
C {iopin.sym} 1580 -1020 0 0 {name=p7 lab=VFB}
C {title-3.sym} 0 0 0 0 {name=l2 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {symbols/pfet_05v0.sym} 1160 -1200 0 0 {name=M3
L=2.00u
W=8.00u
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
C {symbols/pfet_05v0.sym} 1520 -1200 0 1 {name=M4
L=2.00u
W=8.00u
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
C {symbols/pfet_05v0.sym} 960 -1200 0 1 {name=M5
L=2.00u
W=8.00u
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
C {symbols/pfet_05v0.sym} 1720 -1200 0 0 {name=M6
L=2.00u
W=8.00u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 680 -800 0 1 {name=M9
L=2.00u
W=4.00u
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
C {symbols/nfet_05v0.sym} 1320 -800 0 0 {name=M10
L=2.00u
W=4.00u
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
C {symbols/nfet_05v0.sym} 960 -640 0 1 {name=M7
L=2.00u
W=4.00u
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
C {symbols/nfet_05v0.sym} 1720 -640 0 0 {name=M8
L=2.00u
W=4.00u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 1160 -1020 0 0 {name=M1
L=0.60u
W=40.00u
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
C {symbols/nfet_05v0.sym} 1520 -1020 0 1 {name=M2
L=0.60u
W=40.00u
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
