v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 3 1570 -790 1750 -410 {fill=false}
B 3 1070 -1620 1520 -1480 {fill=false}
T {Matching (interdigitated)} 1760 -790 0 0 0.2 0.2 {}
T {Dummies} 1070 -1650 0 0 0.4 0.4 {}
N 900 -1040 960 -1040 {lab=VREF}
N 1040 -900 1040 -840 {lab=IBIAS}
N 1600 -1020 1620 -1020 {lab=VDD}
N 1620 -1070 1620 -1020 {lab=VDD}
N 1600 -1070 1620 -1070 {lab=VDD}
N 1080 -1220 1080 -1140 {lab=VDD}
N 1600 -910 1680 -910 {lab=VOUT}
N 1610 -470 1610 -430 {lab=Vr_fb2[9:1],VSS
bus=true}
N 1600 -820 1600 -780 {lab=VOUT}
N 1610 -570 1610 -530 {lab=VFB_res,Vr_fb2[9:1] bus=true}
N 1610 -670 1610 -630 {lab=Vr_fb1[9:1],VFB_res bus=true}
N 1610 -770 1610 -730 {lab=VOUT,Vr_fb1[9:1] bus=true}
N 1600 -620 1600 -580 {lab=VFB_res}
N 1510 -830 1550 -830 {lab=Vr_mc[29:1],VOUT bus=true}
N 1410 -830 1450 -830 {lab=Vmc,Vr_mc[29:1] bus=true}
N 1600 -840 1600 -820 {lab=VOUT}
N 1560 -840 1600 -840 {lab=VOUT}
N 1480 -810 1480 -500 {lab=VDD}
N 1480 -500 1590 -500 {lab=VDD}
N 1480 -700 1590 -700 {lab=VDD}
N 1360 -840 1400 -840 {lab=Vmc}
N 1260 -840 1300 -840 {lab=Vota}
N 1600 -920 1600 -840 {lab=VOUT}
N 1600 -1000 1600 -920 {lab=VOUT}
N 1200 -1020 1560 -1020 {lab=Vota}
N 1260 -1020 1260 -840 {lab=Vota}
N 1080 -1190 1600 -1190 {lab=VDD}
N 1600 -1190 1600 -1050 {lab=VDD}
N 1080 -420 1600 -420 {lab=VSS}
N 1080 -900 1080 -390 {lab=VSS}
N 1140 -1540 1140 -1520 {lab=VDD}
N 1110 -1520 1140 -1520 {lab=VDD}
N 1350 -1540 1350 -1520 {lab=VDD}
N 1320 -1520 1350 -1520 {lab=VDD}
N 1110 -1600 1110 -1520 {lab=VDD}
N 1320 -1600 1320 -1520 {lab=VDD}
N 1110 -1570 1120 -1570 {lab=VDD}
N 1320 -1570 1330 -1570 {lab=VDD}
N 1110 -1600 1140 -1600 {lab=VDD}
N 1320 -1600 1350 -1600 {lab=VDD}
N 900 -1000 960 -1000 {lab=VFB_ota}
N 1430 -600 1600 -600 {lab=VFB_res}
N 960 -410 960 -390 {lab=SUB}
N 630 -580 650 -580 {lab=LDO_EN}
N 770 -580 810 -580 {lab=ENn}
N 930 -580 970 -580 {lab=ENp}
N 900 -960 960 -960 {lab=ENn}
N 900 -1080 960 -1080 {lab=ENp}
N 700 -660 700 -620 {lab=VDD}
N 700 -660 860 -660 {lab=VDD}
N 860 -660 860 -620 {lab=VDD}
N 700 -540 700 -500 {lab=VSS}
N 700 -500 860 -500 {lab=VSS}
N 860 -540 860 -500 {lab=VSS}
N 1380 -1190 1380 -1130 {lab=VDD}
N 1380 -1070 1380 -1020 {lab=Vota}
N 1380 -1100 1400 -1100 {lab=VDD}
N 1400 -1150 1400 -1100 {lab=VDD}
N 1380 -1150 1400 -1150 {lab=VDD}
N 1290 -1100 1340 -1100 {lab=ENp}
C {iopin.sym} 1080 -1220 3 0 {name=p1 lab=VDD}
C {iopin.sym} 1080 -390 1 0 {name=p2 lab=VSS}
C {iopin.sym} 1680 -910 0 0 {name=p3 lab=VOUT}
C {iopin.sym} 900 -1040 2 0 {name=p5 lab=VREF}
C {iopin.sym} 1040 -840 1 0 {name=p6 lab=IBIAS}
C {symbols/pfet_05v0.sym} 1580 -1020 0 0 {name=Mpass
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
C {lab_wire.sym} 1480 -750 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1520 -1020 0 0 {name=p8 sig_type=std_logic lab=Vota}
C {symbols/ppolyf_u_1k.sym} 1610 -700 0 0 {name=R1[9:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1610 -500 0 0 {name=R2[9:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1480 -830 3 0 {name=Rc[29:0]
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 1330 -840 3 0 {name=Cc
W=25e-6
L=25e-6
model=cap_mim_1f0fF
spiceprefix=X
m=4}
C {bus_connect_nolab.sym} 1610 -430 3 1 {name=r2}
C {lab_wire.sym} 1610 -440 0 1 {name=p9 sig_type=std_logic lab=Vr_fb2[9:1],VSS}
C {lab_wire.sym} 1610 -540 0 1 {name=p10 sig_type=std_logic lab=VFB_res,Vr_fb2[9:1]}
C {bus_connect_nolab.sym} 1610 -570 3 0 {name=r3}
C {lab_wire.sym} 1610 -740 0 1 {name=p11 sig_type=std_logic lab=VOUT,Vr_fb1[9:1]}
C {lab_wire.sym} 1610 -640 0 1 {name=p12 sig_type=std_logic lab=Vr_fb1[9:1],VFB_res}
C {bus_connect_nolab.sym} 1610 -770 0 1 {name=r1}
C {bus_connect_nolab.sym} 1610 -630 2 0 {name=r4}
C {bus_connect_nolab.sym} 1550 -830 0 0 {name=r5}
C {bus_connect_nolab.sym} 1410 -830 3 0 {name=r6 }
C {lab_wire.sym} 1540 -830 3 1 {name=p14 sig_type=std_logic lab=Vr_mc[29:1],VOUT}
C {lab_wire.sym} 1370 -840 0 1 {name=p15 sig_type=std_logic lab=Vmc}
C {lab_wire.sym} 1440 -830 3 1 {name=p16 sig_type=std_logic lab=Vmc,Vr_mc[29:1]}
C {symbols/ppolyf_u_1k.sym} 1140 -1570 0 0 {name=Rfb_dummy_L[7:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1350 -1570 0 0 {name=Rfb_dummy_TB[13:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 1120 -1520 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1330 -1520 2 0 {name=p18 sig_type=std_logic lab=VDD}
C {ipin.sym} 630 -580 0 0 {name=p19 lab=LDO_EN}
C {iopin.sym} 900 -1000 2 0 {name=p13 lab=VFB_ota}
C {iopin.sym} 1430 -600 2 0 {name=p20 lab=VFB_res}
C {iopin.sym} 960 -390 1 0 {name=p21 lab=SUB}
C {noconn.sym} 960 -410 1 0 {name=l1}
C {libs/core_biasgen/biasgen_inverter/biasgen_inverter.sym} 650 -540 0 0 {name=x2}
C {libs/core_biasgen/biasgen_inverter/biasgen_inverter.sym} 810 -540 0 0 {name=x3}
C {lab_wire.sym} 960 -580 0 0 {name=p4 sig_type=std_logic lab=ENp}
C {lab_wire.sym} 800 -580 0 0 {name=p22 sig_type=std_logic lab=ENn}
C {lab_wire.sym} 900 -960 0 0 {name=p23 sig_type=std_logic lab=ENn}
C {lab_wire.sym} 900 -1080 0 0 {name=p24 sig_type=std_logic lab=ENp}
C {lab_wire.sym} 790 -660 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 790 -500 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {symbols/pfet_05v0.sym} 1360 -1100 0 0 {name=Mpenpass
L=0.5u
W=2u
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
C {lab_wire.sym} 1290 -1100 0 0 {name=p27 sig_type=std_logic lab=ENp}
C {libs/core_ldo/ldo_OTA/OTA.sym} 1060 -1020 0 0 {name=x1}
