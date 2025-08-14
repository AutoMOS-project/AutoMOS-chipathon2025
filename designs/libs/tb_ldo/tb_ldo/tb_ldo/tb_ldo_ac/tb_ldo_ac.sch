v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -1680 2420 -1280 {flags=graph
y1=-140
y2=60
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="LDO Open-loop Gain
re(gain_db)"
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_ldo_ac.raw
sim_type=ac
autoload=1
legend=1
mode=Line
x2=10
x1=0}
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
rawfile=$netlist_dir/tb_ldo_ac.raw
autoload=1
y1=-600
y2=0
sim_type=ac
x2=10
x1=0}
B 2 1620 -720 2420 -320 {flags=graph
y1=-60
y2=60
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_ldo_ac.raw
color="4 7"
node="OTA Open-loop Gain
re(gain_db_ota)"
autoload=1
sim_type=ac
x1=0
x2=10}
N 850 -620 850 -590 {lab=GND}
N 710 -1130 710 -1090 {lab=VDD}
N 850 -820 850 -780 {lab=VDD}
N 710 -1030 710 -990 {lab=GND}
N 780 -1130 780 -1090 {lab=VDD}
N 780 -1030 780 -980 {lab=ibias}
N 1270 -570 1270 -550 {lab=GND}
N 1270 -650 1270 -630 {lab=#net1}
N 1270 -730 1270 -710 {lab=#net2}
N 1170 -730 1270 -730 {lab=#net2}
N 1170 -610 1170 -550 {lab=GND}
N 770 -620 770 -580 {lab=#net3}
N 1000 -730 1120 -730 {lab=#net2}
N 1120 -730 1170 -730 {lab=#net2}
N 650 -670 700 -670 {lab=ibias}
N 850 -1030 850 -990 {lab=GND}
N 850 -1150 850 -1090 {lab=vref}
N 650 -730 700 -730 {lab=vref}
N 920 -1030 920 -990 {lab=GND}
N 920 -1150 920 -1090 {lab=in}
N 650 -700 700 -700 {lab=in}
N 1000 -670 1070 -670 {lab=out}
N 1170 -700 1170 -670 {lab=#net2}
N 1170 -730 1170 -700 {lab=#net2}
C {noconn.sym} 770 -580 3 0 {name=l1}
C {gnd.sym} 850 -590 0 0 {name=l2 lab=GND}
C {res.sym} 1170 -640 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 710 -1060 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 710 -990 0 0 {name=l3 lab=GND}
C {vsource.sym} 850 -1060 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 780 -1060 0 0 {name=I0 value=10u}
C {gnd.sym} 850 -990 0 0 {name=l4 lab=GND}
C {gnd.sym} 1170 -550 0 0 {name=l5 lab=GND}
C {capa.sym} 1270 -600 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1270 -680 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1270 -550 0 0 {name=l6 lab=GND}
C {vdd.sym} 710 -1130 0 0 {name=l7 lab=VDD}
C {vdd.sym} 850 -820 0 0 {name=l8 lab=VDD}
C {vdd.sym} 780 -1130 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 850 -1150 3 0 {name=p1 sig_type=std_logic lab=vref}
C {libs/core_ldo/ldo/ldo_ldo_OL/ldo_OL.sym} 850 -700 0 0 {name=x1}
C {lab_wire.sym} 780 -980 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 660 -670 0 1 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 660 -730 0 1 {name=p5 sig_type=std_logic lab=vref}
C {vsource.sym} 920 -1060 0 0 {name=V3 value=0.9 savecurrent=false}
C {gnd.sym} 920 -990 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 920 -1150 3 0 {name=p6 sig_type=std_logic lab=in}
C {lab_wire.sym} 660 -700 0 1 {name=p7 sig_type=std_logic lab=in}
C {noconn.sym} 1070 -670 0 1 {name=l11}
C {lab_wire.sym} 1050 -670 0 0 {name=p8 sig_type=std_logic lab=out
}
C {simulator_commands.sym} 250 -1050 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

** Set sources
alter @V3[AC] = 1

** Simulations
ac dec 100 1 10G

** Plots
setplot ac1
let gain_db = db(v(out))
let phase_deg = cph(-1*v(out))*180/pi
let gain_db_ota = db(v(x1.vota))
let phase_deg_ota = cph(v(x1.vota))*180/pi
plot gain_db 
plot phase_deg
plot gain_db_ota
plot phase_deg_ota

** Measurements
meas ac DC_gain FIND gain_db AT=1Hz
let gain_3db = DC_gain-3
meas ac f_3db WHEN gain_db = $&gain_3db
meas ac f_0db WHEN gain_db = 0
meas ac phase_0db FIND phase_deg WHEN gain_db = 0
let phase_margin = 180 + phase_0db
print phase_margin

write tb_ldo_ac.raw
.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -810 0 0 {name=MODELS
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
C {title-3.sym} 0 0 0 0 {name=l12 author="Julio Vilca" rev=1.0 lock=true page=3 pages=6}
C {launcher.sym} 300 -200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_ac.raw"
}
