v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 690 -180 740 -180 {
lab=VbiasP2}
N 690 -160 740 -160 {
lab=VbiasN2}
N 690 -140 740 -140 {
lab=VbiasN1}
N 740 -140 790 -140 {lab=VbiasN1}
N 740 -160 790 -160 {lab=VbiasN2}
N 740 -180 790 -180 {lab=VbiasP2}
N 470 -200 490 -200 {lab=#net1}
N 100 -190 230 -190 {lab=Vref}
N 630 -360 740 -360 {lab=V-}
N 630 -300 740 -300 {lab=V+}
N 940 -330 1080 -330 {lab=Vout}
N 470 -180 690 -180 {lab=VbiasP2}
N 470 -160 690 -160 {lab=VbiasN2}
N 470 -140 690 -140 {lab=VbiasN1}
N 640 -230 720 -230 {lab=Vcomn}
N 720 -230 720 -200 {lab=Vcomn}
N 720 -200 790 -200 {lab=Vcomn}
C {devices/lab_wire.sym} 230 -170 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 230 -150 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 790 -240 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 790 -220 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 630 -300 0 0 {name=p14 lab=V+}
C {devices/iopin.sym} 1080 -330 0 0 {name=p18 lab=Vout}
C {devices/ipin.sym} 630 -360 0 0 {name=p19 lab=V-}
C {devices/ipin.sym} 100 -190 0 0 {name=p9 lab=Vref}
C {devices/iopin.sym} 310 -320 0 0 {name=p15 lab=VDD}
C {devices/iopin.sym} 310 -300 0 0 {name=p10 lab=VSS}
C {devices/iopin.sym} 640 -230 2 0 {name=p11 lab=Vcomn}
C {noconn.sym} 490 -200 2 0 {name=l1}
C {devices/lab_wire.sym} 770 -180 0 0 {name=p13 sig_type=std_logic lab=VbiasP2}
C {devices/lab_wire.sym} 770 -160 0 0 {name=p16 sig_type=std_logic lab=VbiasN2}
C {devices/lab_wire.sym} 770 -140 0 0 {name=p17 sig_type=std_logic lab=VbiasN1}
C {libs/core_top/Axx_top/error_amplifier_N_input_core_v3.sym} 840 -330 0 0 {name=x1}
C {libs/core_top/Axx_top/error_amplifier_N_input_bias_v3.sym} 350 -170 0 0 {name=x2}
C {title.sym} 160 -30 0 0 {name=l2 author="Julian Romero"}
