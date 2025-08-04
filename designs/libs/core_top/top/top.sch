v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {In CHIP package this pin appears as VIN,
however to indicate that this is power supply 
internally I considered as VDD} -480 -630 0 0 0.4 0.4 {}
T {In CHIP package this vector is flattened
as A2, A1, A0, respectively } -420 -170 0 0 0.4 0.4 {}
N 420 -490 500 -490 {lab=VBG}
N 420 -450 500 -450 {lab=IPTAT}
N 420 -430 500 -430 {lab=IZTC}
C {ipin.sym} 140 -380 0 0 {name=p1 lab=TEST_SEL[2:0]}
C {ipin.sym} 140 -490 0 0 {name=p2 lab=VCO_IN}
C {iopin.sym} 320 -600 3 0 {name=p4 lab=VDD}
C {iopin.sym} 140 -60 1 0 {name=p5 lab=VSS}
C {iopin.sym} 170 -60 1 0 {name=p6 lab=SUB}
C {iopin.sym} 1170 -440 0 0 {name=p3 lab=VOUT}
C {iopin.sym} 1170 -410 0 0 {name=p7 lab=VCO_OUT}
C {iopin.sym} 1170 -380 0 0 {name=p8 lab=TEST_OUT}
C {ipin.sym} 140 -420 0 0 {name=p9 lab=TEST_EN}
C {ipin.sym} 140 -450 0 0 {name=p10 lab=VCO_EN}
C {libs/core_bandgap/bandgap/bandgap.sym} 260 -530 0 0 {name=I_bandgap}
C {libs/core_biasgen/biasgen/biasgen.sym} 520 -530 0 0 {name=I_biasgen}
C {libs/core_ldo/ldo/ldo.sym} 900 -530 0 0 {name=I_ldo}
C {libs/core_vco/vco/vco.sym} 900 -310 0 0 {name=I_vco}
C {libs/core_test/test/test.sym} 520 -310 0 0 {name=I_test}
C {lab_wire.sym} 320 -550 0 1 {name=p11 lab=VDD}
C {lab_wire.sym} 420 -490 0 1 {name=p12 lab=VBG}
C {lab_wire.sym} 420 -450 0 1 {name=p13 lab=IPTAT}
C {lab_wire.sym} 420 -430 0 1 {name=p14 lab=IZTC}
C {lab_wire.sym} 340 -390 1 1 {name=p15 lab=SUB}
C {lab_wire.sym} 320 -390 1 1 {name=p16 lab=VSS}
C {lab_wire.sym} 600 -550 0 1 {name=p17 lab=VDD}
C {lab_wire.sym} 740 -510 0 1 {name=p18 lab=IPTAT[2:0]}
C {lab_wire.sym} 740 -490 0 1 {name=p19 lab=IZTC[2:0]}
C {lab_wire.sym} 740 -450 0 1 {name=p20 lab=VREF_1V}
C {lab_wire.sym} 740 -430 0 1 {name=p21 lab=VREF_0P5V}
C {lab_wire.sym} 620 -390 1 1 {name=p22 lab=SUB}
C {lab_wire.sym} 600 -390 1 1 {name=p23 lab=VSS
}
C {lab_wire.sym} 980 -550 0 1 {name=p24 lab=VDD}
C {lab_wire.sym} 880 -490 0 0 {name=p25 lab=VREF_1V}
C {lab_wire.sym} 1080 -490 0 1 {name=p26 lab=VOUT}
C {lab_wire.sym} 880 -450 0 0 {name=p27 lab=IZTC[0]}
C {lab_wire.sym} 1000 -390 1 1 {name=p28 lab=SUB}
C {lab_wire.sym} 980 -390 1 1 {name=p29 lab=VSS}
C {lab_wire.sym} 500 -290 0 0 {name=p31 lab=IZTC[1]}
C {lab_wire.sym} 880 -230 0 0 {name=p34 lab=IPTAT[0]}
C {lab_wire.sym} 600 -330 0 1 {name=p36 lab=VDD}
C {lab_wire.sym} 620 -30 1 1 {name=p37 lab=SUB}
C {lab_wire.sym} 600 -30 1 1 {name=p38 lab=VSS}
C {lab_wire.sym} 960 -330 0 1 {name=p39 lab=VDD}
C {lab_wire.sym} 1060 -270 0 1 {name=p40 lab=VCO_OUT}
C {lab_wire.sym} 980 -170 1 1 {name=p41 lab=SUB}
C {lab_wire.sym} 960 -170 1 1 {name=p42 lab=VSS}
C {lab_wire.sym} 880 -210 0 0 {name=p30 lab=VCO_EN}
C {lab_wire.sym} 500 -270 0 0 {name=p32 lab=VBG}
C {lab_wire.sym} 500 -250 0 0 {name=p33 lab=VREF_1V}
C {lab_wire.sym} 500 -230 0 0 {name=p35 lab=VREF_0P5V}
C {lab_wire.sym} 500 -150 0 0 {name=p46 lab=IZTC[2]}
C {lab_wire.sym} 500 -130 0 0 {name=p47 lab=IPTAT[2]}
C {lab_wire.sym} 500 -90 0 0 {name=p48 lab=TEST_EN}
C {lab_wire.sym} 500 -70 0 0 {name=p49 lab=TEST_SEL[2:0]}
C {lab_wire.sym} 1080 -450 0 1 {name=p43 lab=VLDO_TEST}
C {lab_wire.sym} 880 -430 0 0 {name=p44 lab=TEST_EN}
C {lab_wire.sym} 500 -210 0 0 {name=p45 lab=VLDO_TEST}
C {lab_wire.sym} 700 -270 0 1 {name=p50 lab=TEST_OUT}
C {lab_wire.sym} 880 -270 0 0 {name=p51 lab=VCO_IN}
C {noconn.sym} 740 -510 0 1 {name=l3[2:0]}
C {lab_wire.sym} 500 -190 0 0 {name=p52 lab=VSS}
C {lab_wire.sym} 500 -170 0 0 {name=p53 lab=VSS}
