v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1010 -800 1010 -770 {lab=GND}
N 640 -1010 640 -970 {lab=VDD}
N 1010 -1000 1010 -960 {lab=VDD}
N 640 -910 640 -870 {lab=GND}
N 740 -1010 740 -970 {lab=VDD}
N 740 -910 740 -860 {lab=#net1}
N 740 -860 920 -860 {lab=#net1}
N 850 -920 850 -820 {lab=vref}
N 850 -920 920 -920 {lab=vref}
N 1360 -720 1360 -700 {lab=GND}
N 1360 -800 1360 -780 {lab=#net2}
N 1360 -880 1360 -860 {lab=out}
N 1260 -880 1360 -880 {lab=out}
N 1260 -760 1260 -700 {lab=GND}
N 850 -760 850 -710 {lab=GND}
N 1200 -880 1260 -880 {lab=out}
N 1090 -880 1140 -880 {lab=#net3}
N 1260 -850 1260 -820 {lab=out}
N 1260 -880 1260 -850 {lab=out}
N 920 -900 920 -880 {lab=#net4}
N 1030 -800 1030 -790 {lab=#net5}
N 910 -840 920 -840 {lab=#net6}
C {gnd.sym} 1010 -770 0 0 {name=l2 lab=GND}
C {vsource.sym} 640 -940 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 640 -870 0 0 {name=l3 lab=GND}
C {vsource.sym} 850 -790 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 740 -940 0 0 {name=I0 value=10u}
C {gnd.sym} 850 -710 0 0 {name=l4 lab=GND}
C {gnd.sym} 1260 -700 0 0 {name=l5 lab=GND}
C {capa.sym} 1360 -750 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1360 -830 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1360 -700 0 0 {name=l6 lab=GND}
C {vdd.sym} 640 -1010 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1010 -1000 0 0 {name=l8 lab=VDD}
C {vdd.sym} 740 -1010 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 900 -920 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1310 -880 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo/ldo.sym} 1070 -880 0 0 {name=x1}
C {simulator_commands.sym} 250 -790 0 0 {name=MODELS
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
C {title-3.sym} 0 0 0 0 {name=l10 author="Julio Vilca" rev=1.0 lock=true page=2 pages=8}
C {vsource.sym} 1170 -880 3 1 {name=V3 value= 0 savecurrent=false}
C {simulator_commands.sym} 250 -1030 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

** Simulations
op

** Measurements
show all
let Iload = i(V3)
let Itot = -1*i(V1)
let Iq = Itot-Iload
let Ptot = v(vdd)*Itot
let Pload = Iload*v(out)
let Pldo = Ptot-Pload
let eff = (Pload/Ptot)*100  
print Itot
print Iload
print Iq
print Ptot
print Pload
print Pldo
print eff

write tb_ldo_op.raw
.endc
* ngspice commands
"}
C {noconn.sym} 1030 -790 3 0 {name=l11}
C {isource.sym} 1260 -790 0 0 {name=IL value=0}
C {noconn.sym} 910 -840 0 0 {name=l1}
