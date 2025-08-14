v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 3 1480 -790 1660 -410 {fill=false}
B 3 980 -1620 1430 -1480 {fill=false}
T {Matching (interdigitated)} 1670 -790 0 0 0.2 0.2 {}
T {Dummies} 980 -1650 0 0 0.4 0.4 {}
N 810 -1060 870 -1060 {lab=VREF}
N 950 -900 950 -840 {lab=IBIAS}
N 830 -980 870 -980 {lab=Vfb}
N 1510 -1020 1530 -1020 {lab=VDD}
N 1530 -1070 1530 -1020 {lab=VDD}
N 1510 -1070 1530 -1070 {lab=VDD}
N 990 -1220 990 -1140 {lab=VDD}
N 1510 -910 1590 -910 {lab=VOUT}
N 710 -410 710 -390 {lab=SUB}
N 1520 -470 1520 -430 {lab=Vr_fb2[9:1],VSS
bus=true}
N 1510 -820 1510 -780 {lab=VOUT}
N 1520 -570 1520 -530 {lab=Vfb,Vr_fb2[9:1] bus=true}
N 1520 -670 1520 -630 {lab=Vr_fb1[9:1],Vfb bus=true}
N 1520 -770 1520 -730 {lab=VOUT,Vr_fb1[9:1] bus=true}
N 1510 -620 1510 -580 {lab=Vfb}
N 1420 -830 1460 -830 {lab=Vr_mc[29:1],VOUT bus=true}
N 1320 -830 1360 -830 {lab=Vmc,Vr_mc[29:1] bus=true}
N 1510 -840 1510 -820 {lab=VOUT}
N 1470 -840 1510 -840 {lab=VOUT}
N 1390 -810 1390 -500 {lab=VDD}
N 1390 -500 1500 -500 {lab=VDD}
N 1390 -700 1500 -700 {lab=VDD}
N 1270 -840 1310 -840 {lab=Vmc}
N 1170 -840 1210 -840 {lab=Vota}
N 1510 -920 1510 -840 {lab=VOUT}
N 1510 -1000 1510 -920 {lab=VOUT}
N 1110 -1020 1470 -1020 {lab=Vota}
N 1170 -1020 1170 -840 {lab=Vota}
N 990 -1190 1510 -1190 {lab=VDD}
N 1510 -1190 1510 -1050 {lab=VDD}
N 990 -420 1510 -420 {lab=VSS}
N 830 -600 1510 -600 {lab=Vfb}
N 830 -980 830 -600 {lab=Vfb}
N 990 -900 990 -390 {lab=VSS}
N 1050 -1540 1050 -1520 {lab=VDD}
N 1020 -1520 1050 -1520 {lab=VDD}
N 1260 -1540 1260 -1520 {lab=VDD}
N 1230 -1520 1260 -1520 {lab=VDD}
N 1020 -1600 1020 -1520 {lab=VDD}
N 1230 -1600 1230 -1520 {lab=VDD}
N 1020 -1570 1030 -1570 {lab=VDD}
N 1230 -1570 1240 -1570 {lab=VDD}
N 1020 -1600 1050 -1600 {lab=VDD}
N 1230 -1600 1260 -1600 {lab=VDD}
N 820 -450 820 -430 {lab=LDO_EN}
C {iopin.sym} 990 -1220 3 0 {name=p1 lab=VDD}
C {iopin.sym} 990 -390 1 0 {name=p2 lab=VSS}
C {iopin.sym} 1590 -910 0 0 {name=p3 lab=VOUT}
C {iopin.sym} 710 -390 1 0 {name=p4 lab=SUB}
C {iopin.sym} 810 -1060 2 0 {name=p5 lab=VREF}
C {iopin.sym} 950 -840 1 0 {name=p6 lab=IBIAS}
C {symbols/pfet_05v0.sym} 1490 -1020 0 0 {name=Mpass
L=0.50u
W=50.00u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Julio Vilca" rev=1.0 lock=true page=2 pages=2}
C {noconn.sym} 710 -410 1 0 {name=l1}
C {libs/core_ldo/ldo/ldo_OTA/OTA.sym} 970 -1020 0 0 {name=x1}
C {lab_wire.sym} 1390 -750 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1350 -1020 0 0 {name=p8 sig_type=std_logic lab=Vota}
C {symbols/ppolyf_u_1k.sym} 1520 -700 0 0 {name=R1[9:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1520 -500 0 0 {name=R2[9:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1390 -830 3 0 {name=Rc[29:0]
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 1240 -840 3 0 {name=Cc
W=25e-6
L=25e-6
model=cap_mim_1f0fF
spiceprefix=X
m=4}
C {bus_connect_nolab.sym} 1520 -430 3 1 {name=r2}
C {lab_wire.sym} 1520 -440 0 1 {name=p9 sig_type=std_logic lab=Vr_fb2[9:1],VSS}
C {lab_wire.sym} 1520 -540 0 1 {name=p10 sig_type=std_logic lab=Vfb,Vr_fb2[9:1]}
C {bus_connect_nolab.sym} 1520 -570 3 0 {name=r3}
C {lab_wire.sym} 1520 -740 0 1 {name=p11 sig_type=std_logic lab=VOUT,Vr_fb1[9:1]}
C {lab_wire.sym} 1520 -640 0 1 {name=p12 sig_type=std_logic lab=Vr_fb1[9:1],Vfb}
C {bus_connect_nolab.sym} 1520 -770 0 1 {name=r1}
C {bus_connect_nolab.sym} 1520 -630 2 0 {name=r4}
C {lab_wire.sym} 1250 -600 0 0 {name=p13 sig_type=std_logic lab=Vfb}
C {bus_connect_nolab.sym} 1460 -830 0 0 {name=r5}
C {bus_connect_nolab.sym} 1320 -830 3 0 {name=r6 }
C {lab_wire.sym} 1450 -830 3 1 {name=p14 sig_type=std_logic lab=Vr_mc[29:1],VOUT}
C {lab_wire.sym} 1280 -840 0 1 {name=p15 sig_type=std_logic lab=Vmc}
C {lab_wire.sym} 1350 -830 3 1 {name=p16 sig_type=std_logic lab=Vmc,Vr_mc[29:1]}
C {symbols/ppolyf_u_1k.sym} 1050 -1570 0 0 {name=Rfb_dummy_L[7:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1260 -1570 0 0 {name=Rfb_dummy_TB[13:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 1030 -1520 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1240 -1520 2 0 {name=p18 sig_type=std_logic lab=VDD}
C {ipin.sym} 820 -430 3 0 {name=p19 lab=LDO_EN}
C {noconn.sym} 820 -450 1 0 {name=l3
lab=EN}
