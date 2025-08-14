v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -1200 2420 -800 {flags=graph
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
N 760 -820 760 -790 {lab=GND}
N 620 -1330 620 -1290 {lab=VDD}
N 760 -1020 760 -980 {lab=VDD}
N 620 -1230 620 -1190 {lab=GND}
N 690 -1330 690 -1290 {lab=VDD}
N 690 -1230 690 -1180 {lab=ibias}
N 1180 -770 1180 -750 {lab=GND}
N 1180 -850 1180 -830 {lab=#net1}
N 1180 -930 1180 -910 {lab=#net2}
N 1080 -930 1180 -930 {lab=#net2}
N 1080 -810 1080 -750 {lab=GND}
N 680 -820 680 -780 {lab=#net3}
N 910 -930 1030 -930 {lab=#net2}
N 1030 -930 1080 -930 {lab=#net2}
N 560 -870 610 -870 {lab=ibias}
N 760 -1230 760 -1190 {lab=GND}
N 760 -1350 760 -1290 {lab=vref}
N 560 -930 610 -930 {lab=vref}
N 830 -1230 830 -1190 {lab=GND}
N 830 -1350 830 -1290 {lab=in}
N 560 -900 610 -900 {lab=in}
N 910 -870 980 -870 {lab=out}
N 1080 -900 1080 -870 {lab=#net2}
N 1080 -930 1080 -900 {lab=#net2}
C {noconn.sym} 680 -780 3 0 {name=l1}
C {gnd.sym} 760 -790 0 0 {name=l2 lab=GND}
C {res.sym} 1080 -840 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 620 -1260 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 620 -1190 0 0 {name=l3 lab=GND}
C {vsource.sym} 760 -1260 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 690 -1260 0 0 {name=I0 value=10u}
C {gnd.sym} 760 -1190 0 0 {name=l4 lab=GND}
C {gnd.sym} 1080 -750 0 0 {name=l5 lab=GND}
C {capa.sym} 1180 -800 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1180 -880 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1180 -750 0 0 {name=l6 lab=GND}
C {vdd.sym} 620 -1330 0 0 {name=l7 lab=VDD}
C {vdd.sym} 760 -1020 0 0 {name=l8 lab=VDD}
C {vdd.sym} 690 -1330 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 760 -1350 3 0 {name=p1 sig_type=std_logic lab=vref}
C {libs/core_ldo/ldo/ldo_ldo_OL/ldo_OL.sym} 760 -900 0 0 {name=x1}
C {lab_wire.sym} 690 -1180 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 570 -870 0 1 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 570 -930 0 1 {name=p5 sig_type=std_logic lab=vref}
C {vsource.sym} 830 -1260 0 0 {name=V3 value=0.9 savecurrent=false}
C {gnd.sym} 830 -1190 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 830 -1350 3 0 {name=p6 sig_type=std_logic lab=in}
C {lab_wire.sym} 570 -900 0 1 {name=p7 sig_type=std_logic lab=in}
C {noconn.sym} 980 -870 0 1 {name=l11}
C {lab_wire.sym} 960 -870 0 0 {name=p8 sig_type=std_logic lab=out
}
C {simulator_commands.sym} 250 -1250 0 0 {name=SIMULATIONS
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
C {simulator_commands.sym} 250 -1010 0 0 {name=MODELS
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
