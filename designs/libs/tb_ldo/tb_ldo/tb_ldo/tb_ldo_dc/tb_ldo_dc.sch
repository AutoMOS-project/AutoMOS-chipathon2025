v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -720 2420 -320 {flags=graph
y1=1.7970
y2=1.804
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
color="4 7"
node="Load regulation
vout"
rawfile=$netlist_dir/tb_ldo_dc3.raw}
B 2 1620 -1200 2420 -800 {flags=graph
y1=1.8
y2=1.825
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2
x2=5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Line Regulation
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo_dc2.raw
sim_type=dc
autoload=1}
B 2 1620 -1680 2420 -1280 {flags=graph
y1=0
y2=5
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
node="LDO Output vs Input voltage
vout
vdd"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo_dc1.raw
autoload=1}
N 870 -960 870 -940 {lab=#net1}
N 950 -960 950 -930 {lab=GND}
N 510 -1160 510 -1120 {lab=VDD}
N 950 -1160 950 -1120 {lab=VDD}
N 510 -1060 510 -1020 {lab=GND}
N 620 -1160 620 -1120 {lab=VDD}
N 620 -1060 620 -1010 {lab=#net2}
N 620 -1010 800 -1010 {lab=#net2}
N 730 -1070 730 -970 {lab=vref}
N 730 -1070 800 -1070 {lab=vref}
N 1100 -1040 1170 -1040 {lab=out}
N 1270 -880 1270 -860 {lab=GND}
N 1270 -960 1270 -940 {lab=#net3}
N 1270 -1040 1270 -1020 {lab=out}
N 1170 -1040 1270 -1040 {lab=out}
N 730 -910 730 -860 {lab=GND}
N 870 -940 870 -900 {lab=#net1}
N 1170 -880 1170 -860 {lab=GND}
N 870 -560 870 -540 {lab=#net4}
N 950 -560 950 -530 {lab=GND}
N 950 -760 950 -720 {lab=VDD}
N 620 -760 620 -720 {lab=VDD}
N 620 -660 620 -610 {lab=#net5}
N 620 -610 800 -610 {lab=#net5}
N 730 -670 730 -570 {lab=vref1}
N 730 -670 800 -670 {lab=vref1}
N 1100 -640 1170 -640 {lab=out1}
N 1270 -480 1270 -460 {lab=GND}
N 1270 -560 1270 -540 {lab=#net6}
N 1270 -640 1270 -620 {lab=out1}
N 1170 -640 1270 -640 {lab=out1}
N 730 -510 730 -460 {lab=GND}
N 870 -540 870 -500 {lab=#net4}
N 1170 -630 1170 -570 {lab=out1}
N 1170 -640 1170 -630 {lab=out1}
N 1170 -510 1170 -460 {lab=GND}
N 1170 -1040 1170 -1020 {lab=out}
N 1170 -1020 1170 -980 {lab=out}
N 1170 -920 1170 -880 {lab=GND}
C {noconn.sym} 870 -900 3 0 {name=l1}
C {gnd.sym} 950 -930 0 0 {name=l2 lab=GND}
C {res.sym} 1170 -950 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 510 -1090 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 510 -1020 0 0 {name=l3 lab=GND}
C {vsource.sym} 730 -940 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 620 -1090 0 0 {name=I0 value=10u}
C {gnd.sym} 730 -860 0 0 {name=l4 lab=GND}
C {gnd.sym} 1170 -860 0 0 {name=l5 lab=GND}
C {capa.sym} 1270 -910 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1270 -990 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1270 -860 0 0 {name=l6 lab=GND}
C {vdd.sym} 510 -1160 0 0 {name=l7 lab=VDD}
C {vdd.sym} 950 -1160 0 0 {name=l8 lab=VDD}
C {vdd.sym} 620 -1160 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 780 -1070 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1220 -1040 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo/ldo.sym} 950 -1040 0 0 {name=x1}
C {isource.sym} 1170 -540 0 0 {name=IL value=1m}
C {noconn.sym} 870 -500 3 0 {name=l12}
C {gnd.sym} 950 -530 0 0 {name=l13 lab=GND}
C {vsource.sym} 730 -540 0 0 {name=V3 value=0.9 savecurrent=false}
C {isource.sym} 620 -690 0 0 {name=I1 value=10u}
C {gnd.sym} 730 -460 0 0 {name=l14 lab=GND}
C {capa.sym} 1270 -510 0 0 {name=CL1
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1270 -590 0 0 {name=Resr1
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1270 -460 0 0 {name=l15 lab=GND}
C {vdd.sym} 950 -760 0 0 {name=l16 lab=VDD}
C {vdd.sym} 620 -760 0 0 {name=l17 lab=VDD}
C {lab_wire.sym} 780 -670 0 0 {name=p3 sig_type=std_logic lab=vref1}
C {lab_wire.sym} 1220 -640 0 0 {name=p4 sig_type=std_logic lab=out1}
C {libs/core_ldo/ldo/ldo/ldo.sym} 950 -640 0 0 {name=x2}
C {gnd.sym} 1170 -460 0 0 {name=l18 lab=GND}
C {simulator_commands.sym} 250 -990 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

** Dropout voltage simulation
dc V1 0 5 0.01

** Measurements
meas dc Vdd_min FIND v(vdd) WHEN v(out)=1.8 RISE=1
let Vdropout=Vdd_min-1.8
print Vdropout

** Plots
setplot dc1
let vout=v(out)
let vin=v(vdd)
plot vout vin

write tb_ldo_dc1.raw

** Line regulation simulation
dc V1 2 5 0.001

** Measurements
meas dc Vout_max MAX v(out)
meas dc Vout_min MIN v(out)
let DeltaVdd=5-2
let DeltaVout=Vout_max-Vout_min
let Line_reg=DeltaVout/DeltaVdd
print Line_reg

** Plots
setplot dc2
let vout=v(out)
plot vout

write tb_ldo_dc2.raw

** Load regulation simulation
dc IL 0 2m 0.01m

** Measurements
meas dc Vout_max MAX v(out1)
meas dc Vout_min MIN v(out1)
let DeltaVout = Vout_max-Vout_min
let DeltaIload = 0-2m
let Load_reg = abs(DeltaVout/DeltaIload)
let Load_reg_por = (DeltaVout/1.8)*100
print Load_reg
print Load_reg_por

** Plots
setplot dc3
let vout=v(out1)
plot vout

write tb_ldo_dc3.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -750 0 0 {name=MODELS
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
C {title-3.sym} 0 0 0 0 {name=l10 author="Julio Vilca" rev=1.0 lock=true page=2 pages=6}
C {launcher.sym} 300 -200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_dc1.raw; xschem raw_read $netlist_dir/tb_ldo_dc2.raw; xschem raw_read $netlist_dir/tb_ldo_dc3.raw"
}
