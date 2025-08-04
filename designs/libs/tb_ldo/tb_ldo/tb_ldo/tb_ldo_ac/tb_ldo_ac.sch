v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1440 -270 1440 -250 {lab=#net1}
N 1360 -270 1360 -240 {lab=GND}
N 780 -470 780 -430 {lab=VDD}
N 1360 -550 1360 -510 {lab=VDD}
N 780 -370 780 -330 {lab=GND}
N 850 -470 850 -430 {lab=VDD}
N 850 -370 850 -320 {lab=ibias}
N 1780 -270 1780 -250 {lab=GND}
N 1780 -350 1780 -330 {lab=#net2}
N 1780 -430 1780 -410 {lab=ldo}
N 1680 -430 1780 -430 {lab=ldo}
N 1680 -310 1680 -250 {lab=GND}
N 1440 -250 1440 -210 {lab=#net1}
N 1510 -430 1630 -430 {lab=ldo}
N 1630 -430 1680 -430 {lab=ldo}
N 1280 -270 1280 -220 {lab=ibias}
N 920 -370 920 -330 {lab=GND}
N 920 -490 920 -430 {lab=vref}
N 1160 -430 1210 -430 {lab=vref}
N 990 -370 990 -330 {lab=GND}
N 990 -490 990 -430 {lab=in}
N 1160 -350 1210 -350 {lab=in}
N 1510 -350 1580 -350 {lab=out}
N 1680 -400 1680 -370 {lab=ldo}
N 1680 -430 1680 -400 {lab=ldo}
C {noconn.sym} 1440 -210 3 0 {name=l1}
C {gnd.sym} 1360 -240 0 0 {name=l2 lab=GND}
C {res.sym} 1680 -340 0 0 {name=RL
value=360
footprint=1206
device=resistor
m=1}
C {vsource.sym} 780 -400 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 780 -330 0 0 {name=l3 lab=GND}
C {vsource.sym} 920 -400 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 850 -400 0 0 {name=I0 value=20u}
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
alter @v3[AC] = 1

** Simulations
ac dec 100 1 1G

** Plots
setplot ac1
let gain_db = db(v(out))
let phase_deg = cph(-1*v(out))*180/pi
let gain_db_ota = db(v(x1.vota))
let phase_deg_ota = cph(v(x1.vota))*180/pi
plot gain_db gain_db_ota
plot phase_deg phase_deg_ota

** Measurements
meas ac DC_gain FIND gain_db AT=1Hz
let gain_3db = DC_gain-3
meas ac f_3db WHEN gain_db=$&gain_3db
meas ac f_0db WHEN gain_db=0
meas ac phase_0db FIND phase_deg WHEN gain_db=0
let phase_margin = 180 + phase_0db
print phase_margin

write tb_ldo_ac.raw
.endc
"}
C {lab_wire.sym} 1730 -430 0 0 {name=p2 sig_type=std_logic lab=ldo
}
C {libs/core_ldo/ldo/ldo_ldo_OL/ldo_OL.sym} 1360 -390 0 0 {name=x1}
C {lab_wire.sym} 850 -320 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 1280 -230 1 0 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 1170 -430 0 1 {name=p5 sig_type=std_logic lab=vref}
C {vsource.sym} 990 -400 0 0 {name=V3 value=1.5 savecurrent=false}
C {gnd.sym} 990 -330 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 990 -490 3 0 {name=p6 sig_type=std_logic lab=in}
C {lab_wire.sym} 1170 -350 0 1 {name=p7 sig_type=std_logic lab=in}
C {noconn.sym} 1580 -350 0 1 {name=l11}
C {lab_wire.sym} 1560 -350 0 0 {name=p8 sig_type=std_logic lab=out
}
