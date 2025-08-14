v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1270 -790 1270 -770 {lab=#net1}
N 1350 -790 1350 -760 {lab=GND}
N 910 -990 910 -950 {lab=VDD}
N 1350 -990 1350 -950 {lab=VDD}
N 910 -890 910 -850 {lab=GND}
N 1020 -990 1020 -950 {lab=VDD}
N 1020 -890 1020 -840 {lab=#net2}
N 1020 -840 1200 -840 {lab=#net2}
N 1130 -900 1130 -800 {lab=vref}
N 1130 -900 1200 -900 {lab=vref}
N 1770 -710 1770 -690 {lab=GND}
N 1770 -790 1770 -770 {lab=#net3}
N 1770 -870 1770 -850 {lab=out}
N 1670 -870 1770 -870 {lab=out}
N 1670 -750 1670 -690 {lab=GND}
N 1130 -740 1130 -690 {lab=GND}
N 1270 -770 1270 -730 {lab=#net1}
N 1610 -870 1670 -870 {lab=out}
N 1500 -870 1550 -870 {lab=#net4}
N 1670 -840 1670 -810 {lab=out}
N 1670 -870 1670 -840 {lab=out}
C {noconn.sym} 1270 -730 3 0 {name=l1}
C {gnd.sym} 1350 -760 0 0 {name=l2 lab=GND}
C {res.sym} 1670 -780 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 910 -920 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 910 -850 0 0 {name=l3 lab=GND}
C {vsource.sym} 1130 -770 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 1020 -920 0 0 {name=I0 value=10u}
C {gnd.sym} 1130 -690 0 0 {name=l4 lab=GND}
C {gnd.sym} 1670 -690 0 0 {name=l5 lab=GND}
C {capa.sym} 1770 -740 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1770 -820 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1770 -690 0 0 {name=l6 lab=GND}
C {vdd.sym} 910 -990 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1350 -990 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1020 -990 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 1180 -900 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1720 -870 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo/ldo.sym} 1350 -870 0 0 {name=x1}
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
C {title-3.sym} 0 0 0 0 {name=l10 author="Julio Vilca" rev=1.0 lock=true page=1 pages=6}
C {vsource.sym} 1580 -870 3 1 {name=V3 value= 0 savecurrent=false}
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
