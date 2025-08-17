v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -720 2420 -320 {flags=graph
y2=0.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="OTA Output voltage vs VDD
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo_OTA_dc2.raw
sim_type=dc
autoload=1
y1=0}
B 2 1620 -1200 2420 -800 {flags=graph,unlocked
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.8
x2=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="OTA Input–output transfer characteristic
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo_OTA_dc1.raw
sim_type=dc
autoload=1}
N 1140 -720 1140 -690 {lab=GND}
N 650 -870 650 -830 {lab=VDD}
N 1140 -1000 1140 -960 {lab=VDD}
N 650 -770 650 -730 {lab=GND}
N 1030 -660 1030 -620 {lab=VDD}
N 790 -860 790 -760 {lab=vref}
N 790 -860 860 -860 {lab=vref}
N 1410 -680 1410 -660 {lab=GND}
N 1410 -840 1410 -820 {lab=out}
N 1310 -840 1410 -840 {lab=out}
N 790 -700 790 -650 {lab=GND}
N 1410 -820 1410 -780 {lab=out}
N 1410 -720 1410 -680 {lab=GND}
N 1030 -530 1100 -530 {lab=#net1}
N 870 -740 870 -690 {lab=GND}
N 870 -820 870 -800 {lab=in}
N 1030 -560 1030 -530 {lab=#net1}
N 1100 -720 1100 -530 {lab=#net1}
N 1260 -840 1310 -840 {lab=out}
N 860 -860 1030 -860 {lab=vref}
N 870 -820 1020 -820 {lab=in}
N 980 -900 1020 -900 {lab=#net2}
N 980 -780 1020 -780 {lab=GND}
C {gnd.sym} 1140 -690 0 0 {name=l2 lab=GND}
C {vsource.sym} 650 -800 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 650 -730 0 0 {name=l3 lab=GND}
C {vsource.sym} 790 -730 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 1030 -590 0 0 {name=I0 value=10u}
C {gnd.sym} 790 -650 0 0 {name=l4 lab=GND}
C {capa.sym} 1410 -750 0 0 {name=CL
m=1
value=0.52p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1410 -660 0 0 {name=l6 lab=GND}
C {vdd.sym} 650 -870 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1140 -1000 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1030 -660 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 840 -860 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1360 -840 0 0 {name=p2 sig_type=std_logic lab=out}
C {vsource.sym} 870 -770 0 0 {name=V3 value=0.9 savecurrent=false}
C {gnd.sym} 870 -690 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 970 -820 0 0 {name=p3 sig_type=std_logic lab=in}
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
C {simulator_commands.sym} 250 -1030 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

** Voltage offset simulation
dc V3 0.8 1.0 0.001

** Measurements
let vtarget = v(vdd)/2
let vin = v(in)
let vout = v(out)
meas dc offset FIND vin WHEN vout=vtarget RISE=1
let vos = 0.9 - offset
print vos

** Plots
setplot dc1
plot vout

write tb_ldo_OTA_dc1.raw

** VDD DC sweep simulation
dc V1 0 5 0.1

** Plots
setplot dc2
let vout = v(out)
plot vout

write tb_ldo_OTA_dc2.raw

.endc
* ngspice commands
"}
C {title-3.sym} 0 0 0 0 {name=l5 author="Julio Vilca" rev=1.0 lock=true page=2 pages=6}
C {launcher.sym} 300 -210 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_OTA_dc1.raw; xschem raw_read $netlist_dir/tb_ldo_OTA_dc2.raw "
}
C {libs/core_ldo/ldo_OTA/OTA.sym} 1120 -840 0 0 {name=x1}
C {vdd.sym} 980 -900 0 0 {name=l10 lab=VDD}
C {gnd.sym} 980 -780 0 0 {name=l11 lab=GND}
