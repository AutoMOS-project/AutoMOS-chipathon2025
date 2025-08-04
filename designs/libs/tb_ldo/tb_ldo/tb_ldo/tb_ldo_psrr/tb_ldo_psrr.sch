v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1280 -350 1280 -330 {lab=#net1}
N 1360 -350 1360 -320 {lab=GND}
N 780 -470 780 -430 {lab=VDD}
N 1360 -550 1360 -510 {lab=VDD}
N 780 -370 780 -330 {lab=GND}
N 850 -470 850 -430 {lab=VDD}
N 850 -370 850 -320 {lab=ibias}
N 1780 -270 1780 -250 {lab=GND}
N 1780 -350 1780 -330 {lab=#net2}
N 1780 -430 1780 -410 {lab=out}
N 1680 -430 1780 -430 {lab=out}
N 1680 -310 1680 -250 {lab=GND}
N 1280 -330 1280 -290 {lab=#net1}
N 1510 -430 1630 -430 {lab=out}
N 1630 -430 1680 -430 {lab=out}
N 1160 -400 1210 -400 {lab=ibias}
N 920 -370 920 -330 {lab=GND}
N 920 -490 920 -430 {lab=vref}
N 1160 -460 1210 -460 {lab=vref}
N 1680 -400 1680 -370 {lab=out}
N 1680 -430 1680 -400 {lab=out}
C {noconn.sym} 1280 -290 3 0 {name=l1}
C {gnd.sym} 1360 -320 0 0 {name=l2 lab=GND}
C {res.sym} 1680 -340 0 0 {name=RL
value=360
footprint=1206
device=resistor
m=1}
C {vsource.sym} 780 -400 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 780 -330 0 0 {name=l3 lab=GND}
C {vsource.sym} 920 -400 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 850 -400 0 0 {name=I0 value=10u}
C {gnd.sym} 920 -330 0 0 {name=l4 lab=GND}
C {gnd.sym} 1680 -250 0 0 {name=l5 lab=GND}
C {capa.sym} 1780 -300 0 0 {name=CL
m=1
value=1.0u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1780 -380 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1780 -250 0 0 {name=l6 lab=GND}
C {vdd.sym} 780 -470 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1360 -550 0 0 {name=l8 lab=VDD}
C {vdd.sym} 850 -470 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 920 -490 3 0 {name=p1 sig_type=std_logic lab=vref}
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
C {devices/code_shown.sym} 40 -840 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

** Set sources
alter @V1[AC] = 1

** Simulations
ac dec 100 1 1G

** Plots
setplot ac1
let psrr_db = db(v(out))
plot psrr_db 


** Measurements
meas ac PSRR_gain FIND psrr_db AT=1Hz
let psrr_3db = PSRR_gain-3
meas ac f_3db WHEN psrr_db=$&psrr_3db
meas ac f_0db WHEN psrr_db=0


write tb_ldo_psrr.raw
.endc
"}
C {lab_wire.sym} 1730 -430 0 0 {name=p2 sig_type=std_logic lab=out
}
C {lab_wire.sym} 850 -320 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 1170 -400 0 1 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 1170 -460 0 1 {name=p5 sig_type=std_logic lab=vref}
C {libs/core_ldo/ldo/ldo/ldo.sym} 1360 -430 0 0 {name=x1}
