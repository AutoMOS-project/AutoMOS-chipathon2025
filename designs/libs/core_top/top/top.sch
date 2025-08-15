v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {In CHIP package this pin appears as VIN,
however to indicate that this is power supply 
internally I considered as VDD} -490 -940 0 0 0.4 0.4 {}
N 420 -760 500 -760 {lab=VBG}
N 420 -720 500 -720 {lab=IPTAT}
N 420 -700 500 -700 {lab=IZTC}
N 240 -720 240 -700 {lab=bandgap_fb}
N 1330 -930 1330 -910 {lab=ldo_fb}
N 420 -740 500 -740 {lab=ICTAT}
N 1500 -910 1600 -910 {lab=VOUT}
N 1530 -360 1610 -360 {lab=TEST_OUT}
N 1510 -640 1590 -640 {lab=VCO_OUT}
N 1190 -970 1240 -970 {lab=#net1}
N 1240 -970 1240 -950 {lab=#net1}
N 1240 -950 1330 -950 {lab=#net1}
N 1190 -820 1240 -820 {lab=#net2}
N 1240 -890 1240 -820 {lab=#net2}
N 1240 -890 1330 -890 {lab=#net2}
N 1190 -600 1330 -600 {lab=#net3}
N 1190 -380 1330 -380 {lab=#net4}
C {ipin.sym} 180 -560 0 0 {name=p1 lab=TEST_SEL_0}
C {ipin.sym} 180 -690 0 0 {name=p2 lab=VCO_IN}
C {iopin.sym} 320 -870 3 0 {name=p4 lab=VDD}
C {iopin.sym} 310 -230 1 0 {name=p5 lab=VSS}
C {iopin.sym} 340 -230 1 0 {name=p6 lab=SUB}
C {iopin.sym} 1600 -910 0 0 {name=p3 lab=LDO_OUT}
C {iopin.sym} 1590 -640 0 0 {name=p7 lab=VCO_OUT}
C {iopin.sym} 1610 -360 0 0 {name=p8 lab=TEST_OUT}
C {ipin.sym} 180 -630 0 0 {name=p9 lab=TEST_EN}
C {ipin.sym} 180 -660 0 0 {name=p10 lab=VCO_EN}
C {libs/core_bandgap/bandgap/bandgap.sym} 260 -800 0 0 {name=xI_bandgap}
C {libs/core_biasgen/biasgen/biasgen.sym} 520 -800 0 0 {name=xI_biasgen}
C {libs/core_ldo/ldo/ldo.sym} 1480 -910 0 0 {name=I_ldo}
C {libs/core_vco/vco/vco.sym} 1350 -680 0 0 {name=xI_vco}
C {libs/core_test/test/test.sym} 1350 -400 0 0 {name=xI_test}
C {lab_wire.sym} 320 -820 0 1 {name=p11 lab=VDD}
C {lab_wire.sym} 420 -760 0 1 {name=p12 lab=VBG}
C {lab_wire.sym} 420 -720 0 1 {name=p13 lab=IPTAT}
C {lab_wire.sym} 420 -700 0 1 {name=p14 lab=IZTC}
C {lab_wire.sym} 340 -660 1 1 {name=p15 lab=SUB}
C {lab_wire.sym} 320 -660 1 1 {name=p16 lab=VSS}
C {lab_wire.sym} 600 -820 0 1 {name=p17 lab=VDD}
C {lab_wire.sym} 620 -500 1 1 {name=p22 lab=SUB}
C {lab_wire.sym} 600 -500 1 1 {name=p23 lab=VSS
}
C {lab_wire.sym} 1420 -990 0 1 {name=p24 lab=VDD}
C {lab_wire.sym} 1500 -910 0 1 {name=p26 lab=VOUT}
C {lab_wire.sym} 1440 -830 1 1 {name=p28 lab=SUB}
C {lab_wire.sym} 1420 -830 1 1 {name=p29 lab=VSS}
C {lab_wire.sym} 1430 -420 0 1 {name=p36 lab=VDD}
C {lab_wire.sym} 1450 -120 1 1 {name=p37 lab=SUB}
C {lab_wire.sym} 1430 -120 1 1 {name=p38 lab=VSS}
C {lab_wire.sym} 1410 -700 0 1 {name=p39 lab=VDD}
C {lab_wire.sym} 1510 -640 0 1 {name=p40 lab=VCO_OUT}
C {lab_wire.sym} 1430 -540 1 1 {name=p41 lab=SUB}
C {lab_wire.sym} 1410 -540 1 1 {name=p42 lab=VSS}
C {lab_wire.sym} 1330 -580 0 0 {name=p30 lab=VCO_EN}
C {lab_wire.sym} 1330 -360 0 0 {name=p32 lab=VBG}
C {lab_wire.sym} 1330 -320 0 0 {name=p33 lab=VREF_1V}
C {lab_wire.sym} 1330 -300 0 0 {name=p35 lab=VREF_0P9V}
C {lab_wire.sym} 1330 -180 0 0 {name=p48 lab=TEST_EN}
C {lab_wire.sym} 1330 -160 0 0 {name=p49 lab=TEST_SEL_2,TEST_SEL_1,TEST_SEL_0}
C {lab_wire.sym} 1530 -360 0 1 {name=p50 lab=TEST_OUT}
C {lab_wire.sym} 1330 -640 0 0 {name=p51 lab=VCO_IN}
C {lab_wire.sym} 1330 -280 0 0 {name=p43 lab=VREF_0P5V}
C {lab_wire.sym} 240 -720 0 0 {name=p18 sig_type=std_logic lab=bandgap_fb}
C {lab_wire.sym} 1330 -930 0 0 {name=p19 sig_type=std_logic lab=ldo_fb}
C {lab_wire.sym} 420 -740 0 1 {name=p20 lab=ICTAT}
C {lab_wire.sym} 420 -780 0 1 {name=p21 lab=VZTC}
C {lab_wire.sym} 740 -560 0 1 {name=p44 lab=VREF_0P9V}
C {lab_wire.sym} 740 -540 0 1 {name=p45 lab=VREF_0P5V}
C {lab_wire.sym} 740 -580 0 1 {name=p54 lab=VREF_1V}
C {lab_wire.sym} 1330 -340 0 0 {name=p52 lab=VBG_buf}
C {lab_wire.sym} 740 -600 0 1 {name=p55 lab=VBG_buf}
C {libs/core_top/top_amux_2x1/top_amux_2x1.sym} 1030 -890 0 0 {name=xI_mux_ldoref}
C {libs/core_top/top_amux_2x1/top_amux_2x1.sym} 1030 -740 0 0 {name=xI_mux_ldobias}
C {lab_wire.sym} 1110 -860 0 1 {name=p25 lab=VDD}
C {lab_wire.sym} 1110 -740 2 0 {name=p27 lab=VSS}
C {lab_wire.sym} 1110 -1010 0 1 {name=p56 lab=VDD}
C {lab_wire.sym} 1110 -890 2 0 {name=p57 lab=VSS}
C {libs/core_top/top_amux_2x1/top_amux_2x1.sym} 1030 -520 0 0 {name=xI_mux_ldobias1}
C {lab_wire.sym} 1110 -640 0 1 {name=p58 lab=VDD}
C {lab_wire.sym} 1110 -520 2 0 {name=p59 lab=VSS}
C {lab_wire.sym} 1030 -970 0 0 {name=p34 lab=VREF_0P9V}
C {lab_wire.sym} 740 -780 0 1 {name=p60 lab=IPTAT_2u_src}
C {lab_wire.sym} 740 -760 0 1 {name=p61 lab=IPTAT_10u_src}
C {lab_wire.sym} 740 -740 0 1 {name=p62 lab=IPTAT_10u_snk}
C {lab_wire.sym} 740 -720 0 1 {name=p63 lab=ICTAT_2u_src}
C {lab_wire.sym} 740 -700 0 1 {name=p64 lab=ICTAT_10u_src}
C {lab_wire.sym} 740 -680 0 1 {name=p65 lab=ICTAT_10u_snk}
C {lab_wire.sym} 740 -660 0 1 {name=p66 lab=IZTC_2u_src}
C {lab_wire.sym} 740 -640 0 1 {name=p67 lab=IZTC_10u_src}
C {lab_wire.sym} 740 -620 0 1 {name=p68 lab=IZTC_10u_snk}
C {lab_wire.sym} 1030 -380 0 0 {name=p31 lab=IPTAT_10u_snk}
C {lab_wire.sym} 1330 -260 0 0 {name=p46 lab=IPTAT_2u_src}
C {lab_wire.sym} 1330 -240 0 0 {name=p47 lab=ICTAT_2u_src}
C {lab_wire.sym} 1330 -220 0 0 {name=p53 lab=IZTC_2u_src}
C {lab_wire.sym} 1030 -820 0 0 {name=p69 lab=IZTC_10u_src}
C {lab_wire.sym} 1030 -600 0 0 {name=p70 lab=IZTC_10u_snk}
C {ipin.sym} 180 -530 0 0 {name=p71 lab=TEST_SEL_1}
C {ipin.sym} 180 -500 0 0 {name=p72 lab=TEST_SEL_2}
C {iopin.sym} 180 -440 2 0 {name=p73 lab=LDO_REF}
C {iopin.sym} 180 -410 2 0 {name=p74 lab=LDO_IBIAS}
C {iopin.sym} 180 -380 2 0 {name=p75 lab=VCO_IBIAS}
C {iopin.sym} 180 -350 2 0 {name=p76 lab=TEST_IBIAS}
C {ipin.sym} 180 -310 0 0 {name=p77 lab=LDO_VREF_OVRD}
C {ipin.sym} 180 -280 0 0 {name=p78 lab=LDO_IBIAS_OVRD}
C {lab_wire.sym} 1030 -950 0 0 {name=p79 lab=LDO_VREF}
C {lab_wire.sym} 1030 -930 0 0 {name=p80 lab=LDO_VREF_OVRD}
C {lab_wire.sym} 1030 -800 0 0 {name=p81 lab=LDO_IBIAS}
C {lab_wire.sym} 1030 -780 0 0 {name=p82 lab=LDO_IBIAS_OVRD}
C {lab_wire.sym} 1030 -580 0 0 {name=p83 lab=VCO_IBIAS}
C {lab_wire.sym} 1030 -560 0 0 {name=p84 lab=VCO_IBIAS_OVRD}
C {ipin.sym} 180 -250 0 0 {name=p85 lab=VCO_IBIAS_OVRD}
C {ipin.sym} 180 -220 0 0 {name=p86 lab=TEST_IBIAS_OVRD}
C {ipin.sym} 180 -600 0 0 {name=p87 lab=BIAS_EN}
C {lab_wire.sym} 500 -540 0 0 {name=p88 lab=BIAS_EN}
C {libs/core_top/top_amux_2x1/top_amux_2x1.sym} 1030 -300 0 0 {name=xI_mux_ldobias2}
C {lab_wire.sym} 1110 -420 0 1 {name=p89 lab=VDD}
C {lab_wire.sym} 1110 -300 2 0 {name=p90 lab=VSS}
C {lab_wire.sym} 1030 -360 0 0 {name=p92 lab=TEST_IBIAS}
C {lab_wire.sym} 1030 -340 0 0 {name=p93 lab=TEST_IBIAS_OVRD}
C {title.sym} 160 -40 0 0 {name=l11 author="Luighi Viton (AutoMOS-Project)"}
