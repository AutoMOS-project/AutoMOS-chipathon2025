v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 -660 280 -660 {lab=ENB}
C {iopin.sym} 200 -520 1 0 {name=p2 lab=VSS}
C {iopin.sym} 240 -950 3 0 {name=p5 lab=IPTAT_IN}
C {iopin.sym} 680 -900 0 0 {name=p9 lab=IPTAT_2u_src
}
C {iopin.sym} 680 -860 0 0 {name=p10 lab=IPTAT_10u_snk
}
C {libs/core_biasgen/biasgen_mirror_2_to_10/biasgen_mirror_2_to_10.sym} 200 -790 0 0 {name=xI_mirror_ptat}
C {iopin.sym} 310 -950 3 0 {name=p12 lab=VDD}
C {lab_pin.sym} 180 -910 0 0 {name=p1 lab=EN}
C {lab_pin.sym} 180 -890 0 0 {name=p13 lab=ENB}
C {lab_pin.sym} 420 -880 0 1 {name=p14 lab=IPTAT_10u_src}
C {lab_pin.sym} 420 -860 0 1 {name=p15 lab=IPTAT_10u_snk}
C {lab_pin.sym} 240 -770 0 1 {name=p16 lab=VSS}
C {lab_pin.sym} 420 -900 0 1 {name=p40 lab=IPTAT_2u_src}
C {ipin.sym} 140 -660 0 0 {name=p37 lab=EN}
C {iopin.sym} 680 -880 0 0 {name=p48 lab=IPTAT_10u_src
}
C {title.sym} 160 -40 0 0 {name=l11 author="Luighi Viton (AutoMOS-Project)"}
C {libs/core_biasgen/biasgen_inverter/biasgen_inverter.sym} 140 -620 0 0 {name=xINV}
C {lab_wire.sym} 280 -660 0 1 {name=p44 sig_type=std_logic lab=ENB}
C {lab_wire.sym} 190 -700 0 1 {name=p55 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 190 -620 2 0 {name=p56 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 420 -840 0 1 {name=p6 lab=IPTAT_2u_snk}
