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
N 910 -880 910 -850 {lab=GND}
N 470 -1020 470 -980 {lab=#net1}
N 910 -1080 910 -1040 {lab=VDD}
N 470 -920 470 -880 {lab=GND}
N 650 -1020 650 -980 {lab=VDD}
N 650 -920 650 -870 {lab=ibias}
N 1170 -800 1170 -780 {lab=GND}
N 1170 -880 1170 -860 {lab=#net2}
N 1170 -960 1170 -940 {lab=out}
N 1070 -960 1170 -960 {lab=out}
N 1070 -840 1070 -780 {lab=GND}
N 770 -940 820 -940 {lab=ibias}
N 710 -920 710 -880 {lab=GND}
N 710 -1040 710 -980 {lab=vref}
N 770 -1000 820 -1000 {lab=vref}
N 1070 -930 1070 -900 {lab=out}
N 1070 -960 1070 -930 {lab=out}
N 470 -1020 490 -1020 {lab=#net1}
N 550 -1020 580 -1020 {lab=VDD}
N 580 -1020 580 -980 {lab=VDD}
N 580 -920 580 -880 {lab=GND}
N 470 -880 580 -880 {lab=GND}
N 470 -880 470 -860 {lab=GND}
N 580 -1040 580 -1020 {lab=VDD}
N 930 -880 930 -870 {lab=#net3}
N 820 -980 820 -960 {lab=#net4}
N 810 -920 820 -920 {lab=#net5}
N 990 -960 1070 -960 {lab=out}
C {gnd.sym} 910 -850 0 0 {name=l2 lab=GND}
C {res.sym} 1070 -870 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 470 -950 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 470 -860 0 0 {name=l3 lab=GND}
C {vsource.sym} 710 -950 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 650 -950 0 0 {name=I0 value=10u}
C {gnd.sym} 710 -880 0 0 {name=l4 lab=GND}
C {gnd.sym} 1070 -780 0 0 {name=l5 lab=GND}
C {capa.sym} 1170 -830 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1170 -910 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1170 -780 0 0 {name=l6 lab=GND}
C {vdd.sym} 580 -1040 0 0 {name=l7 lab=VDD}
C {vdd.sym} 910 -1080 0 0 {name=l8 lab=VDD}
C {vdd.sym} 650 -1020 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 710 -1030 3 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1120 -960 0 0 {name=p2 sig_type=std_logic lab=out
}
C {lab_wire.sym} 650 -870 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 780 -940 0 1 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 780 -1000 0 1 {name=p5 sig_type=std_logic lab=vref}
C {libs/core_ldo/ldo/ldo/ldo.sym} 970 -960 0 0 {name=x1}
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
C {res.sym} 520 -1020 3 1 {name=Ri
value=1
footprint=1206
device=resistor
m=1}
C {capa.sym} 580 -950 0 0 {name=Ci
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {noconn.sym} 930 -870 3 0 {name=l11}
C {noconn.sym} 810 -920 0 0 {name=l1}
