v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 640 -910 760 -910 {
lab=V_RF}
N 900 -1090 990 -1090 {
lab=V_LO_b}
N 1190 -1090 1260 -1090 {
lab=V_LO}
N 630 -1090 700 -1090 {lab=V_LO}
N 630 -1000 950 -1000 {lab=V_LO_b}
N 950 -1090 950 -1000 {
lab=V_LO_b}
N 760 -910 850 -910 {
lab=V_RF}
N 800 -970 910 -970 {
lab=rf_diff_pair_pos_input}
N 800 -1020 800 -970 {
lab=rf_diff_pair_pos_input}
N 990 -970 1090 -970 {
lab=rf_diff_pair_neg_input}
N 1090 -1020 1090 -970 {
lab=rf_diff_pair_neg_input}
N 640 -805 1090 -805 {
lab=V_RF_b}
N 1090 -910 1090 -820 {
lab=V_RF_b}
N 1050 -910 1090 -910 {
lab=V_RF_b}
N 630 -910 640 -910 {
lab=V_RF}
N 630 -805 640 -805 {
lab=V_RF_b}
N 760 -1160 760 -1150 {
lab=V_out_p}
N 1130 -1160 1130 -1150 {
lab=V_out_n}
N 1130 -1230 1130 -1160 {
lab=V_out_n}
N 760 -1310 760 -1160 {
lab=V_out_p}
N 1130 -1310 1130 -1230 {
lab=V_out_n}
N 880 -1230 1050 -1150 {
lab=V_out_p}
N 760 -1230 880 -1230 {
lab=V_out_p}
N 1010 -1230 1130 -1230 {
lab=V_out_n}
N 840 -1150 1010 -1230 {
lab=V_out_n}
N 990 -970 990 -940 {
lab=rf_diff_pair_neg_input}
N 1050 -1060 1130 -1060 {
lab=rf_diff_pair_neg_input}
N 1050 -1150 1050 -1120 {
lab=V_out_p}
N 1130 -1150 1130 -1120 {
lab=V_out_n}
N 840 -1150 840 -1120 {
lab=V_out_n}
N 760 -1150 760 -1120 {
lab=V_out_p}
N 700 -1090 720 -1090 {
lab=V_LO}
N 880 -1090 900 -1090 {
lab=V_LO_b}
N 990 -1090 1010 -1090 {
lab=V_LO_b}
N 1170 -1090 1190 -1090 {
lab=V_LO}
N 1090 -1060 1090 -1020 {
lab=rf_diff_pair_neg_input}
N 760 -1060 840 -1060 {
lab=rf_diff_pair_pos_input}
N 800 -1060 800 -1020 {
lab=rf_diff_pair_pos_input}
N 910 -970 910 -940 {
lab=rf_diff_pair_pos_input}
N 850 -910 870 -910 {
lab=V_RF}
N 1030 -910 1050 -910 {
lab=V_RF_b}
N 910 -910 990 -910 {
lab=VSS}
N 760 -1090 840 -1090 {
lab=VSS}
N 1050 -1090 1130 -1090 {
lab=VSS}
N 1090 -820 1090 -805 {
lab=V_RF_b}
N 910 -880 910 -730 {
lab=I_bias_pos}
N 990 -880 990 -730 {
lab=I_bias_neg}
N 1480 -910 1480 -840 {
lab=xxx}
N 1360 -840 1480 -840 {
lab=xxx}
N 1440 -880 1440 -840 {
lab=xxx}
N 1390 -910 1440 -910 {
lab=xxx}
N 1390 -910 1390 -840 {
lab=xxx}
N 1360 -940 1360 -840 {
lab=xxx}
N 1360 -940 1440 -940 {
lab=xxx}
N 1320 -840 1360 -840 {
lab=xxx}
C {ipin.sym} 630 -1090 0 0 {name=p1 lab=V_LO}
C {ipin.sym} 630 -1000 0 0 {name=p2 lab=V_LO_b
}
C {ipin.sym} 630 -910 0 0 {name=p3 lab=V_RF}
C {ipin.sym} 630 -805 2 1 {name=p4 lab=V_RF_b
}
C {opin.sym} 760 -1310 3 0 {name=p5 lab=V_out_p}
C {opin.sym} 1130 -1310 3 0 {name=p7 lab=V_out_n}
C {lab_wire.sym} 1260 -1090 0 1 {name=p6 sig_type=std_logic lab=V_LO}
C {symbols/nfet_03v3.sym} 740 -1090 0 0 {name=M_dp_lo_pos
L=0.28u
W=20u
nf=5
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
C {symbols/nfet_03v3.sym} 860 -1090 0 1 {name=M_dp_lo_neg
L=0.28u
W=20u
nf=5
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
C {symbols/nfet_03v3.sym} 1030 -1090 0 0 {name=M_dp_lo_b_pos
L=0.28u
W=20u
nf=5
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
C {symbols/nfet_03v3.sym} 1150 -1090 0 1 {name=M_dp_lo_b_neg
L=0.28u
W=20u
nf=5
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
C {symbols/nfet_03v3.sym} 890 -910 0 0 {name=M_rf_pos
L=0.28u
W=10u
nf=5
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
C {symbols/nfet_03v3.sym} 1010 -910 0 1 {name=M_rf_neg
L=0.28u
W=10u
nf=5
m=1
hide_texts=false
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 950 -910 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 810 -1090 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1090 -1090 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {iopin.sym} 990 -730 1 0 {name=p8 lab=I_bias_neg}
C {iopin.sym} 910 -730 1 0 {name=p9 lab=I_bias_pos}
C {iopin.sym} 620 -710 2 0 {name=p11 lab=VSS}
C {lab_wire.sym} 1090 -990 0 0 {name=p15 sig_type=std_logic lab=rf_diff_pair_neg_input hide_texts=true
}
C {lab_wire.sym} 800 -990 0 0 {name=p16 sig_type=std_logic lab=rf_diff_pair_pos_input hide_texts=true
}
C {symbols/nfet_03v3.sym} 1460 -910 0 1 {name=M_rf_dummies
L=0.28u
W=2u
nf=1
m=4
hide_texts=false
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1320 -840 0 0 {name=p10 sig_type=std_logic lab=VSS}
