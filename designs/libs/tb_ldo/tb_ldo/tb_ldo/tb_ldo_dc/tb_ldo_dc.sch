v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -720 2420 -320 {flags=graph,unlocked
y1=1.8016
y2=1.8056
ypos1=0
ypos2=2
subdivy=1
unity=1
x1=0
x2=0.001
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
rawfile=$netlist_dir/tb_ldo_dc4.raw
divy=5}
B 2 1620 -1200 2420 -800 {flags=graph,unlocked
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
rawfile=$netlist_dir/tb_ldo_dc3.raw
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
node="LDO Output vs VDD
vout
vdd"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo_dc2.raw
autoload=1}
B 2 740 -1680 1540 -1280 {flags=graph
y1=1.784
y2=1.804
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="LDO Output vs ILOAD 
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
rawfile=$netlist_dir/tb_ldo_dc1.raw
sim_type=dc
rainbow=1
hilight_wave=1}
N 890 -960 890 -930 {lab=GND}
N 520 -1170 520 -1130 {lab=VDD}
N 890 -1160 890 -1120 {lab=VDD}
N 520 -1070 520 -1030 {lab=GND}
N 620 -1170 620 -1130 {lab=VDD}
N 620 -1070 620 -1020 {lab=#net1}
N 620 -1020 800 -1020 {lab=#net1}
N 730 -1080 730 -980 {lab=vref}
N 730 -1080 800 -1080 {lab=vref}
N 970 -1040 1040 -1040 {lab=out}
N 1140 -880 1140 -860 {lab=GND}
N 1140 -960 1140 -940 {lab=#net2}
N 1140 -1040 1140 -1020 {lab=out}
N 1040 -1040 1140 -1040 {lab=out}
N 730 -920 730 -870 {lab=GND}
N 1040 -880 1040 -860 {lab=GND}
N 890 -560 890 -530 {lab=GND}
N 890 -760 890 -720 {lab=VDD}
N 620 -770 620 -730 {lab=VDD}
N 620 -670 620 -620 {lab=#net3}
N 620 -620 800 -620 {lab=#net3}
N 730 -680 730 -580 {lab=vref1}
N 730 -680 800 -680 {lab=vref1}
N 970 -640 1040 -640 {lab=out1}
N 1140 -480 1140 -460 {lab=GND}
N 1140 -560 1140 -540 {lab=#net4}
N 1140 -640 1140 -620 {lab=out1}
N 1040 -640 1140 -640 {lab=out1}
N 730 -520 730 -470 {lab=GND}
N 1040 -630 1040 -570 {lab=out1}
N 1040 -640 1040 -630 {lab=out1}
N 1040 -510 1040 -460 {lab=GND}
N 1040 -1040 1040 -1020 {lab=out}
N 1040 -1020 1040 -980 {lab=out}
N 1040 -920 1040 -880 {lab=GND}
N 910 -960 910 -950 {lab=#net5}
N 790 -1000 800 -1000 {lab=#net6}
N 800 -1060 800 -1040 {lab=#net7}
N 910 -560 910 -550 {lab=#net8}
N 800 -660 800 -640 {lab=#net9}
N 790 -1000 800 -1000 {lab=#net6}
N 790 -600 800 -600 {lab=#net6}
N 790 -600 800 -600 {lab=#net6}
C {noconn.sym} 790 -1000 0 0 {name=l1}
C {gnd.sym} 890 -930 0 0 {name=l2 lab=GND}
C {res.sym} 1040 -950 0 0 {name=RL
value=\{RL_val\}
footprint=1206
device=resistor
m=1}
C {vsource.sym} 520 -1100 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 520 -1030 0 0 {name=l3 lab=GND}
C {vsource.sym} 730 -950 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 620 -1100 0 0 {name=I0 value=10u}
C {gnd.sym} 730 -870 0 0 {name=l4 lab=GND}
C {gnd.sym} 1040 -860 0 0 {name=l5 lab=GND}
C {capa.sym} 1140 -910 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1140 -990 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1140 -860 0 0 {name=l6 lab=GND}
C {vdd.sym} 520 -1170 0 0 {name=l7 lab=VDD}
C {vdd.sym} 890 -1160 0 0 {name=l8 lab=VDD}
C {vdd.sym} 620 -1170 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 780 -1080 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1090 -1040 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo/ldo.sym} 950 -1040 0 0 {name=x1}
C {isource.sym} 1040 -540 0 0 {name=IL value=1m}
C {gnd.sym} 890 -530 0 0 {name=l13 lab=GND}
C {vsource.sym} 730 -550 0 0 {name=V3 value=0.9 savecurrent=false}
C {isource.sym} 620 -700 0 0 {name=I1 value=10u}
C {gnd.sym} 730 -470 0 0 {name=l14 lab=GND}
C {capa.sym} 1140 -510 0 0 {name=CL1
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1140 -590 0 0 {name=Resr1
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1140 -460 0 0 {name=l15 lab=GND}
C {vdd.sym} 890 -760 0 0 {name=l16 lab=VDD}
C {vdd.sym} 620 -770 0 0 {name=l17 lab=VDD}
C {lab_wire.sym} 780 -680 0 0 {name=p3 sig_type=std_logic lab=vref1}
C {lab_wire.sym} 1090 -640 0 0 {name=p4 sig_type=std_logic lab=out1}
C {libs/core_ldo/ldo/ldo/ldo.sym} 950 -640 0 0 {name=x2}
C {gnd.sym} 1040 -460 0 0 {name=l18 lab=GND}
C {simulator_commands.sym} 250 -1000 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white      

** Define param
.param RL_val = 1.8k

** Max load current simulation
dc IL 0 5m 0.01m

**Measurements
meas dc ILOAD_max WHEN v(out1)=1.8
print ILOAD_max

** Plots
setplot dc1
let vout=v(out1)
plot vout

write tb_ldo_dc1.raw

** Dropout voltage simulation
alter RL = \{RL_val\}
dc V1 0 5 0.01

** Measurements
meas dc Vdd_min FIND v(vdd) WHEN v(out)=1.8 RISE=1
let Vdropout=Vdd_min-1.8
print Vdropout

** Plots
setplot dc2
let vout=v(out)
let vin=v(vdd)
plot vout vin

write tb_ldo_dc2.raw

** Line regulation simulation
alter RL = \{RL_val\}
dc V1 2 5 0.01

** Measurements
meas dc Vout_max MAX v(out)
meas dc Vout_min MIN v(out)
let DeltaVdd=5-2
let DeltaVout=Vout_max-Vout_min
let Line_reg=DeltaVout/DeltaVdd
print Line_reg

** Plots
setplot dc3
let vout=v(out)
plot vout

write tb_ldo_dc3.raw

** Load regulation simulation
dc IL 0 1m 0.01m

** Measurements
meas dc Vout_max MAX v(out1)
meas dc Vout_min MIN v(out1)
let DeltaVout = Vout_max-Vout_min
let DeltaIload = 0-1m
let Load_reg = abs(DeltaVout/DeltaIload)
let Load_reg_por = (DeltaVout/1.8)*100
print Load_reg
print Load_reg_por

** Plots
setplot dc4
let vout=v(out1)
plot vout

write tb_ldo_dc4.raw

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
C {title-3.sym} 0 0 0 0 {name=l10 author="Julio Vilca" rev=1.0 lock=true page=3 pages=8}
C {launcher.sym} 300 -200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_dc1.raw; xschem raw_read $netlist_dir/tb_ldo_dc2.raw; xschem raw_read $netlist_dir/tb_ldo_dc3.raw; xschem raw_read $netlist_dir/tb_ldo_dc4.raw"
}
C {noconn.sym} 910 -950 3 0 {name=l20}
C {noconn.sym} 910 -550 3 0 {name=l11}
C {noconn.sym} 790 -600 0 0 {name=l12}
