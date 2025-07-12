v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {In CHIP package this pin appears as VIN,
however to indicate that this is power supply 
internally I considered as VDD} 200 -310 0 0 0.4 0.4 {}
T {In CHIP package this vector is flattened
as A2, A1, A0, respectively } -460 90 0 0 0.4 0.4 {}
N 280 -40 360 -40 {lab=VBG}
N 280 -0 360 -0 {lab=IPTAT}
N 280 20 360 20 {lab=IZTC}
C {ipin.sym} 0 70 0 0 {name=p1 lab=TEST_SEL[2:0]}
C {ipin.sym} 0 -40 0 0 {name=p2 lab=VCO_IN}
C {iopin.sym} 180 -250 3 0 {name=p4 lab=VDD}
C {iopin.sym} 0 390 1 0 {name=p5 lab=VSS}
C {iopin.sym} 30 390 1 0 {name=p6 lab=SUB}
C {iopin.sym} 1030 10 0 0 {name=p3 lab=VOUT}
C {iopin.sym} 1030 40 0 0 {name=p7 lab=VCO_OUT}
C {iopin.sym} 1030 70 0 0 {name=p8 lab=TEST_OUT}
C {ipin.sym} 0 30 0 0 {name=p9 lab=TEST_EN}
C {ipin.sym} 0 0 0 0 {name=p10 lab=VCO_EN}
C {libs/core_bandgap/bandgap/bandgap.sym} 120 -80 0 0 {name=I_bandgap}
C {libs/core_biasgen/biasgen/biasgen.sym} 380 -80 0 0 {name=I_biasgen}
C {libs/core_ldo/ldo/ldo.sym} 760 -80 0 0 {name=I_ldo}
C {libs/core_vco/vco/vco.sym} 760 140 0 0 {name=I_vco}
C {libs/core_test/test/test.sym} 380 140 0 0 {name=I_test}
C {lab_wire.sym} 180 -100 0 1 {name=p11 lab=VDD}
C {lab_wire.sym} 280 -40 0 1 {name=p12 lab=VBG}
C {lab_wire.sym} 280 0 0 1 {name=p13 lab=IPTAT}
C {lab_wire.sym} 280 20 0 1 {name=p14 lab=IZTC}
C {lab_wire.sym} 200 60 1 1 {name=p15 lab=SUB}
C {lab_wire.sym} 180 60 1 1 {name=p16 lab=VSS}
C {lab_wire.sym} 460 -100 0 1 {name=p17 lab=VDD}
C {lab_wire.sym} 600 -60 0 1 {name=p18 lab=IPTAT[2:0]}
C {lab_wire.sym} 600 -40 0 1 {name=p19 lab=IZTC[2:0]}
C {lab_wire.sym} 600 0 0 1 {name=p20 lab=VREF_1V}
C {lab_wire.sym} 600 20 0 1 {name=p21 lab=VREF_0P5V}
C {lab_wire.sym} 480 60 1 1 {name=p22 lab=SUB}
C {lab_wire.sym} 460 60 1 1 {name=p23 lab=VSS
}
C {lab_wire.sym} 840 -100 0 1 {name=p24 lab=VDD}
C {lab_wire.sym} 740 -40 0 0 {name=p25 lab=VREF_1V}
C {lab_wire.sym} 940 -40 0 1 {name=p26 lab=VOUT}
C {lab_wire.sym} 740 0 0 0 {name=p27 lab=IZTC[0]}
C {lab_wire.sym} 860 60 1 1 {name=p28 lab=SUB}
C {lab_wire.sym} 840 60 1 1 {name=p29 lab=VSS}
C {lab_wire.sym} 360 160 0 0 {name=p31 lab=IZTC[1]}
C {lab_wire.sym} 740 220 0 0 {name=p34 lab=IPTAT[0]}
C {lab_wire.sym} 460 120 0 1 {name=p36 lab=VDD}
C {lab_wire.sym} 480 420 1 1 {name=p37 lab=SUB}
C {lab_wire.sym} 460 420 1 1 {name=p38 lab=VSS}
C {lab_wire.sym} 820 120 0 1 {name=p39 lab=VDD}
C {lab_wire.sym} 920 180 0 1 {name=p40 lab=VCO_OUT}
C {lab_wire.sym} 840 280 1 1 {name=p41 lab=SUB}
C {lab_wire.sym} 820 280 1 1 {name=p42 lab=VSS}
C {lab_wire.sym} 740 240 0 0 {name=p30 lab=VCO_EN}
C {lab_wire.sym} 360 180 0 0 {name=p32 lab=VBG}
C {lab_wire.sym} 360 200 0 0 {name=p33 lab=VREF_1V}
C {lab_wire.sym} 360 220 0 0 {name=p35 lab=VREF_0P5V}
C {lab_wire.sym} 360 300 0 0 {name=p46 lab=IZTC[2]}
C {lab_wire.sym} 360 320 0 0 {name=p47 lab=IPTAT[2]}
C {lab_wire.sym} 360 360 0 0 {name=p48 lab=TEST_EN}
C {lab_wire.sym} 360 380 0 0 {name=p49 lab=TEST_SEL[2:0]}
C {lab_wire.sym} 940 0 0 1 {name=p43 lab=VLDO_TEST}
C {lab_wire.sym} 740 20 0 0 {name=p44 lab=TEST_EN}
C {lab_wire.sym} 360 240 0 0 {name=p45 lab=VLDO_TEST}
C {noconn.sym} 360 260 0 0 {name=l1}
C {lab_wire.sym} 560 180 0 1 {name=p50 lab=TEST_OUT}
C {lab_wire.sym} 740 180 0 0 {name=p51 lab=VCO_IN}
C {noconn.sym} 360 280 0 0 {name=l2}
C {noconn.sym} 600 -60 0 1 {name=l3[2:0]}
