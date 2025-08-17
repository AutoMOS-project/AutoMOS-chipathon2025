v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -1000 2420 -600 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="LDO Open-loop Phase
re(phase_deg)"
color="4 7"
dataset=0
unitx=1
logx=1
logy=0
rainbow=0
rawfile=$netlist_dir/tb_ldo_stb.raw
autoload=1
y1=-600
y2=0
sim_type=ac
x2=10
x1=0}
N 1000 -760 1000 -730 {lab=GND}
N 490 -860 490 -820 {lab=VDD}
N 1000 -960 1000 -920 {lab=VDD}
N 490 -760 490 -720 {lab=GND}
N 560 -860 560 -820 {lab=VDD}
N 560 -760 560 -710 {lab=ibias}
N 1280 -680 1280 -660 {lab=GND}
N 1280 -760 1280 -740 {lab=#net1}
N 1280 -840 1280 -820 {lab=#net2}
N 1180 -840 1280 -840 {lab=#net2}
N 1180 -720 1180 -660 {lab=GND}
N 860 -820 910 -820 {lab=ibias}
N 630 -760 630 -720 {lab=GND}
N 630 -880 630 -820 {lab=vref}
N 860 -880 910 -880 {lab=vref}
N 700 -760 700 -720 {lab=GND}
N 700 -880 700 -820 {lab=in}
N 860 -860 910 -860 {lab=in}
N 840 -840 910 -840 {lab=out}
N 1180 -810 1180 -780 {lab=#net2}
N 1180 -840 1180 -810 {lab=#net2}
N 1020 -760 1020 -750 {lab=#net3}
N 1080 -840 1180 -840 {lab=#net2}
N 760 -860 760 -820 {lab=EN}
N 760 -760 760 -720 {lab=GND}
N 760 -880 760 -860 {lab=EN}
N 870 -800 910 -800 {lab=EN}
C {simulator_commands.sym} 250 -970 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white   

** Set sources
alter @V3[AC] = 1

** Simulations
ac dec 100 1 10G

** Plots
setplot ac1
let phase_deg = cph(-1*v(out))*180/pi
let phase_deg_ota = cph(v(x1.vota))*180/pi
plot phase_deg
plot phase_deg_ota

** Measurements
let gain_db = db(v(out))
meas ac f_0db WHEN gain_db = 0
meas ac phase_0db FIND phase_deg WHEN gain_db = 0
let phase_margin = 180 + phase_0db
print phase_margin

write tb_ldo_stb.raw
.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -730 0 0 {name=MODELS
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
C {launcher.sym} 300 -200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_stb.raw"
}
C {title-3.sym} 0 0 0 0 {name=l12 author="Julio Vilca" rev=1.0 lock=true page=5 pages=8}
C {gnd.sym} 1000 -730 0 0 {name=l2 lab=GND}
C {res.sym} 1180 -750 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 490 -790 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 490 -720 0 0 {name=l3 lab=GND}
C {vsource.sym} 630 -790 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 560 -790 0 0 {name=I0 value=10u}
C {gnd.sym} 630 -720 0 0 {name=l4 lab=GND}
C {gnd.sym} 1180 -660 0 0 {name=l5 lab=GND}
C {capa.sym} 1280 -710 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1280 -790 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1280 -660 0 0 {name=l6 lab=GND}
C {vdd.sym} 490 -860 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1000 -960 0 0 {name=l8 lab=VDD}
C {vdd.sym} 560 -860 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 630 -880 3 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 560 -720 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 870 -820 0 1 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 870 -880 0 1 {name=p5 sig_type=std_logic lab=vref}
C {vsource.sym} 700 -790 0 0 {name=V3 value=0.9 savecurrent=false}
C {gnd.sym} 700 -720 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 700 -880 3 0 {name=p6 sig_type=std_logic lab=in}
C {lab_wire.sym} 870 -860 0 1 {name=p7 sig_type=std_logic lab=in}
C {noconn.sym} 840 -840 0 0 {name=l11}
C {lab_wire.sym} 870 -840 0 1 {name=p8 sig_type=std_logic lab=out
}
C {noconn.sym} 1020 -750 3 0 {name=l13}
C {libs/core_ldo/ldo/ldo.sym} 1060 -840 0 0 {name=x1}
C {vsource.sym} 760 -790 0 0 {name=V4 value=2 savecurrent=false}
C {gnd.sym} 760 -720 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 760 -870 3 0 {name=p9 sig_type=std_logic lab=EN}
C {lab_wire.sym} 890 -800 0 0 {name=p2 sig_type=std_logic lab=EN}
