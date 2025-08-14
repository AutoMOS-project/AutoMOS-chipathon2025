v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 250 -540 250 -520 {lab=SUB}
N 420 -840 450 -840 {lab=ibias}
N 450 -840 450 -400 {lab=ibias}
N 450 -400 710 -400 {lab=ibias}
N 710 -450 710 -400 {lab=ibias}
N 840 -530 840 -510 {lab=VBG_buf}
N 850 -470 850 -420 {lab=VBG_buf}
N 850 -510 850 -470 {lab=VBG_buf}
N 840 -510 850 -510 {lab=VBG_buf}
N 910 -340 990 -340 {lab=VREF_1V}
N 910 -320 990 -320 {lab=VREF_0P9V}
N 910 -260 990 -260 {lab=VREF_0P5V}
N 260 -660 280 -660 {lab=ENB}
C {iopin.sym} 200 -520 1 0 {name=p2 lab=VSS}
C {iopin.sym} 250 -520 1 0 {name=p3 lab=SUB}
C {iopin.sym} 590 -590 2 0 {name=p4 lab=VBG}
C {iopin.sym} 240 -950 3 0 {name=p5 lab=IPTAT_IN}
C {iopin.sym} 1060 -950 3 0 {name=p6 lab=IZTC_IN}
C {iopin.sym} 990 -320 0 0 {name=p7 lab=VREF_0P9V}
C {iopin.sym} 990 -260 0 0 {name=p8 lab=VREF_0P5V}
C {iopin.sym} 1100 -600 0 0 {name=p9 lab=IPTAT_2u_src
}
C {iopin.sym} 1100 -560 0 0 {name=p10 lab=IPTAT_10u_snk
}
C {noconn.sym} 250 -540 0 0 {name=l1}
C {iopin.sym} 650 -950 3 0 {name=p11 lab=ICTAT_IN}
C {libs/core_biasgen/biasgen_buffer/biasgen_buffer.sym} 590 -470 0 0 {name=xI_Buffer}
C {libs/core_biasgen/biasgen_mirror_2_to_10/biasgen_mirror_2_to_10.sym} 200 -790 0 0 {name=xI_mirror_ptat}
C {libs/core_biasgen/biasgen_mirror_4_to_10/biasgen_mirror_4_to_10.sym} 610 -790 0 0 {name=xI_mirror_ctat}
C {libs/core_biasgen/biasgen_mirror_8_to_10/biasgen_mirror_8_to_10.sym} 1020 -790 0 0 {name=xI_mirror_ztc}
C {iopin.sym} 310 -950 3 0 {name=p12 lab=VDD}
C {lab_pin.sym} 180 -910 0 0 {name=p1 lab=EN}
C {lab_pin.sym} 180 -890 0 0 {name=p13 lab=ENB}
C {lab_pin.sym} 420 -880 0 1 {name=p14 lab=IPTAT_10u_src}
C {lab_pin.sym} 420 -860 0 1 {name=p15 lab=IPTAT_10u_snk}
C {lab_pin.sym} 240 -770 0 1 {name=p16 lab=VSS}
C {lab_pin.sym} 310 -770 0 1 {name=p17 lab=SUB}
C {lab_pin.sym} 720 -950 0 1 {name=p18 lab=VDD}
C {lab_pin.sym} 590 -910 0 0 {name=p19 lab=EN}
C {lab_pin.sym} 590 -890 0 0 {name=p20 lab=ENB}
C {lab_pin.sym} 830 -880 0 1 {name=p21 lab=ICTAT_10u_src}
C {lab_pin.sym} 830 -860 0 1 {name=p22 lab=ICTAT_10u_snk}
C {lab_pin.sym} 650 -770 0 1 {name=p23 lab=VSS}
C {lab_pin.sym} 720 -770 0 1 {name=p24 lab=SUB}
C {lab_pin.sym} 1130 -950 0 1 {name=p25 lab=VDD}
C {lab_pin.sym} 1000 -910 0 0 {name=p26 lab=EN}
C {lab_pin.sym} 1000 -890 0 0 {name=p27 lab=ENB}
C {lab_pin.sym} 1240 -880 0 1 {name=p28 lab=IZTC_10u_src}
C {lab_pin.sym} 1240 -860 0 1 {name=p29 lab=IZTC_10u_snk}
C {lab_pin.sym} 1060 -770 0 1 {name=p30 lab=VSS}
C {lab_pin.sym} 1130 -770 0 1 {name=p31 lab=SUB}
C {lab_pin.sym} 790 -650 0 1 {name=p32 lab=VDD}
C {lab_pin.sym} 590 -550 0 0 {name=p33 lab=EN}
C {lab_pin.sym} 590 -530 0 0 {name=p34 lab=ENB}
C {lab_pin.sym} 650 -450 1 1 {name=p35 lab=SUB}
C {lab_pin.sym} 710 -450 0 1 {name=p36 lab=ibias}
C {lab_pin.sym} 850 -490 0 1 {name=p38 lab=VBG_buf}
C {lab_pin.sym} 630 -450 1 1 {name=p39 lab=VSS}
C {lab_pin.sym} 420 -900 0 1 {name=p40 lab=IPTAT_2u_src}
C {lab_pin.sym} 830 -900 0 1 {name=p42 lab=ICTAT_2u_src}
C {lab_pin.sym} 1240 -900 0 1 {name=p43 lab=IZTC_2u_src}
C {libs/core_biasgen/biasgen_resistor_divider/biasgen_resistor_divider.sym} 810 -140 0 0 {name=xI_divider}
C {ipin.sym} 140 -660 0 0 {name=p37 lab=EN}
C {lab_pin.sym} 830 -420 0 0 {name=p45 lab=VDD}
C {lab_pin.sym} 850 -140 1 1 {name=p46 lab=VSS}
C {iopin.sym} 990 -340 0 0 {name=p47 lab=VREF_1V}
C {iopin.sym} 1100 -580 0 0 {name=p48 lab=IPTAT_10u_src
}
C {iopin.sym} 1100 -530 0 0 {name=p49 lab=ICTAT_2u_src
}
C {iopin.sym} 1100 -490 0 0 {name=p50 lab=ICTAT_10u_snk
}
C {iopin.sym} 1100 -510 0 0 {name=p51 lab=ICTAT_10u_src
}
C {iopin.sym} 1100 -460 0 0 {name=p52 lab=IZTC_2u_src
}
C {iopin.sym} 1100 -420 0 0 {name=p53 lab=IZTC_10u_snk
}
C {iopin.sym} 1100 -440 0 0 {name=p54 lab=IZTC_10u_src
}
C {title.sym} 160 -40 0 0 {name=l11 author="Luighi Viton (AutoMOS-Project)"}
C {libs/core_biasgen/biasgen_inverter/biasgen_inverter.sym} 140 -620 0 0 {name=xINV}
C {lab_wire.sym} 280 -660 0 1 {name=p44 sig_type=std_logic lab=ENB}
C {lab_wire.sym} 190 -700 0 1 {name=p55 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 190 -620 2 0 {name=p56 sig_type=std_logic lab=VSS}
C {iopin.sym} 1100 -390 0 0 {name=p41 lab=VBG_buf
}
