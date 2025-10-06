v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 570 -470 610 -470 {
lab=Vrefp}
N 480 -410 550 -410 {
lab=#net1}
N 550 -440 550 -410 {
lab=#net1}
N 550 -440 610 -440 {
lab=#net1}
N 330 -450 370 -450 {
lab=Vres}
N 330 -450 330 -280 {
lab=Vres}
N 330 -270 670 -270 {
lab=Vres}
N 670 -560 670 -520 {
lab=VDD}
N 570 -520 570 -470 {
lab=Vrefp}
N 550 -470 570 -470 {
lab=Vrefp}
N 700 -280 700 -250 {lab=VSS}
N 330 -280 330 -270 {lab=Vres}
N 670 -280 670 -270 {lab=Vres}
N 170 -500 370 -500 {lab=Vref}
N 190 -390 440 -390 {lab=Vref}
N 190 -500 190 -390 {lab=Vref}
N 570 -590 970 -590 {lab=Vrefp}
N 330 -270 330 -220 {lab=Vres}
N 170 -120 700 -120 {lab=VSS}
N 700 -250 700 -120 {lab=VSS}
N 570 -590 570 -520 {lab=Vrefp}
N 670 -660 670 -560 {lab=VDD}
N 170 -660 670 -660 {lab=VDD}
N 870 -450 990 -450 {lab=Iref3p}
N 870 -430 990 -430 {lab=Iref2p}
N 870 -410 990 -410 {lab=Iref1p}
N 870 -390 990 -390 {lab=Iref1n}
N 870 -370 990 -370 {lab=Iref2n}
N 870 -350 990 -350 {lab=Iref3n}
N 870 -330 930 -330 {lab=Vrefn}
N 930 -330 930 -250 {lab=Vrefn}
N 930 -250 970 -250 {lab=Vrefn}
C {ipin.sym} 170 -500 0 0 {name=p22 lab=Vref}
C {iopin.sym} 170 -660 2 0 {name=p23 lab=VDD}
C {iopin.sym} 170 -120 2 0 {name=p24 lab=VSS}
C {iopin.sym} 970 -590 0 0 {name=p25 lab=Vrefp}
C {iopin.sym} 970 -250 0 0 {name=p27 lab=Vrefn}
C {iopin.sym} 990 -390 0 0 {name=p15 lab=Iref1n}
C {iopin.sym} 990 -350 0 0 {name=p21 lab=Iref3n}
C {iopin.sym} 990 -410 0 0 {name=p26 lab=Iref1p}
C {iopin.sym} 990 -450 0 0 {name=p28 lab=Iref3p}
C {iopin.sym} 330 -220 1 0 {name=p29 lab=Vres}
C {lab_pin.sym} 440 -370 2 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 -350 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 870 -350 0 1 {name=p6 sig_type=std_logic lab=Iref3n}
C {lab_pin.sym} 870 -390 0 1 {name=p7 sig_type=std_logic lab=Iref1n}
C {lab_pin.sym} 870 -410 0 1 {name=p8 sig_type=std_logic lab=Iref1p}
C {lab_pin.sym} 870 -450 0 1 {name=p9 sig_type=std_logic lab=Iref3p}
C {lab_pin.sym} 870 -330 0 1 {name=p10 sig_type=std_logic lab=Vrefn}
C {lab_pin.sym} 330 -240 2 1 {name=p13 sig_type=std_logic lab=Vres}
C {iopin.sym} 990 -370 0 0 {name=p14 lab=Iref2n}
C {iopin.sym} 990 -430 0 0 {name=p16 lab=Iref2p}
C {lab_pin.sym} 870 -370 0 1 {name=p17 sig_type=std_logic lab=Iref2n}
C {lab_pin.sym} 870 -430 0 1 {name=p18 sig_type=std_logic lab=Iref2p}
C {libs/core_top/Axx_top/error_amplifier_N_input_v3.sym} 460 -470 0 0 {}
C {libs/core_top/Axx_top/current_reference_second_stage_v2.sym} 730 -400 0 0 {name=x1}
C {title.sym} 170 -30 0 0 {name=l1 author="Julian Romero & Alex Mantilla"}
