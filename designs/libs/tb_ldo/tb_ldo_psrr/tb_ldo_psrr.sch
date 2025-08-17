v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -1140 2420 -740 {flags=graph
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
N 1000 -880 1000 -850 {lab=GND}
N 490 -1020 490 -980 {lab=#net1}
N 1000 -1080 1000 -1040 {lab=VDD}
N 490 -920 490 -880 {lab=GND}
N 670 -1020 670 -980 {lab=VDD}
N 670 -920 670 -870 {lab=ibias}
N 1260 -800 1260 -780 {lab=GND}
N 1260 -880 1260 -860 {lab=#net2}
N 1260 -960 1260 -940 {lab=out}
N 1160 -960 1260 -960 {lab=out}
N 1160 -840 1160 -780 {lab=GND}
N 860 -940 910 -940 {lab=ibias}
N 730 -920 730 -880 {lab=GND}
N 730 -1040 730 -980 {lab=vref}
N 860 -1000 910 -1000 {lab=vref}
N 1160 -930 1160 -900 {lab=out}
N 1160 -960 1160 -930 {lab=out}
N 490 -1020 510 -1020 {lab=#net1}
N 570 -1020 600 -1020 {lab=VDD}
N 600 -1020 600 -980 {lab=VDD}
N 600 -920 600 -880 {lab=GND}
N 490 -880 600 -880 {lab=GND}
N 490 -880 490 -860 {lab=GND}
N 600 -1040 600 -1020 {lab=VDD}
N 1020 -880 1020 -870 {lab=#net3}
N 910 -980 910 -960 {lab=#net4}
N 1080 -960 1160 -960 {lab=out}
N 790 -1020 790 -980 {lab=EN}
N 790 -920 790 -880 {lab=GND}
N 790 -1040 790 -1020 {lab=EN}
N 870 -920 910 -920 {lab=EN}
C {gnd.sym} 1000 -850 0 0 {name=l2 lab=GND}
C {res.sym} 1160 -870 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 490 -950 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 490 -860 0 0 {name=l3 lab=GND}
C {vsource.sym} 730 -950 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 670 -950 0 0 {name=I0 value=10u}
C {gnd.sym} 730 -880 0 0 {name=l4 lab=GND}
C {gnd.sym} 1160 -780 0 0 {name=l5 lab=GND}
C {capa.sym} 1260 -830 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1260 -910 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1260 -780 0 0 {name=l6 lab=GND}
C {vdd.sym} 600 -1040 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1000 -1080 0 0 {name=l8 lab=VDD}
C {vdd.sym} 670 -1020 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 730 -1030 3 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1210 -960 0 0 {name=p2 sig_type=std_logic lab=out
}
C {lab_wire.sym} 670 -870 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 870 -940 0 1 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 870 -1000 0 1 {name=p5 sig_type=std_logic lab=vref}
C {title-3.sym} 0 0 0 0 {name=l10 author="Julio Vilca" rev=1.0 lock=true page=6 pages=8}
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
C {res.sym} 540 -1020 3 1 {name=Ri
value=1
footprint=1206
device=resistor
m=1}
C {capa.sym} 600 -950 0 0 {name=Ci
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {noconn.sym} 1020 -870 3 0 {name=l11}
C {libs/core_ldo/ldo/ldo.sym} 1060 -960 0 0 {name=x1}
C {vsource.sym} 790 -950 0 0 {name=V4 value=2 savecurrent=false}
C {gnd.sym} 790 -880 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 790 -1030 3 0 {name=p9 sig_type=std_logic lab=EN}
C {lab_wire.sym} 890 -920 0 0 {name=p6 sig_type=std_logic lab=EN}
