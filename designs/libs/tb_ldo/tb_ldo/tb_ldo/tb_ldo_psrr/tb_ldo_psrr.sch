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
dataset=0
unitx=1
logx=1
logy=0
sim_type=ac
autoload=1
x1=0
x2=10
y1=-180
y2=-40
mode=Line
rawfile=$netlist_dir/tb_ldo_psrr.raw
color="4 7"
node="LDO Power supply rejection ratio (PSRR)
out db20()"}
N 640 -700 640 -680 {lab=#net1}
N 720 -700 720 -670 {lab=GND}
N 540 -1180 540 -1140 {lab=#net2}
N 720 -900 720 -860 {lab=VDD}
N 540 -1080 540 -1040 {lab=GND}
N 750 -1180 750 -1140 {lab=VDD}
N 750 -1080 750 -1030 {lab=ibias}
N 1140 -620 1140 -600 {lab=GND}
N 1140 -700 1140 -680 {lab=#net3}
N 1140 -780 1140 -760 {lab=out}
N 1040 -780 1140 -780 {lab=out}
N 1040 -660 1040 -600 {lab=GND}
N 640 -680 640 -640 {lab=#net1}
N 870 -780 990 -780 {lab=out}
N 990 -780 1040 -780 {lab=out}
N 520 -750 570 -750 {lab=ibias}
N 860 -1080 860 -1040 {lab=GND}
N 860 -1200 860 -1140 {lab=vref}
N 520 -810 570 -810 {lab=vref}
N 1040 -750 1040 -720 {lab=out}
N 1040 -780 1040 -750 {lab=out}
N 540 -1180 560 -1180 {lab=#net2}
N 620 -1180 650 -1180 {lab=VDD}
N 650 -1180 650 -1140 {lab=VDD}
N 650 -1080 650 -1040 {lab=GND}
N 540 -1040 650 -1040 {lab=GND}
N 540 -1040 540 -1020 {lab=GND}
N 650 -1180 670 -1180 {lab=VDD}
N 800 -700 800 -640 {lab=#net4}
C {noconn.sym} 640 -640 3 0 {name=l1}
C {gnd.sym} 720 -670 0 0 {name=l2 lab=GND}
C {res.sym} 1040 -690 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 540 -1110 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 540 -1020 0 0 {name=l3 lab=GND}
C {vsource.sym} 860 -1110 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 750 -1110 0 0 {name=I0 value=10u}
C {gnd.sym} 860 -1040 0 0 {name=l4 lab=GND}
C {gnd.sym} 1040 -600 0 0 {name=l5 lab=GND}
C {capa.sym} 1140 -650 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1140 -730 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1140 -600 0 0 {name=l6 lab=GND}
C {vdd.sym} 670 -1180 0 0 {name=l7 lab=VDD}
C {vdd.sym} 720 -900 0 0 {name=l8 lab=VDD}
C {vdd.sym} 750 -1180 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 860 -1200 3 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1090 -780 0 0 {name=p2 sig_type=std_logic lab=out
}
C {lab_wire.sym} 750 -1030 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 530 -750 0 1 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 530 -810 0 1 {name=p5 sig_type=std_logic lab=vref}
C {libs/core_ldo/ldo/ldo/ldo.sym} 720 -780 0 0 {name=x1}
C {title-3.sym} 0 0 0 0 {name=l10 author="Julio Vilca" rev=1.0 lock=true page=4 pages=6}
C {simulator_commands.sym} 250 -1070 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white   

** Set sources
alter @V1[AC] = 1

** Simulations
ac dec 100 1 10G

** Plots
setplot ac1
let vout = v(out)
let psrr_db = db(vout)
plot psrr_db

** Measurements
meas ac PSRR_gain FIND psrr_db AT=1Hz

write tb_ldo_psrr.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -830 0 0 {name=MODELS
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
C {launcher.sym} 300 -210 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_psrr.raw"
}
C {res.sym} 590 -1180 3 1 {name=Ri
value=1
footprint=1206
device=resistor
m=1}
C {capa.sym} 650 -1110 0 0 {name=Ci
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {noconn.sym} 800 -640 3 0 {name=l11}
