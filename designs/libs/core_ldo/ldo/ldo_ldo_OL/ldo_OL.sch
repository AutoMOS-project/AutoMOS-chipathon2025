v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 3 1970 -1630 2420 -1490 {fill=false}
T {Dummies} 1970 -1660 0 0 0.4 0.4 {}
N 1960 -1160 2020 -1160 {lab=VREF}
N 2100 -1000 2100 -940 {lab=IBIAS}
N 1980 -1080 2020 -1080 {lab=VFB_in}
N 2660 -1120 2680 -1120 {lab=VDD}
N 2680 -1170 2680 -1120 {lab=VDD}
N 2660 -1170 2680 -1170 {lab=VDD}
N 2140 -1320 2140 -1240 {lab=VDD}
N 2660 -1010 2740 -1010 {lab=VOUT}
N 1940 -510 1940 -490 {lab=SUB}
N 2660 -920 2660 -880 {lab=VOUT}
N 2660 -720 2660 -680 {lab=VFB_out}
N 2570 -930 2610 -930 {lab=Vr_mc[29:1],VOUT bus=true}
N 2470 -930 2510 -930 {lab=Vmc,Vr_mc[29:1] bus=true}
N 2660 -940 2660 -920 {lab=VOUT}
N 2620 -940 2660 -940 {lab=VOUT}
N 2540 -910 2540 -600 {lab=VDD}
N 2540 -600 2650 -600 {lab=VDD}
N 2420 -940 2460 -940 {lab=Vmc}
N 2320 -940 2360 -940 {lab=Vota}
N 2660 -1020 2660 -940 {lab=VOUT}
N 2660 -1100 2660 -1020 {lab=VOUT}
N 2260 -1120 2620 -1120 {lab=Vota}
N 2140 -1290 2660 -1290 {lab=VDD}
N 2660 -1290 2660 -1150 {lab=VDD}
N 2140 -520 2660 -520 {lab=VSS}
N 1980 -1080 1980 -700 {lab=VFB_in}
N 2140 -1000 2140 -490 {lab=VSS}
N 2270 -700 2660 -700 {lab=VFB_out}
N 2320 -1120 2320 -940 {lab=Vota}
N 2040 -1550 2040 -1530 {lab=VSS}
N 2010 -1530 2040 -1530 {lab=VSS}
N 2250 -1550 2250 -1530 {lab=VSS}
N 2220 -1530 2250 -1530 {lab=VSS}
N 2010 -1610 2010 -1530 {lab=VSS}
N 2220 -1610 2220 -1530 {lab=VSS}
N 2010 -1580 2020 -1580 {lab=VSS}
N 2220 -1580 2230 -1580 {lab=VSS}
N 2010 -1610 2040 -1610 {lab=VSS}
N 2220 -1610 2250 -1610 {lab=VSS}
N 2670 -770 2670 -730 {lab=Vr_fb1[9:1],VFB_out bus=true}
N 2670 -870 2670 -830 {lab=VOUT,Vr_fb1[9:1] bus=true}
N 2540 -800 2650 -800 {lab=VDD}
N 2670 -570 2670 -530 {lab=Vr_fb2[9:1],VSS
bus=true}
N 2670 -670 2670 -630 {lab=VFB_out,Vr_fb2[9:1] bus=true}
C {iopin.sym} 2270 -700 2 0 {name=p10 lab=VFB_out}
C {iopin.sym} 2140 -1320 3 0 {name=p11 lab=VDD}
C {iopin.sym} 2140 -490 1 0 {name=p12 lab=VSS}
C {iopin.sym} 2740 -1010 0 0 {name=p13 lab=VOUT}
C {iopin.sym} 1940 -490 1 0 {name=p14 lab=SUB}
C {iopin.sym} 1960 -1160 2 0 {name=p15 lab=VREF}
C {iopin.sym} 2100 -940 1 0 {name=p16 lab=IBIAS}
C {symbols/pfet_05v0.sym} 2640 -1120 0 0 {name=Mp
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
C {noconn.sym} 1940 -510 1 0 {name=l2}
C {libs/core_ldo/ldo/ldo_OTA/OTA.sym} 2120 -1120 0 0 {name=x1}
C {lab_wire.sym} 2540 -850 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2500 -1120 0 0 {name=p18 sig_type=std_logic lab=Vota}
C {symbols/ppolyf_u_1k.sym} 2540 -930 3 0 {name=Rc[29:0]
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 2390 -940 3 0 {name=Cc
W=25e-6
L=25e-6
model=cap_mim_1f0fF
spiceprefix=X
m=4}
C {bus_connect_nolab.sym} 2670 -530 3 1 {name=r3}
C {bus_connect_nolab.sym} 2670 -670 3 0 {name=r4}
C {bus_connect_nolab.sym} 2670 -870 0 1 {name=r5}
C {bus_connect_nolab.sym} 2610 -930 0 0 {name=r7}
C {bus_connect_nolab.sym} 2470 -930 3 0 {name=r8 }
C {lab_wire.sym} 2600 -930 3 1 {name=p24 sig_type=std_logic lab=Vr_mc[29:1],VOUT}
C {lab_wire.sym} 2450 -940 3 1 {name=p25 sig_type=std_logic lab=Vmc}
C {lab_wire.sym} 2480 -930 1 0 {name=p26 sig_type=std_logic lab=Vmc,Vr_mc[29:1]}
C {iopin.sym} 1980 -700 1 0 {name=p27 lab=VFB_in}
C {symbols/ppolyf_u_1k.sym} 2040 -1580 0 0 {name=Rfb_dummy_L[7:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 2250 -1580 0 0 {name=Rfb_dummy_TB[13:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 2030 -1530 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2240 -1530 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k.sym} 2670 -800 0 0 {name=R1[9:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 2670 -840 0 1 {name=p3 sig_type=std_logic lab=VOUT,Vr_fb1[9:1]}
C {lab_wire.sym} 2670 -740 0 1 {name=p4 sig_type=std_logic lab=Vr_fb1[9:1],VFB_out}
C {bus_connect_nolab.sym} 2670 -730 2 0 {name=r1}
C {symbols/ppolyf_u_1k.sym} 2670 -600 0 0 {name=R2[9:0]
W=1e-6
L=5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 2670 -540 0 1 {name=p9 sig_type=std_logic lab=Vr_fb2[9:1],VSS}
C {lab_wire.sym} 2670 -640 0 1 {name=p5 sig_type=std_logic lab=VFB_out,Vr_fb2[9:1]}
