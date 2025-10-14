v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1120 -1090 1120 -1060 {lab=IBIAS2}
N 1210 -650 1240 -650 {lab=IBIAS2}
N 1020 -1010 1020 -1000 {lab=GND}
N 1200 -1010 1200 -1000 {lab=GND}
N 1210 -630 1240 -630 {lab=EN}
N 920 -700 920 -690 {lab=#net1}
N 1340 -590 1340 -580 {lab=#net2}
N 810 -800 810 -780 {lab=#net3}
N 780 -760 810 -760 {lab=IBIAS1}
N 1240 -780 1320 -780 {lab=#net4}
N 1320 -780 1320 -770 {lab=#net4}
N 1320 -770 1320 -750 {lab=#net4}
N 1210 -690 1240 -690 {lab=VCON}
N 820 -1010 820 -1000 {lab=GND}
N 780 -820 810 -820 {lab=VREF}
N 1070 -620 1070 -600 {lab=GND}
N 1070 -700 1070 -680 {lab=#net5}
N 1070 -780 1070 -760 {lab=VLDO}
N 1420 -690 1510 -690 {lab=VVCO}
N 900 -1010 900 -990 {lab=IBIAS1}
N 630 -1000 630 -990 {lab=GND}
N 630 -1070 630 -1060 {lab=#net6}
N 630 -1070 650 -1070 {lab=#net6}
N 710 -1070 730 -1070 {lab=VDD}
N 730 -1070 730 -1060 {lab=VDD}
N 730 -1000 730 -990 {lab=GND}
N 630 -990 730 -990 {lab=GND}
N 980 -780 1180 -780 {lab=VLDO}
N 1020 -1090 1020 -1070 {lab=VCON}
N 820 -1090 820 -1070 {lab=VREF}
N 1200 -1090 1200 -1070 {lab=EN}
N 1510 -610 1510 -590 {lab=GND}
N 1510 -690 1510 -670 {lab=VVCO}
N 1320 -1010 1320 -1000 {lab=GND}
N 1320 -1090 1320 -1070 {lab=LDO_EN}
N 780 -740 810 -740 {lab=LDO_EN}
N 1550 -1010 1550 -1000 {lab=GND}
N 1550 -1090 1550 -1070 {lab=#net7}
N 1540 -1090 1550 -1090 {lab=#net7}
C {vsource.sym} 1020 -1040 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 1020 -1000 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1020 -1090 0 0 {name=p9 sig_type=std_logic lab=VCON}
C {isource.sym} 1120 -1030 0 0 {name=I2 value=10u}
C {gnd.sym} 1120 -1000 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 1120 -1090 0 0 {name=p10 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 1210 -650 2 1 {name=p3 sig_type=std_logic lab=IBIAS2}
C {gnd.sym} 1320 -590 0 1 {name=l9 lab=GND}
C {vsource.sym} 1200 -1040 0 0 {name=V4 value=1.8 savecurrent=false}
C {gnd.sym} 1200 -1000 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1200 -1090 0 0 {name=p4 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1210 -630 0 0 {name=p5 sig_type=std_logic lab=EN}
C {libs/core_vco/vco/vco.sym} 1260 -730 0 0 {name=x1}
C {libs/core_ldo/ldo/ldo.sym} 960 -780 0 0 {name=x4}
C {lab_wire.sym} 1120 -780 0 0 {name=p2 sig_type=std_logic lab=VLDO}
C {gnd.sym} 900 -700 0 1 {name=l11 lab=GND}
C {noconn.sym} 920 -690 3 0 {name=l13}
C {noconn.sym} 1340 -580 3 0 {name=l10}
C {lab_wire.sym} 1480 -690 0 0 {name=p7 sig_type=std_logic lab=VVCO}
C {lab_pin.sym} 780 -760 2 1 {name=p1 sig_type=std_logic lab=IBIAS1}
C {lab_pin.sym} 1210 -690 2 1 {name=p8 sig_type=std_logic lab=VCON}
C {vsource.sym} 820 -1040 0 0 {name=V2 value=0.9 savecurrent=false}
C {gnd.sym} 820 -1000 0 0 {name=l2 lab=GND
value=0.9}
C {lab_pin.sym} 820 -1090 0 0 {name=p11 sig_type=std_logic lab=VREF
value=0.9}
C {lab_pin.sym} 780 -820 2 1 {name=p12 sig_type=std_logic lab=VREF}
C {vdd.sym} 900 -860 0 0 {name=l8 lab=VDD}
C {capa.sym} 1070 -650 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1070 -730 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1070 -600 0 0 {name=l14 lab=GND}
C {simulator_commands.sym} 300 -860 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white      

** SIMULATIONS
tran 10p 1u 0 

** PLOTS
setplot tran1
let vin_ldo = v(VDD)
let vout_ldo = v(VLDO)
let en_vco = v(EN)
let vout_vco = v(VVCO)
plot vout_ldo vin_ldo en_vco
plot vout_vco

** MEASUREMENTS
meas TRAN tdiff TRIG v(VVCO) VAL=0.9 RISE=500 TARG v(VVCO) VAL=0.9 RISE=501
let freq = 1 / tdiff
print freq
let iload = v5#branch
meas tran ivco INTEG iload from=600n to=800n
print ivco
meas tran vdd_vco INTEG vldo from=600n to=800n
print vdd_vco
let pcom_avg = ivco*vdd_vco
print pcom_avg

write tb_top_ldo_vco_tran.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 300 -610 0 0 {name=MODELS
simulator=ngspice
only_toplevel=false
format="tcleval( @value )" 
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
* ngspice commands
"}
C {isource.sym} 900 -1040 0 0 {name=I1 value=10u}
C {vdd.sym} 900 -1070 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} 900 -990 0 1 {name=p6 sig_type=std_logic lab=IBIAS1}
C {vdd.sym} 730 -1070 0 0 {name=l5 lab=VDD}
C {res.sym} 680 -1070 3 1 {name=Ri
value=1
footprint=1206
device=resistor
m=1}
C {capa.sym} 730 -1030 0 0 {name=Ci
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 630 -1030 0 1 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 630 -990 0 0 {name=l15 lab=GND}
C {vsource.sym} 1210 -780 3 1 {name=V5 value=0 savecurrent=false}
C {capa.sym} 1510 -640 0 0 {name=Cout
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1510 -590 0 0 {name=l1 lab=GND}
C {vsource.sym} 1320 -1040 0 0 {name=V6 value=2 savecurrent=false}
C {gnd.sym} 1320 -1000 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1320 -1090 0 0 {name=p13 sig_type=std_logic lab=LDO_EN}
C {lab_pin.sym} 780 -740 0 0 {name=p14 sig_type=std_logic lab=LDO_EN}
C {vsource.sym} 1550 -1040 0 0 {name=V7 value="PWL(0u 0 490n 0 500n 2 1u 2)" savecurrent=false}
C {gnd.sym} 1550 -1000 0 0 {name=l12 lab=GND}
C {noconn.sym} 1540 -1090 3 0 {name=l17}
