v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1050 -500 1050 -480 {lab=#net1}
N 1130 -500 1130 -470 {lab=GND}
N 690 -700 690 -660 {lab=VDD}
N 1130 -700 1130 -660 {lab=VDD}
N 690 -600 690 -560 {lab=GND}
N 800 -700 800 -660 {lab=VDD}
N 800 -600 800 -550 {lab=#net2}
N 800 -550 980 -550 {lab=#net2}
N 910 -610 910 -510 {lab=vref}
N 910 -610 980 -610 {lab=vref}
N 1350 -580 1350 -520 {lab=out}
N 1280 -580 1350 -580 {lab=out}
N 1450 -420 1450 -400 {lab=GND}
N 1450 -500 1450 -480 {lab=#net3}
N 1450 -580 1450 -560 {lab=out}
N 1350 -580 1450 -580 {lab=out}
N 1350 -460 1350 -400 {lab=GND}
N 910 -450 910 -400 {lab=GND}
N 1050 -480 1050 -440 {lab=#net1}
C {noconn.sym} 1050 -440 3 0 {name=l1}
C {gnd.sym} 1130 -470 0 0 {name=l2 lab=GND}
C {res.sym} 1350 -490 0 0 {name=RL
value=360
footprint=1206
device=resistor
m=1}
C {vsource.sym} 690 -630 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 690 -560 0 0 {name=l3 lab=GND}
C {vsource.sym} 910 -480 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 800 -630 0 0 {name=I0 value=4u}
C {gnd.sym} 910 -400 0 0 {name=l4 lab=GND}
C {gnd.sym} 1350 -400 0 0 {name=l5 lab=GND}
C {capa.sym} 1450 -450 0 0 {name=CL
m=1
value=1.0u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1450 -530 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1450 -400 0 0 {name=l6 lab=GND}
C {vdd.sym} 690 -700 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1130 -700 0 0 {name=l8 lab=VDD}
C {vdd.sym} 800 -700 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 960 -610 0 0 {name=p1 sig_type=std_logic lab=vref}
C {devices/code_shown.sym} 40 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 40 -730 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

** Simulations
op
dc V1 0 5 0.001

** Plots
setplot op1
show all

setplot dc1
let vout=v(out)
let vin=v(vdd)
plot vout vin

write tb_ldo_dc.raw
.endc
"}
C {lab_wire.sym} 1400 -580 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo/ldo.sym} 1130 -580 0 0 {name=x1}
