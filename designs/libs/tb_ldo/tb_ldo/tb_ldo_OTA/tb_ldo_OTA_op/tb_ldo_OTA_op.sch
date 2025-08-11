v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1430 -670 1430 -640 {lab=GND}
N 940 -820 940 -780 {lab=VDD}
N 1430 -950 1430 -910 {lab=VDD}
N 940 -720 940 -680 {lab=GND}
N 1320 -610 1320 -570 {lab=VDD}
N 1070 -830 1070 -730 {lab=vref}
N 1070 -830 1140 -830 {lab=vref}
N 1700 -630 1700 -610 {lab=GND}
N 1700 -790 1700 -770 {lab=out}
N 1600 -790 1700 -790 {lab=out}
N 1070 -670 1070 -620 {lab=GND}
N 1700 -770 1700 -730 {lab=out}
N 1700 -670 1700 -630 {lab=GND}
N 1320 -480 1390 -480 {lab=#net1}
N 1160 -670 1160 -620 {lab=GND}
N 1160 -750 1160 -730 {lab=in}
N 1320 -510 1320 -480 {lab=#net1}
N 1390 -670 1390 -480 {lab=#net1}
N 1550 -790 1600 -790 {lab=out}
N 1140 -830 1310 -830 {lab=vref}
N 1160 -750 1310 -750 {lab=in}
C {gnd.sym} 1430 -640 0 0 {name=l2 lab=GND}
C {vsource.sym} 940 -750 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 940 -680 0 0 {name=l3 lab=GND}
C {vsource.sym} 1070 -700 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 1320 -540 0 0 {name=I0 value=10u}
C {gnd.sym} 1070 -620 0 0 {name=l4 lab=GND}
C {capa.sym} 1700 -700 0 0 {name=CL
m=1
value=0.52p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1700 -610 0 0 {name=l6 lab=GND}
C {vdd.sym} 940 -820 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1430 -950 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1320 -610 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 1120 -830 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1650 -790 0 0 {name=p2 sig_type=std_logic lab=out}
C {vsource.sym} 1160 -700 0 0 {name=V3 value=1.5 savecurrent=false}
C {gnd.sym} 1160 -620 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 1260 -750 0 0 {name=p3 sig_type=std_logic lab=in}
C {libs/core_ldo/ldo/ldo_OTA/OTA.sym} 1410 -790 0 0 {name=x1}
C {simulator_commands.sym} 250 -650 0 0 {name=MODELS
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
C {simulator_commands.sym} 250 -890 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

** Simulations
op

** Measurements
show all
let Iq= -1*i(V1)
let Pota = v(vdd)*Iq
print Iq
print Pota

write tb_ldo_OTA_op.raw

.endc
* ngspice commands
"}
C {title-3.sym} 0 0 0 0 {name=l5 author="Julio Vilca" rev=1.0 lock=true page=1 pages=6}
