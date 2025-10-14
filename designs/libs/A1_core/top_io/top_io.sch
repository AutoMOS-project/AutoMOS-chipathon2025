v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 3 200 -2880 1080 -2880 {}
L 3 200 -1920 1080 -1920 {}
L 3 160 -4080 1040 -4080 {}
B 3 1120 -3490 2360 -1260 {fill=false}
T {TOP internal
AutoMOS-Project} 1570 -2430 0 0 0.8 0.8 {}
N 3040 -1640 3120 -1640 {lab=TEST_OUT}
N 360 -1860 360 -1820 {lab=DVTEST}
N 540 -1040 780 -1040 {lab=#net1}
N 540 -1020 920 -1020 {lab=#net2}
N 540 -820 780 -820 {lab=#net3}
N 540 -800 920 -800 {lab=#net4}
N 540 -600 780 -600 {lab=#net5}
N 540 -580 920 -580 {lab=#net6}
N 540 -1260 780 -1260 {lab=#net7}
N 540 -1240 920 -1240 {lab=#net8}
N 540 -1480 780 -1480 {lab=#net9}
N 540 -1460 920 -1460 {lab=#net10}
N 520 -2270 760 -2270 {lab=#net11}
N 520 -2250 900 -2250 {lab=#net12}
N 520 -2490 760 -2490 {lab=#net13}
N 520 -2470 900 -2470 {lab=#net14}
N 520 -3250 760 -3250 {lab=#net15}
N 520 -3230 900 -3230 {lab=#net16}
N 520 -3690 760 -3690 {lab=#net17}
N 520 -3670 900 -3670 {lab=#net18}
N 520 -3910 760 -3910 {lab=#net19}
N 520 -3890 900 -3890 {lab=#net20}
N 520 -4210 760 -4210 {lab=#net21}
N 520 -4190 900 -4190 {lab=#net22}
N 2730 -2440 2860 -2440 {lab=vco_out_int}
N 2630 -2400 2850 -2400 {lab=#net23}
N 2630 -2500 2860 -2500 {lab=#net24}
N 2840 -2580 2860 -2580 {lab=#net24}
N 2840 -2580 2840 -2500 {lab=#net24}
N 2840 -2560 2860 -2560 {lab=#net24}
N 2840 -2540 2860 -2540 {lab=#net24}
N 2840 -2520 2860 -2520 {lab=#net24}
N 2840 -2480 2860 -2480 {lab=#net24}
N 2840 -2500 2840 -2480 {lab=#net24}
N 2840 -2460 2860 -2460 {lab=#net24}
N 2840 -2480 2840 -2460 {lab=#net24}
N 2530 -2400 2630 -2400 {lab=#net23}
N 2850 -2400 2860 -2400 {lab=#net23}
N 2840 -2460 2840 -2420 {lab=#net24}
N 2840 -2420 2860 -2420 {lab=#net24}
C {Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 280 -320 0 0 {name=IO_TEST_IBIAS
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} 360 -480 0 0 {name=p1 lab=DVTEST}
C {lab_pin.sym} 400 -480 0 1 {name=p2 lab=VTEST}
C {lab_pin.sym} 360 -320 0 0 {name=p6 lab=DVSS}
C {Chipathon2025_pads/xschem/symbols/io_dvdd.sym} 1310 -4150 0 0 {name=IOVDD
model=gf180mcu_fd_io__dvdd
spiceprefix=X
spice_ignore=true
}
C {Chipathon2025_pads/xschem/symbols/io_dvss.sym} 1420 -270 0 0 {name=IOVSS
model=gf180mcu_fd_io__dvss
spiceprefix=X
spice_ignore=true
}
C {lab_pin.sym} 1390 -4310 0 1 {name=p7 lab=DVDD}
C {lab_pin.sym} 1390 -4150 0 1 {name=p8 lab=DVSS}
C {lab_pin.sym} 1430 -4150 0 1 {name=p9 lab=VSS}
C {lab_pin.sym} 1500 -430 0 0 {name=p10 lab=DVDD}
C {lab_pin.sym} 1540 -430 0 1 {name=p12 lab=VDD}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 280 -540 0 0 {name=IO_TEST_IBIAS_OVRD
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {Chipathon2025_pads/xschem/symbols/io_bi_t.sym} 3120 -2360 0 1 {name=IO6
model=gf180mcu_fd_io__bi_t
spiceprefix=X
}
C {lab_pin.sym} 360 -700 0 0 {name=p13 lab=DVTEST}
C {lab_pin.sym} 360 -540 0 0 {name=p14 lab=DVSS}
C {lab_pin.sym} 400 -700 0 1 {name=p18 lab=VTEST}
C {lab_pin.sym} 400 -540 0 1 {name=p19 lab=VSS}
C {lab_pin.sym} 3040 -2360 0 1 {name=p45 lab=DVSS}
C {lab_pin.sym} 3000 -2360 0 0 {name=p55 lab=VSS}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 280 -760 0 0 {name=IO_TEST_SEL_2
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 360 -920 0 0 {name=p21 lab=DVTEST}
C {lab_pin.sym} 360 -760 0 0 {name=p22 lab=DVSS}
C {lab_pin.sym} 400 -920 0 1 {name=p26 lab=VTEST}
C {lab_pin.sym} 400 -760 0 1 {name=p27 lab=VSS}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 280 -980 0 0 {name=IO_TEST_SEL_1
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 360 -1140 0 0 {name=p58 lab=DVTEST}
C {lab_pin.sym} 360 -980 0 0 {name=p59 lab=DVSS}
C {lab_pin.sym} 400 -1140 0 1 {name=p63 lab=VTEST}
C {lab_pin.sym} 400 -980 0 1 {name=p64 lab=VSS}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 280 -1200 0 0 {name=IO_TEST_SEL_0
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 360 -1360 0 0 {name=p66 lab=DVTEST}
C {lab_pin.sym} 360 -1200 0 0 {name=p67 lab=DVSS}
C {lab_pin.sym} 400 -1360 0 1 {name=p71 lab=VTEST}
C {lab_pin.sym} 400 -1200 0 1 {name=p72 lab=VSS}
C {Chipathon2025_pads/xschem/symbols/io_dvdd.sym} 280 -1660 0 0 {name=IOVDD1
model=gf180mcu_fd_io__dvdd
spiceprefix=X
spice_ignore=true
}
C {lab_pin.sym} 360 -1660 0 0 {name=p75 lab=DVSS}
C {lab_pin.sym} 400 -1660 0 1 {name=p76 lab=VSS}
C {ipin.sym} 280 -1280 0 0 {name=p77 lab=TEST_SEL_0}
C {ipin.sym} 280 -1060 0 0 {name=p78 lab=TEST_SEL_1}
C {ipin.sym} 280 -840 0 0 {name=p79 lab=TEST_SEL_2}
C {iopin.sym} 260 -3490 2 0 {name=p80 lab=LDO_VREF}
C {iopin.sym} 260 -3050 2 0 {name=p81 lab=LDO_IBIAS}
C {iopin.sym} 280 -400 2 0 {name=p83 lab=TEST_IBIAS}
C {ipin.sym} 260 -3710 0 0 {name=p84 lab=LDO_VREF_OVRD}
C {ipin.sym} 260 -3270 0 0 {name=p85 lab=LDO_IBIAS_OVRD}
C {ipin.sym} 280 -620 0 0 {name=p87 lab=TEST_IBIAS_OVRD}
C {ipin.sym} 280 -1500 0 0 {name=p89 lab=TEST_EN}
C {ipin.sym} 260 -4230 0 0 {name=p91 lab=BIAS_EN}
C {ipin.sym} 260 -3930 0 0 {name=p94 lab=LDO_EN}
C {iopin.sym} 1450 -4410 3 0 {name=p92 lab=VDD}
C {iopin.sym} 1760 -270 0 0 {name=p95 lab=SUB}
C {iopin.sym} 360 -1860 2 0 {name=p96 lab=DVTEST}
C {iopin.sym} 3040 -3380 0 0 {name=p97 lab=DV1P8}
C {iopin.sym} 3120 -2480 0 0 {name=p98 lab=VCO_OUT}
C {iopin.sym} 3120 -1640 0 0 {name=p99 lab=TEST_OUT}
C {Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 260 -1990 0 0 {name=IO_VCO_IBIAS
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} 380 -1990 0 1 {name=p57 lab=VSS}
C {lab_pin.sym} 340 -1990 0 0 {name=p60 lab=DVSS}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 260 -2210 0 0 {name=IO_VCO_IBIAS_OVRD
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 340 -2210 0 0 {name=p68 lab=DVSS}
C {lab_pin.sym} 380 -2210 0 1 {name=p101 lab=VSS}
C {iopin.sym} 260 -2070 2 0 {name=p103 lab=VCO_IBIAS}
C {ipin.sym} 260 -2290 0 0 {name=p104 lab=VCO_IBIAS_OVRD}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 260 -2430 0 0 {name=IO_VCO_EN
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 340 -2590 0 0 {name=p105 lab=DVDD}
C {lab_pin.sym} 340 -2430 0 0 {name=p106 lab=DVSS}
C {lab_pin.sym} 380 -2590 0 1 {name=p109 lab=VDD}
C {lab_pin.sym} 380 -2430 0 1 {name=p110 lab=VSS}
C {ipin.sym} 260 -2510 0 0 {name=p120 lab=VCO_EN}
C {Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 260 -2660 0 0 {name=IO_VCO_IN
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} 340 -2820 0 0 {name=p29 lab=DV1P8}
C {lab_pin.sym} 380 -2820 0 1 {name=p30 lab=V1P8}
C {lab_pin.sym} 380 -2660 0 1 {name=p32 lab=VSS}
C {lab_pin.sym} 340 -2660 0 0 {name=p33 lab=DVSS}
C {iopin.sym} 260 -2740 2 0 {name=p34 lab=VCO_IN}
C {lab_pin.sym} 340 -2370 0 0 {name=p35 lab=DVDD}
C {lab_pin.sym} 380 -2370 0 1 {name=p36 lab=VDD}
C {Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 260 -2970 0 0 {name=IO_LDO_IBIAS
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} 340 -3130 0 0 {name=p37 lab=DVDD}
C {lab_pin.sym} 380 -3130 0 1 {name=p38 lab=VDD}
C {lab_pin.sym} 380 -2970 0 1 {name=p40 lab=VSS}
C {lab_pin.sym} 340 -2970 0 0 {name=p41 lab=DVSS}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 260 -3190 0 0 {name=IO_LDO_IBIAS_OVRD
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 340 -3190 0 0 {name=p112 lab=DVSS}
C {lab_pin.sym} 380 -3190 0 1 {name=p115 lab=VSS}
C {Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 260 -3410 0 0 {name=IO_LCO_VREF
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} 340 -3570 0 0 {name=p119 lab=DVDD}
C {lab_pin.sym} 380 -3570 0 1 {name=p121 lab=VDD}
C {lab_pin.sym} 380 -3410 0 1 {name=p123 lab=VSS}
C {lab_pin.sym} 340 -3410 0 0 {name=p124 lab=DVSS}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 260 -3630 0 0 {name=IO_LDO_VREF_OVRD
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 340 -3630 0 0 {name=p125 lab=DVSS}
C {lab_pin.sym} 380 -3630 0 1 {name=p128 lab=VSS}
C {lab_pin.sym} 340 -3790 0 0 {name=p130 lab=DVDD}
C {lab_pin.sym} 380 -3790 0 1 {name=p131 lab=VDD}
C {lab_pin.sym} 340 -3350 0 0 {name=p132 lab=DVDD}
C {lab_pin.sym} 380 -3350 0 1 {name=p133 lab=VDD}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 260 -3850 0 0 {name=IO_LDO_EN
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 340 -4010 0 0 {name=p82 lab=DVDD}
C {lab_pin.sym} 340 -3850 0 0 {name=p86 lab=DVSS}
C {lab_pin.sym} 380 -4010 0 1 {name=p117 lab=VDD}
C {lab_pin.sym} 380 -3850 0 1 {name=p118 lab=VSS}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 280 -1420 0 0 {name=IO_TEST_EN
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 360 -1580 0 0 {name=p136 lab=DVTEST}
C {lab_pin.sym} 360 -1420 0 0 {name=p137 lab=DVSS}
C {lab_pin.sym} 400 -1580 0 1 {name=p140 lab=VTEST}
C {lab_pin.sym} 400 -1420 0 1 {name=p141 lab=VSS}
C {Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 3040 -1560 0 1 {name=IO_LCO_VREF2
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} 2960 -1720 0 1 {name=p48 lab=DVDD}
C {lab_pin.sym} 2920 -1720 0 0 {name=p147 lab=VDD}
C {lab_pin.sym} 2920 -1560 0 0 {name=p149 lab=VSS}
C {lab_pin.sym} 2960 -1560 0 1 {name=p150 lab=DVSS}
C {Chipathon2025_pads/xschem/symbols/io_dvss.sym} 1680 -270 0 0 {name=IOSUB
model=gf180mcu_fd_io__dvss
spiceprefix=X
spice_ignore=true
}
C {lab_pin.sym} 1760 -430 0 0 {name=p93 lab=DVDD}
C {lab_pin.sym} 1800 -430 0 1 {name=p152 lab=VDD}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1040 -940 0 1 {name=x1}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 900 -1000 0 1 {name=x2}
C {lab_pin.sym} 1000 -1060 0 1 {name=p16 lab=VTEST}
C {lab_pin.sym} 860 -1120 0 1 {name=p17 lab=VTEST}
C {lab_pin.sym} 1000 -940 0 1 {name=p24 lab=VSS}
C {lab_pin.sym} 860 -1000 0 1 {name=p25 lab=VSS}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1040 -720 0 1 {name=x3}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 900 -780 0 1 {name=x4}
C {lab_pin.sym} 1000 -840 0 1 {name=p61 lab=VTEST}
C {lab_pin.sym} 860 -900 0 1 {name=p62 lab=VTEST}
C {lab_pin.sym} 1000 -720 0 1 {name=p69 lab=VSS}
C {lab_pin.sym} 860 -780 0 1 {name=p70 lab=VSS}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1040 -500 0 1 {name=x5}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 900 -560 0 1 {name=x6}
C {lab_pin.sym} 1000 -620 0 1 {name=p138 lab=VTEST}
C {lab_pin.sym} 860 -680 0 1 {name=p139 lab=VTEST}
C {lab_pin.sym} 1000 -500 0 1 {name=p151 lab=VSS}
C {lab_pin.sym} 860 -560 0 1 {name=p153 lab=VSS}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1040 -1160 0 1 {name=x7}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 900 -1220 0 1 {name=x8}
C {lab_pin.sym} 1000 -1280 0 1 {name=p154 lab=VTEST}
C {lab_pin.sym} 860 -1340 0 1 {name=p155 lab=VTEST}
C {lab_pin.sym} 1000 -1160 0 1 {name=p156 lab=VSS}
C {lab_pin.sym} 860 -1220 0 1 {name=p157 lab=VSS}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1040 -1380 0 1 {name=x9}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 900 -1440 0 1 {name=x10}
C {lab_pin.sym} 1000 -1500 0 1 {name=p158 lab=VTEST}
C {lab_pin.sym} 860 -1560 0 1 {name=p159 lab=VTEST}
C {lab_pin.sym} 1000 -1380 0 1 {name=p160 lab=VSS}
C {lab_pin.sym} 860 -1440 0 1 {name=p161 lab=VSS}
C {opin.sym} 540 -1500 0 0 {name=p142 lab=test_en_int}
C {opin.sym} 540 -1280 0 0 {name=p162 lab=test_sel_0_int}
C {opin.sym} 540 -1060 0 0 {name=p73 lab=test_sel_1_int}
C {opin.sym} 540 -840 0 0 {name=p65 lab=test_sel_2_int}
C {opin.sym} 540 -620 0 0 {name=p20 lab=test_ibias_ovrd_int}
C {iopin.sym} 480 -400 0 0 {name=p4 lab=test_ibias_int}
C {lab_pin.sym} 340 -2150 0 0 {name=p3 lab=DV1P8}
C {lab_pin.sym} 380 -2150 0 1 {name=p15 lab=V1P8}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1020 -2170 0 1 {name=x11}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 880 -2230 0 1 {name=x12}
C {lab_pin.sym} 980 -2290 0 1 {name=p28 lab=VDD}
C {lab_pin.sym} 840 -2350 0 1 {name=p74 lab=VDD}
C {lab_pin.sym} 980 -2170 0 1 {name=p100 lab=VSS}
C {lab_pin.sym} 840 -2230 0 1 {name=p102 lab=VSS}
C {opin.sym} 520 -2290 0 0 {name=p107 lab=vco_bias_ovrd_int}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1020 -2390 0 1 {name=x13}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 880 -2450 0 1 {name=x14}
C {lab_pin.sym} 980 -2510 0 1 {name=p108 lab=VDD}
C {lab_pin.sym} 840 -2570 0 1 {name=p111 lab=VDD}
C {lab_pin.sym} 980 -2390 0 1 {name=p163 lab=VSS}
C {lab_pin.sym} 840 -2450 0 1 {name=p164 lab=VSS}
C {opin.sym} 520 -2510 0 0 {name=p165 lab=vco_en_int}
C {iopin.sym} 460 -2740 0 0 {name=p31 lab=vco_in_int}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1020 -3150 0 1 {name=x15}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 880 -3210 0 1 {name=x16}
C {lab_pin.sym} 980 -3270 0 1 {name=p39 lab=VDD}
C {lab_pin.sym} 840 -3330 0 1 {name=p88 lab=VDD}
C {lab_pin.sym} 980 -3150 0 1 {name=p90 lab=VSS}
C {lab_pin.sym} 840 -3210 0 1 {name=p113 lab=VSS}
C {opin.sym} 520 -3270 0 0 {name=p114 lab=ldo_ibias_ovrd_int}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1020 -3590 0 1 {name=x17}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 880 -3650 0 1 {name=x18}
C {lab_pin.sym} 980 -3710 0 1 {name=p116 lab=VDD}
C {lab_pin.sym} 840 -3770 0 1 {name=p122 lab=VDD}
C {lab_pin.sym} 980 -3590 0 1 {name=p126 lab=VSS}
C {lab_pin.sym} 840 -3650 0 1 {name=p127 lab=VSS}
C {opin.sym} 520 -3710 0 0 {name=p129 lab=ldo_vref_ovrd_int}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1020 -3810 0 1 {name=x19}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 880 -3870 0 1 {name=x20}
C {lab_pin.sym} 980 -3930 0 1 {name=p134 lab=VDD}
C {lab_pin.sym} 980 -3810 0 1 {name=p166 lab=VSS}
C {lab_pin.sym} 840 -3870 0 1 {name=p167 lab=VSS}
C {opin.sym} 520 -3930 0 0 {name=p168 lab=ldo_en_int}
C {iopin.sym} 460 -3490 2 1 {name=p169 lab=ldo_vref_int}
C {iopin.sym} 460 -3050 2 1 {name=p170 lab=ldo_ibias_int}
C {Chipathon2025_pads/xschem/symbols/io_in_c.sym} 260 -4150 0 0 {name=IO_LDO_EN1
model=gf180mcu_fd_io__in_c
spiceprefix=X
}
C {lab_pin.sym} 340 -4310 0 0 {name=p172 lab=DVDD}
C {lab_pin.sym} 340 -4150 0 0 {name=p173 lab=DVSS}
C {lab_pin.sym} 380 -4310 0 1 {name=p174 lab=VDD}
C {lab_pin.sym} 380 -4150 0 1 {name=p175 lab=VSS}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 1020 -4110 0 1 {name=x21}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 880 -4170 0 1 {name=x22}
C {lab_pin.sym} 980 -4230 0 1 {name=p176 lab=VDD}
C {lab_pin.sym} 980 -4110 0 1 {name=p177 lab=VSS}
C {lab_pin.sym} 840 -4170 0 1 {name=p178 lab=VSS}
C {opin.sym} 520 -4230 0 0 {name=p179 lab=bias_en_int}
C {lab_pin.sym} 840 -3990 0 1 {name=p171 lab=VDD}
C {lab_pin.sym} 840 -4290 0 1 {name=p180 lab=VDD}
C {iopin.sym} 1390 -4410 3 0 {name=p181 lab=DVDD}
C {iopin.sym} 1500 -270 0 0 {name=p182 lab=DVSS}
C {Chipathon2025_pads/xschem/symbols/io_dvdd.sym} 3040 -3140 0 1 {name=IOVDD2
model=gf180mcu_fd_io__dvdd
spiceprefix=X
spice_ignore=true
}
C {lab_pin.sym} 2960 -3300 0 0 {name=p5 lab=DV1P8}
C {lab_pin.sym} 2960 -3140 0 1 {name=p183 lab=DVSS}
C {lab_pin.sym} 2920 -3140 0 0 {name=p184 lab=VSS}
C {iopin.sym} 3040 -3320 0 0 {name=p135 lab=V1P8}
C {iopin.sym} 2840 -1640 0 1 {name=p143 lab=test_out_int}
C {iopin.sym} 2730 -2440 0 1 {name=p144 lab=vco_out_int}
C {lab_pin.sym} 3040 -2620 0 1 {name=p42 lab=DVDD}
C {lab_pin.sym} 3000 -2620 0 0 {name=p43 lab=VDD}
C {libs/core_top/top_io_tie_h/top_io_tie_h.sym} 2410 -2320 0 0 {name=x23}
C {libs/core_top/top_io_tie_l/top_io_tie_l.sym} 2510 -2460 0 0 {name=x24}
C {lab_pin.sym} 2450 -2440 0 0 {name=p44 lab=VDD}
C {lab_pin.sym} 2550 -2580 0 0 {name=p46 lab=VDD}
C {lab_pin.sym} 2450 -2320 0 0 {name=p47 lab=VSS}
C {lab_pin.sym} 2550 -2460 0 0 {name=p49 lab=VSS}
C {iopin.sym} 420 -1860 0 0 {name=p50 lab=VTEST}
C {iopin.sym} 1500 -210 0 0 {name=p51 lab=VSS}
C {title.sym} 160 -40 0 0 {name=l1 author="Luighi Viton (AutoMOS-Project)"}
C {lab_pin.sym} 400 -320 0 1 {name=p11 lab=VSS}
C {iopin.sym} 460 -2070 2 1 {name=p23 lab=vco_ibias_int}
C {symbols/rm3.sym} 1420 -4410 1 0 {name=R1
W=1e-6
L=1e-6
model=rm3
spiceprefix=X
m=1}
C {symbols/rm3.sym} 1500 -240 2 0 {name=R2
W=1e-6
L=1e-6
model=rm3
spiceprefix=X
m=1}
C {symbols/rm3.sym} 3040 -3350 2 0 {name=R3
W=1e-6
L=1e-6
model=rm3
spiceprefix=X
m=1}
C {symbols/rm3.sym} 390 -1860 3 0 {name=R4
W=1e-6
L=1e-6
model=rm3
spiceprefix=X
m=1}
