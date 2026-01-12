v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 660 -860 690 -860 {lab=IN0}
N 760 -920 760 -900 {lab=EN0}
N 760 -920 770 -920 {lab=EN0}
N 730 -820 730 -800 {lab=VDD}
N 710 -800 730 -800 {lab=VDD}
N 790 -820 790 -800 {lab=VSS}
N 790 -800 810 -800 {lab=VSS}
N 660 -700 690 -700 {lab=IN1}
N 760 -760 760 -740 {lab=EN1}
N 760 -760 770 -760 {lab=EN1}
N 730 -660 730 -640 {lab=VDD}
N 710 -640 730 -640 {lab=VDD}
N 790 -660 790 -640 {lab=VSS}
N 790 -640 810 -640 {lab=VSS}
N 660 -530 690 -530 {lab=IN2}
N 760 -590 760 -570 {lab=EN2}
N 760 -590 770 -590 {lab=EN2}
N 730 -490 730 -470 {lab=VDD}
N 710 -470 730 -470 {lab=VDD}
N 790 -490 790 -470 {lab=VSS}
N 790 -470 810 -470 {lab=VSS}
N 660 -370 690 -370 {lab=IN3}
N 760 -430 760 -410 {lab=EN3}
N 760 -430 770 -430 {lab=EN3}
N 730 -330 730 -310 {lab=VDD}
N 710 -310 730 -310 {lab=VDD}
N 790 -330 790 -310 {lab=VSS}
N 790 -310 810 -310 {lab=VSS}
N 660 -210 690 -210 {lab=IN4}
N 760 -270 760 -250 {lab=EN4}
N 760 -270 770 -270 {lab=EN4}
N 730 -170 730 -150 {lab=VDD}
N 710 -150 730 -150 {lab=VDD}
N 790 -170 790 -150 {lab=VSS}
N 790 -150 810 -150 {lab=VSS}
N 830 -530 920 -530 {lab=Vp}
N 920 -530 920 -370 {lab=Vp}
N 830 -700 920 -700 {lab=Vp}
N 920 -700 920 -530 {lab=Vp}
N 830 -860 920 -860 {lab=Vp}
N 920 -860 920 -700 {lab=Vp}
N 830 -210 920 -210 {lab=Vp}
N 920 -370 920 -210 {lab=Vp}
N 830 -370 920 -370 {lab=Vp}
N 370 -630 410 -630 {lab=IN0}
N 370 -610 410 -610 {lab=IN1}
N 370 -590 410 -590 {lab=IN2}
N 370 -570 410 -570 {lab=IN3}
N 370 -550 410 -550 {lab=IN4}
N 370 -530 410 -530 {lab=IN5}
N 370 -510 410 -510 {lab=IN6}
N 370 -490 410 -490 {lab=IN7}
N 370 -750 410 -750 {lab=VDD}
N 370 -690 410 -690 {lab=VOUT}
N 370 -710 410 -710 {lab=Vp}
N 1120 -700 1150 -700 {lab=IN5}
N 1220 -760 1220 -740 {lab=EN5}
N 1220 -760 1230 -760 {lab=EN5}
N 1190 -660 1190 -640 {lab=VDD}
N 1170 -640 1190 -640 {lab=VDD}
N 1250 -660 1250 -640 {lab=VSS}
N 1250 -640 1270 -640 {lab=VSS}
N 1120 -530 1150 -530 {lab=IN6}
N 1220 -590 1220 -570 {lab=EN6}
N 1220 -590 1230 -590 {lab=EN6}
N 1190 -490 1190 -470 {lab=VDD}
N 1170 -470 1190 -470 {lab=VDD}
N 1250 -490 1250 -470 {lab=VSS}
N 1250 -470 1270 -470 {lab=VSS}
N 1120 -370 1150 -370 {lab=IN7}
N 1220 -430 1220 -410 {lab=EN7}
N 1220 -430 1230 -430 {lab=EN7}
N 1190 -330 1190 -310 {lab=VDD}
N 1170 -310 1190 -310 {lab=VDD}
N 1250 -330 1250 -310 {lab=VSS}
N 1250 -310 1270 -310 {lab=VSS}
N 1290 -700 1440 -700 {lab=VOUT}
N 1440 -700 1440 -530 {lab=VOUT}
N 1290 -370 1440 -370 {lab=VOUT}
N 1440 -530 1440 -370 {lab=VOUT}
N 370 -730 410 -730 {lab=VSS}
N 370 -430 410 -430 {lab=EN0}
N 370 -410 410 -410 {lab=EN1}
N 370 -390 410 -390 {lab=EN2}
N 370 -370 410 -370 {lab=EN3}
N 370 -350 410 -350 {lab=EN4}
N 370 -330 410 -330 {lab=EN5}
N 370 -310 410 -310 {lab=EN6}
N 370 -290 410 -290 {lab=EN7}
N 920 -530 980 -530 {lab=Vp}
N 1440 -530 1500 -530 {lab=VOUT}
N 1290 -530 1440 -530 {lab=VOUT}
C {libs/core_test/test_tg/test_tg.sym} 690 -820 0 0 {name=x1}
C {lab_pin.sym} 660 -860 0 0 {name=p30 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 710 -800 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 810 -800 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {libs/core_test/test_tg/test_tg.sym} 690 -660 0 0 {name=x2}
C {lab_pin.sym} 660 -700 0 0 {name=p33 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 710 -640 0 0 {name=p34 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 810 -640 0 1 {name=p35 sig_type=std_logic lab=VSS}
C {libs/core_test/test_tg/test_tg.sym} 690 -490 0 0 {name=x3}
C {lab_pin.sym} 660 -530 0 0 {name=p36 sig_type=std_logic lab=IN2}
C {lab_pin.sym} 710 -470 0 0 {name=p37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 810 -470 0 1 {name=p38 sig_type=std_logic lab=VSS}
C {libs/core_test/test_tg/test_tg.sym} 690 -330 0 0 {name=x4}
C {lab_pin.sym} 660 -370 0 0 {name=p39 sig_type=std_logic lab=IN3}
C {lab_pin.sym} 710 -310 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 810 -310 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {libs/core_test/test_tg/test_tg.sym} 690 -170 0 0 {name=x5}
C {lab_pin.sym} 660 -210 0 0 {name=p42 sig_type=std_logic lab=IN4}
C {lab_pin.sym} 710 -150 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 810 -150 0 1 {name=p44 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 770 -270 0 1 {name=p57 sig_type=std_logic lab=EN4}
C {lab_pin.sym} 770 -430 0 1 {name=p58 sig_type=std_logic lab=EN3}
C {lab_pin.sym} 770 -590 0 1 {name=p59 sig_type=std_logic lab=EN2}
C {lab_pin.sym} 770 -760 0 1 {name=p60 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 770 -920 0 1 {name=p61 sig_type=std_logic lab=EN0}
C {iopin.sym} 370 -750 2 0 {name=p1 lab=VDD}
C {iopin.sym} 370 -710 2 0 {name=p2 lab=Vp}
C {iopin.sym} 370 -690 0 1 {name=p4 lab=VOUT}
C {iopin.sym} 370 -630 2 0 {name=p8 lab=IN0}
C {iopin.sym} 370 -610 2 0 {name=p9 lab=IN1
}
C {iopin.sym} 370 -590 2 0 {name=p10 lab=IN2}
C {iopin.sym} 370 -570 2 0 {name=p11 lab=IN3}
C {iopin.sym} 370 -550 2 0 {name=p12 lab=IN4}
C {iopin.sym} 370 -530 2 0 {name=p13 lab=IN5}
C {iopin.sym} 370 -510 2 0 {name=p14 lab=IN6}
C {iopin.sym} 370 -490 2 0 {name=p15 lab=IN7}
C {lab_pin.sym} 410 -630 0 1 {name=p16 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 410 -610 0 1 {name=p17 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 410 -590 0 1 {name=p18 sig_type=std_logic lab=IN2}
C {lab_pin.sym} 410 -570 0 1 {name=p19 sig_type=std_logic lab=IN3}
C {lab_pin.sym} 410 -550 0 1 {name=p20 sig_type=std_logic lab=IN4}
C {lab_pin.sym} 410 -530 0 1 {name=p21 sig_type=std_logic lab=IN5}
C {lab_pin.sym} 410 -510 0 1 {name=p22 sig_type=std_logic lab=IN6}
C {lab_pin.sym} 410 -490 0 1 {name=p23 sig_type=std_logic lab=IN7}
C {lab_pin.sym} 410 -750 0 1 {name=p26 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 410 -690 0 1 {name=p28 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 410 -710 0 1 {name=p29 sig_type=std_logic lab=Vp}
C {libs/core_test/test_tg/test_tg.sym} 1150 -660 0 0 {name=x6}
C {lab_pin.sym} 1120 -700 0 0 {name=p45 sig_type=std_logic lab=IN5}
C {lab_pin.sym} 1170 -640 0 0 {name=p46 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1270 -640 0 1 {name=p47 sig_type=std_logic lab=VSS}
C {libs/core_test/test_tg/test_tg.sym} 1150 -490 0 0 {name=x7}
C {lab_pin.sym} 1120 -530 0 0 {name=p48 sig_type=std_logic lab=IN6}
C {lab_pin.sym} 1170 -470 0 0 {name=p49 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1270 -470 0 1 {name=p50 sig_type=std_logic lab=VSS}
C {libs/core_test/test_tg/test_tg.sym} 1150 -330 0 0 {name=x8}
C {lab_pin.sym} 1120 -370 0 0 {name=p51 sig_type=std_logic lab=IN7}
C {lab_pin.sym} 1170 -310 0 0 {name=p52 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1270 -310 0 1 {name=p53 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1230 -430 0 1 {name=p54 sig_type=std_logic lab=EN7}
C {lab_pin.sym} 1230 -590 0 1 {name=p55 sig_type=std_logic lab=EN6}
C {lab_pin.sym} 1230 -760 0 1 {name=p56 sig_type=std_logic lab=EN5}
C {iopin.sym} 370 -730 2 0 {name=p3 lab=VSS}
C {lab_pin.sym} 410 -730 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {iopin.sym} 370 -430 2 0 {name=p6 lab=EN0}
C {iopin.sym} 370 -410 2 0 {name=p7 lab=EN1
}
C {iopin.sym} 370 -390 2 0 {name=p24 lab=EN2}
C {iopin.sym} 370 -370 2 0 {name=p25 lab=EN3}
C {iopin.sym} 370 -350 2 0 {name=p27 lab=EN4}
C {iopin.sym} 370 -330 2 0 {name=p62 lab=EN5}
C {iopin.sym} 370 -310 2 0 {name=p63 lab=EN6}
C {iopin.sym} 370 -290 2 0 {name=p64 lab=EN7}
C {lab_pin.sym} 410 -430 0 1 {name=p65 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 410 -410 0 1 {name=p66 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 410 -390 0 1 {name=p67 sig_type=std_logic lab=EN2}
C {lab_pin.sym} 410 -370 0 1 {name=p68 sig_type=std_logic lab=EN3}
C {lab_pin.sym} 410 -350 0 1 {name=p69 sig_type=std_logic lab=EN4}
C {lab_pin.sym} 410 -330 0 1 {name=p70 sig_type=std_logic lab=EN5}
C {lab_pin.sym} 410 -310 0 1 {name=p71 sig_type=std_logic lab=EN6}
C {lab_pin.sym} 410 -290 0 1 {name=p72 sig_type=std_logic lab=EN7}
C {lab_pin.sym} 980 -530 0 1 {name=p73 sig_type=std_logic lab=Vp}
C {lab_pin.sym} 1500 -530 0 1 {name=p74 sig_type=std_logic lab=VOUT}
