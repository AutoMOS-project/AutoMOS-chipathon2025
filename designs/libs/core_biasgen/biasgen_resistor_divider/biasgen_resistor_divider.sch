v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 350 -1000 350 -950 {lab=VRTOP,v_divider1[3:1]
bus=true}
N 350 -890 350 -850 {lab=v_divider1[3:1],v_10_12
bus=true}
N 360 -1100 360 -1010 {lab=VRTOP}
N 350 -750 350 -700 {lab=v_10_12,v_divider2
bus=true}
N 350 -640 350 -600 {lab=v_divider2,v_9_12
bus=true}
N 350 -510 350 -460 {lab=v_9_12,v_divider3[2:1]
bus=true}
N 350 -400 350 -360 {lab=v_divider3[7:1],v_5_12
bus=true}
N 350 -270 350 -220 {lab=v_5_12,v_divider4[9:1]
bus=true}
N 350 -160 350 -120 {lab=v_divider4[9:1],VRBOT
bus=true}
N 360 -350 360 -280 {lab=v_5_12}
N 360 -320 520 -320 {lab=v_5_12}
N 360 -590 360 -520 {lab=v_9_12}
N 360 -560 510 -560 {lab=v_9_12}
N 360 -840 360 -760 {lab=v_10_12}
N 360 -110 360 -40 {lab=VRBOT}
N 360 -800 510 -800 {lab=v_10_12}
C {symbols/ppolyf_u_1k.sym} 350 -920 0 0 {name=Rdivider1[3:0]
W=1e-6
L=4.5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 330 -920 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -980 0 0 {name=p45 sig_type=std_logic lab=VRTOP,v_divider1[3:1]}
C {lab_wire.sym} 350 -870 0 0 {name=p46 sig_type=std_logic lab=v_divider1[3:1],v_10_12}
C {bus_connect.sym} 350 -850 1 0 {name=l17 lab=v_10_12}
C {bus_connect.sym} 350 -1000 0 0 {name=l16 lab=VRTOP}
C {iopin.sym} 360 -1100 0 0 {name=p1 lab=VRTOP}
C {symbols/ppolyf_u_1k.sym} 350 -670 0 0 {name=Rdivider2[1:0]
W=1e-6
L=4.5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 330 -670 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -730 0 0 {name=p3 sig_type=std_logic lab=v_10_12,v_divider2}
C {lab_wire.sym} 350 -620 0 0 {name=p4 sig_type=std_logic lab=v_divider2,v_9_12}
C {bus_connect.sym} 350 -600 1 0 {name=l1 lab=v_9_12}
C {bus_connect.sym} 350 -750 0 0 {name=l2 lab=v_10_12}
C {symbols/ppolyf_u_1k.sym} 350 -430 0 0 {name=Rdivider3[7:0]
W=1e-6
L=4.5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 330 -430 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -490 0 0 {name=p6 sig_type=std_logic lab=v_9_12,v_divider3[7:1]}
C {lab_wire.sym} 350 -380 0 0 {name=p7 sig_type=std_logic lab=v_divider3[7:1],v_5_12}
C {bus_connect.sym} 350 -360 1 0 {name=l3 lab=v_5_12}
C {bus_connect.sym} 350 -510 0 0 {name=l4 lab=v_9_12}
C {symbols/ppolyf_u_1k.sym} 350 -190 0 0 {name=Rdivider4[9:0]
W=1e-6
L=4.5e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 330 -190 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -250 0 0 {name=p9 sig_type=std_logic lab=v_5_12,v_divider4[9:1]}
C {lab_wire.sym} 350 -140 0 0 {name=p10 sig_type=std_logic lab=v_divider4[9:1],VRBOT}
C {bus_connect.sym} 350 -120 1 0 {name=l5 lab=VRBOT}
C {bus_connect.sym} 350 -270 0 0 {name=l6 lab=v_5_12}
C {iopin.sym} 360 -40 0 0 {name=p11 lab=VRBOT}
C {iopin.sym} 510 -800 0 0 {name=p12 lab=v_10_12}
C {iopin.sym} 510 -560 0 0 {name=p13 lab=v_9_12}
C {iopin.sym} 520 -320 0 0 {name=p14 lab=v_5_12}
C {iopin.sym} 200 -1080 0 0 {name=p15 lab=VDD}
