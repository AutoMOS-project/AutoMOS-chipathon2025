v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 420 -600 580 -600 {lab=bias_en_int}
N 420 -540 580 -540 {lab=ldo_en_int}
N 420 -520 580 -520 {lab=ldo_vref_ovrd_int}
N 420 -500 580 -500 {lab=ldo_vref_int}
N 420 -480 580 -480 {lab=ldo_ibias_ovrd_int}
N 420 -460 580 -460 {lab=ldo_ibias_int}
N 420 -400 580 -400 {lab=vco_in_int}
N 420 -380 580 -380 {lab=vco_en_int}
N 420 -360 580 -360 {lab=vco_bias_ovrd_int}
N 420 -340 580 -340 {lab=vco_ibias_int}
N 420 -280 580 -280 {lab=VTEST}
N 420 -260 580 -260 {lab=test_en_int}
N 420 -240 580 -240 {lab=test_sel_0_int}
N 420 -220 580 -220 {lab=test_sel_1_int}
N 420 -200 580 -200 {lab=test_sel_2_int}
N 420 -180 580 -180 {lab=test_ibias_ovrd_int}
N 420 -160 580 -160 {lab=test_ibias_int}
N 820 -540 980 -540 {lab=V1P8}
N 820 -400 980 -400 {lab=vco_out_int}
N 820 -280 980 -280 {lab=test_out_int}
N 700 -680 700 -640 {lab=VDD}
C {libs/core_top/top/top.sym} 580 -100 0 0 {name=xI_top}
C {libs/core_top/top_io/top_io.sym} 160 -80 0 0 {name=xI_top_io}
C {lab_pin.sym} 700 -680 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 700 -820 0 1 {name=p2 lab=DVDD}
C {lab_wire.sym} 420 -600 0 1 {name=p3 lab=bias_en_int}
C {lab_pin.sym} 160 -600 0 0 {name=p4 lab=BIAS_EN}
C {lab_wire.sym} 420 -540 0 1 {name=p5 lab=ldo_en_int}
C {lab_pin.sym} 160 -540 0 0 {name=p6 lab=LDO_EN}
C {lab_wire.sym} 420 -520 0 1 {name=p7 lab=ldo_vref_ovrd_int}
C {lab_pin.sym} 160 -520 0 0 {name=p8 lab=LDO_VREF_OVRD}
C {lab_wire.sym} 420 -500 0 1 {name=p9 lab=ldo_vref_int}
C {lab_pin.sym} 160 -500 0 0 {name=p10 lab=LDO_VREF}
C {lab_pin.sym} 1240 -540 0 1 {name=p11 lab=DV1P8}
C {lab_wire.sym} 980 -540 0 0 {name=p12 lab=V1P8}
C {lab_pin.sym} 160 -480 0 0 {name=p13 lab=LDO_IBIAS_OVRD}
C {lab_wire.sym} 420 -480 0 1 {name=p14 lab=ldo_ibias_ovrd_int}
C {lab_pin.sym} 160 -460 0 0 {name=p15 lab=LDO_IBIAS}
C {lab_wire.sym} 420 -460 0 1 {name=p16 lab=ldo_ibias_int}
C {lab_pin.sym} 160 -400 0 0 {name=p17 lab=VCO_IN}
C {lab_wire.sym} 420 -400 0 1 {name=p18 lab=vco_in_int}
C {lab_wire.sym} 420 -380 0 1 {name=p19 lab=vco_en_int}
C {lab_pin.sym} 160 -380 0 0 {name=p20 lab=VCO_EN}
C {lab_pin.sym} 1240 -400 0 1 {name=p21 lab=VCO_OUT}
C {lab_wire.sym} 980 -400 0 0 {name=p22 lab=vco_out_int}
C {lab_wire.sym} 420 -360 0 1 {name=p23 lab=vco_bias_ovrd_int}
C {lab_pin.sym} 160 -360 0 0 {name=p24 lab=VCO_IBIAS_OVRD}
C {lab_pin.sym} 160 -340 0 0 {name=p25 lab=VCO_IBIAS}
C {lab_pin.sym} 160 -280 0 0 {name=p26 lab=DVTEST}
C {lab_wire.sym} 420 -280 0 1 {name=p27 lab=VTEST}
C {lab_wire.sym} 980 -280 0 0 {name=p28 lab=test_out_int}
C {lab_pin.sym} 1240 -280 0 1 {name=p29 lab=TEST_OUT}
C {lab_wire.sym} 420 -260 0 1 {name=p30 lab=test_en_int}
C {lab_pin.sym} 160 -260 0 0 {name=p31 lab=TEST_EN}
C {lab_wire.sym} 420 -240 0 1 {name=p32 lab=test_sel_0_int}
C {lab_pin.sym} 160 -240 0 0 {name=p33 lab=TEST_SEL_0}
C {lab_pin.sym} 160 -220 0 0 {name=p34 lab=TEST_SEL_1}
C {lab_wire.sym} 420 -220 0 1 {name=p35 lab=test_sel_1_int}
C {lab_pin.sym} 160 -200 0 0 {name=p36 lab=TEST_SEL_2}
C {lab_wire.sym} 420 -200 0 1 {name=p37 lab=test_sel_2_int}
C {lab_wire.sym} 420 -180 0 1 {name=p38 lab=test_ibias_ovrd_int}
C {lab_pin.sym} 160 -180 0 0 {name=p39 lab=TEST_IBIAS_OVRD}
C {lab_wire.sym} 420 -160 0 1 {name=p40 lab=test_ibias_int}
C {lab_pin.sym} 160 -160 0 0 {name=p41 lab=TEST_IBIAS}
C {lab_pin.sym} 1240 -180 0 1 {name=p42 lab=DVSS}
C {lab_wire.sym} 980 -160 0 0 {name=p43 lab=SUB}
C {lab_wire.sym} 980 -180 0 0 {name=p44 lab=VSS}
C {lab_wire.sym} 420 -340 0 1 {name=p45 lab=vco_ibias_int}
C {lab_wire.sym} 740 -100 2 0 {name=p46 lab=SUB}
C {lab_wire.sym} 700 -100 2 1 {name=p47 lab=VSS}
C {iopin.sym} 1350 -400 0 0 { name=p48 lab=VCO_OUT }
C {iopin.sym} 0 -400 0 1 { name=p49 lab=VCO_IN }
C {ipin.sym} 0 -360 0 0 { name=p50 lab=VCO_IBIAS_OVRD }
C {iopin.sym} 0 -340 0 1 { name=p51 lab=VCO_IBIAS }
C {ipin.sym} 0 -380 0 0 { name=p52 lab=VCO_EN }
C {ipin.sym} 0 -200 0 0 { name=p53 lab=TEST_SEL_2 }
C {ipin.sym} 0 -220 0 0 { name=p54 lab=TEST_SEL_1 }
C {ipin.sym} 0 -240 0 0 { name=p55 lab=TEST_SEL_0 }
C {iopin.sym} 1350 -280 0 0 { name=p56 lab=TEST_OUT }
C {ipin.sym} 0 -180 0 0 { name=p57 lab=TEST_IBIAS_OVRD }
C {iopin.sym} 0 -160 0 1 { name=p58 lab=TEST_IBIAS }
C {ipin.sym} 0 -260 0 0 { name=p59 lab=TEST_EN }
C {iopin.sym} 740 -40 0 1 { name=p60 lab=SUB }
C {ipin.sym} 0 -520 0 0 { name=p61 lab=LDO_VREF_OVRD }
C {iopin.sym} 0 -500 0 1 { name=p62 lab=LDO_VREF }
C {ipin.sym} 0 -480 0 0 { name=p63 lab=LDO_IBIAS_OVRD }
C {iopin.sym} 0 -460 0 1 { name=p64 lab=LDO_IBIAS }
C {ipin.sym} 0 -540 0 0 { name=p65 lab=LDO_EN }
C {iopin.sym} 0 -280 0 1 { name=p66 lab=DVTEST }
C {iopin.sym} 1350 -180 0 0 { name=p67 lab=DVSS }
C {iopin.sym} 700 -850 0 0 { name=p68 lab=DVDD }
C {iopin.sym} 1340 -540 0 0 { name=p69 lab=DV1P8 }
C {ipin.sym} 0 -600 0 0 { name=p70 lab=BIAS_EN }
