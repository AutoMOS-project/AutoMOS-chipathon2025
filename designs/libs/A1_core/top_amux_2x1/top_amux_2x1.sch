v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 0 190 0 {lab=EN}
N 380 0 410 0 {lab=ENB}
N 160 -290 180 -290 {lab=IN0}
N 160 -160 180 -160 {lab=IN1}
N 320 -290 360 -290 {lab=OUT}
N 360 -290 360 -160 {lab=OUT}
N 320 -160 360 -160 {lab=OUT}
N 360 -220 400 -220 {lab=OUT}
C {libs/core_test/test_tg/test_tg.sym} 180 -250 0 0 {name=x1}
C {libs/core_test/test_tg/test_tg.sym} 180 -120 0 0 {name=x2}
C {iopin.sym} 80 -230 0 1 {name=p1 lab=VDD}
C {iopin.sym} 80 -200 0 1 {name=p2 lab=VSS}
C {ipin.sym} 170 0 0 0 {name=p3 lab=EN}
C {lab_wire.sym} 410 0 0 1 {name=p4 sig_type=std_logic lab=ENB}
C {lab_wire.sym} 280 -120 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 280 -250 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 220 -250 2 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 -120 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {iopin.sym} 160 -290 0 1 {name=p9 lab=IN0}
C {iopin.sym} 160 -160 0 1 {name=p10 lab=IN1}
C {lab_wire.sym} 250 -330 0 1 {name=p11 sig_type=std_logic lab=ENB}
C {lab_wire.sym} 250 -200 0 1 {name=p12 sig_type=std_logic lab=EN}
C {iopin.sym} 400 -220 0 0 {name=p13 lab=OUT}
C {lab_wire.sym} 260 -60 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 260 60 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {libs/core_test/test_inv/test_inv.sym} 190 60 0 0 {name=x3}
