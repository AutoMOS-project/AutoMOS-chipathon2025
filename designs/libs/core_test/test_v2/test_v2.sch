v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 -520 190 -520 {lab=IN0}
N 150 -500 190 -500 {lab=IN1}
N 150 -480 190 -480 {lab=IN2}
N 150 -460 190 -460 {lab=IN3}
N 150 -440 190 -440 {lab=IN4}
N 150 -420 190 -420 {lab=IN5}
N 150 -400 190 -400 {lab=IN6}
N 150 -380 190 -380 {lab=IN7}
N 150 -560 190 -560 {lab=VDD}
N 150 -280 190 -280 {lab=VOUT}
N 150 -260 190 -260 {lab=VSS}
N 580 -530 580 -510 {lab=VDD}
N 580 -530 600 -530 {lab=VDD}
N 580 -310 580 -290 {lab=VSS}
N 580 -290 600 -290 {lab=VSS}
N 400 -400 430 -400 {lab=SEL[2]}
N 400 -440 430 -440 {lab=SEL[0]}
N 400 -420 430 -420 {lab=SEL[1]}
N 730 -480 760 -480 {lab=EN0}
N 730 -460 760 -460 {lab=EN1}
N 730 -440 760 -440 {lab=EN2}
N 730 -420 760 -420 {lab=EN3}
N 730 -400 760 -400 {lab=EN4}
N 730 -380 760 -380 {lab=EN5}
N 730 -360 760 -360 {lab=EN6}
N 730 -340 760 -340 {lab=EN7}
N 400 -470 430 -470 {lab=EN}
N 730 -970 790 -970 {lab=Vp}
C {iopin.sym} 150 -560 2 0 {name=p1 lab=VDD}
C {iopin.sym} 150 -260 2 0 {name=p2 lab=VSS}
C {iopin.sym} 150 -280 0 1 {name=p4 lab=VOUT}
C {ipin.sym} 150 -360 0 0 {name=p5 lab=EN}
C {ipin.sym} 160 -340 0 0 {name=p7 lab=SEL[2:0]}
C {iopin.sym} 150 -520 2 0 {name=p8 lab=IN0}
C {iopin.sym} 150 -500 2 0 {name=p9 lab=IN1
}
C {iopin.sym} 150 -480 2 0 {name=p10 lab=IN2}
C {iopin.sym} 150 -460 2 0 {name=p11 lab=IN3}
C {iopin.sym} 150 -440 2 0 {name=p12 lab=IN4}
C {iopin.sym} 150 -420 2 0 {name=p13 lab=IN5}
C {iopin.sym} 150 -400 2 0 {name=p14 lab=IN6}
C {iopin.sym} 150 -380 2 0 {name=p15 lab=IN7}
C {lab_pin.sym} 190 -520 0 1 {name=p16 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 190 -500 0 1 {name=p17 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 190 -480 0 1 {name=p18 sig_type=std_logic lab=IN2}
C {lab_pin.sym} 190 -460 0 1 {name=p19 sig_type=std_logic lab=IN3}
C {lab_pin.sym} 190 -440 0 1 {name=p20 sig_type=std_logic lab=IN4}
C {lab_pin.sym} 190 -420 0 1 {name=p21 sig_type=std_logic lab=IN5}
C {lab_pin.sym} 190 -400 0 1 {name=p22 sig_type=std_logic lab=IN6}
C {lab_pin.sym} 190 -380 0 1 {name=p23 sig_type=std_logic lab=IN7}
C {lab_pin.sym} 190 -560 0 1 {name=p26 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 190 -280 0 1 {name=p28 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 190 -260 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {libs/core_test/test_decoder/test_decoder.sym} 430 -310 0 0 {name=xI_decoder}
C {lab_pin.sym} 600 -530 0 1 {name=p68 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 -290 0 1 {name=p69 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 400 -400 0 0 {name=p70 sig_type=std_logic lab=SEL[2]}
C {lab_pin.sym} 400 -420 0 0 {name=p71 sig_type=std_logic lab=SEL[1]}
C {lab_pin.sym} 400 -440 0 0 {name=p72 sig_type=std_logic lab=SEL[0]}
C {lab_pin.sym} 760 -480 0 1 {name=p73 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 760 -460 0 1 {name=p74 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 760 -440 0 1 {name=p75 sig_type=std_logic lab=EN2}
C {lab_pin.sym} 760 -420 0 1 {name=p76 sig_type=std_logic lab=EN3}
C {lab_pin.sym} 760 -400 0 1 {name=p77 sig_type=std_logic lab=EN4}
C {lab_pin.sym} 760 -380 0 1 {name=p78 sig_type=std_logic lab=EN5}
C {lab_pin.sym} 760 -360 0 1 {name=p79 sig_type=std_logic lab=EN6}
C {lab_pin.sym} 760 -340 0 1 {name=p80 sig_type=std_logic lab=EN7}
C {lab_pin.sym} 400 -470 0 0 {name=p24 sig_type=std_logic lab=EN}
C {noconn.sym} 790 -970 0 1 {name=l2}
C {libs/core_test/test_all_tg/test_all_tg.sym} 580 -940 0 0 {name=x9}
C {lab_pin.sym} 580 -1160 0 1 {name=p6 lab=VDD}
C {lab_pin.sym} 580 -720 0 1 {name=p25 lab=VSS}
C {lab_pin.sym} 730 -970 0 1 {name=p62 lab=Vp}
C {lab_pin.sym} 730 -910 0 1 {name=p63 lab=VOUT}
C {lab_pin.sym} 430 -1090 0 0 {name=p65 lab=IN0}
C {lab_pin.sym} 430 -1070 0 0 {name=p66 lab=IN1}
C {lab_pin.sym} 430 -1050 0 0 {name=p67 lab=IN2}
C {lab_pin.sym} 430 -1030 0 0 {name=p81 lab=IN3}
C {lab_pin.sym} 430 -1010 0 0 {name=p82 lab=IN4}
C {lab_pin.sym} 430 -990 0 0 {name=p83 lab=IN5}
C {lab_pin.sym} 430 -970 0 0 {name=p84 lab=IN6}
C {lab_pin.sym} 430 -950 0 0 {name=p85 lab=IN7}
C {lab_pin.sym} 430 -930 0 0 {name=p86 lab=EN0}
C {lab_pin.sym} 430 -910 0 0 {name=p87 lab=EN1}
C {lab_pin.sym} 430 -890 0 0 {name=p88 lab=EN2}
C {lab_pin.sym} 430 -870 0 0 {name=p89 lab=EN3}
C {lab_pin.sym} 430 -850 0 0 {name=p90 lab=EN4}
C {lab_pin.sym} 430 -830 0 0 {name=p91 lab=EN5}
C {lab_pin.sym} 430 -810 0 0 {name=p92 lab=EN6}
C {lab_pin.sym} 430 -790 0 0 {name=p93 lab=EN7}
