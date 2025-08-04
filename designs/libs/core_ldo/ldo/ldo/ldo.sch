v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 970 -1010 1030 -1010 {lab=VREF}
N 1110 -850 1110 -790 {lab=IBIAS}
N 1310 -970 1310 -850 {lab=Vota}
N 1310 -850 1350 -850 {lab=Vota}
N 1510 -850 1550 -850 {lab=VOUT}
N 1550 -940 1550 -850 {lab=VOUT}
N 1310 -970 1510 -970 {lab=Vota}
N 990 -930 1030 -930 {lab=#net1}
N 990 -930 990 -720 {lab=#net1}
N 1550 -970 1570 -970 {lab=VDD}
N 1570 -1020 1570 -970 {lab=VDD}
N 1550 -1020 1570 -1020 {lab=VDD}
N 1150 -1170 1150 -1090 {lab=VDD}
N 1550 -1110 1550 -1000 {lab=VDD}
N 1150 -850 1150 -530 {lab=VSS}
N 1550 -890 1630 -890 {lab=VOUT}
N 1410 -850 1450 -850 {lab=#net2}
N 960 -550 960 -530 {lab=SUB}
N 1270 -970 1290 -970 {lab=Vota}
N 1150 -1130 1530 -1130 {lab=VDD}
N 1550 -1130 1550 -1110 {lab=VDD}
N 1290 -970 1310 -970 {lab=Vota}
N 990 -720 990 -710 {lab=#net1}
N 1530 -1130 1550 -1130 {lab=VDD}
N 1150 -570 1550 -570 {lab=VSS}
N 1480 -830 1480 -810 {lab=VDD}
N 1510 -780 1530 -780 {lab=VDD}
N 1510 -640 1530 -640 {lab=VDD}
N 1550 -610 1550 -570 {lab=VSS}
N 1550 -750 1550 -670 {lab=#net1}
N 1550 -850 1550 -810 {lab=VOUT}
N 1480 -810 1480 -640 {lab=VDD}
N 1480 -640 1510 -640 {lab=VDD}
N 1480 -780 1510 -780 {lab=VDD}
N 1320 -710 1550 -710 {lab=#net1}
N 990 -710 1260 -710 {lab=#net1}
N 1260 -710 1320 -710 {lab=#net1}
C {iopin.sym} 1150 -1170 3 0 {name=p1 lab=VDD}
C {iopin.sym} 1150 -530 1 0 {name=p2 lab=VSS}
C {iopin.sym} 1630 -890 0 0 {name=p3 lab=VOUT}
C {iopin.sym} 960 -530 1 0 {name=p4 lab=SUB}
C {iopin.sym} 970 -1010 2 0 {name=p5 lab=VREF}
C {iopin.sym} 1110 -790 1 0 {name=p6 lab=IBIAS}
C {symbols/pfet_05v0.sym} 1530 -970 0 0 {name=Mp
L=0.50u
W=100.00u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {noconn.sym} 960 -550 1 0 {name=l1}
C {libs/core_ldo/ldo/ldo_OTA/OTA.sym} 1130 -970 0 0 {name=x1}
C {lab_wire.sym} 1480 -740 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1430 -970 0 0 {name=p8 sig_type=std_logic lab=Vota}
C {symbols/ppolyf_u_1k.sym} 1550 -780 0 0 {name=R1
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1550 -640 0 0 {name=R2
W=1e-6
L=50e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1480 -850 3 0 {name=Rc
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 1380 -850 3 0 {name=Cc
W=10e-6
L=10e-6
model=cap_mim_1f0fF
spiceprefix=X
m=10}
