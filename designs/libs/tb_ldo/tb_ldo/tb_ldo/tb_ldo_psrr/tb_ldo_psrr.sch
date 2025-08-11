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
y1=-80
y2=-35
mode=Line
rawfile=$netlist_dir/tb_ldo_psrr.raw
color="4 7"
node="LDO Power supply rejection ratio (PSRR)
out db20()"}
N 800 -740 800 -720 {lab=#net1}
N 880 -740 880 -710 {lab=GND}
N 810 -1200 810 -1160 {lab=VDD}
N 880 -940 880 -900 {lab=VDD}
N 810 -1100 810 -1060 {lab=GND}
N 880 -1200 880 -1160 {lab=VDD}
N 880 -1100 880 -1050 {lab=ibias}
N 1300 -660 1300 -640 {lab=GND}
N 1300 -740 1300 -720 {lab=#net2}
N 1300 -820 1300 -800 {lab=out}
N 1200 -820 1300 -820 {lab=out}
N 1200 -700 1200 -640 {lab=GND}
N 800 -720 800 -680 {lab=#net1}
N 1030 -820 1150 -820 {lab=out}
N 1150 -820 1200 -820 {lab=out}
N 680 -790 730 -790 {lab=ibias}
N 950 -1100 950 -1060 {lab=GND}
N 950 -1220 950 -1160 {lab=vref}
N 680 -850 730 -850 {lab=vref}
N 1200 -790 1200 -760 {lab=out}
N 1200 -820 1200 -790 {lab=out}
C {noconn.sym} 800 -680 3 0 {name=l1}
C {gnd.sym} 880 -710 0 0 {name=l2 lab=GND}
C {res.sym} 1200 -730 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 810 -1130 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 810 -1060 0 0 {name=l3 lab=GND}
C {vsource.sym} 950 -1130 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 880 -1130 0 0 {name=I0 value=10u}
C {gnd.sym} 950 -1060 0 0 {name=l4 lab=GND}
C {gnd.sym} 1200 -640 0 0 {name=l5 lab=GND}
C {capa.sym} 1300 -690 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1300 -770 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1300 -640 0 0 {name=l6 lab=GND}
C {vdd.sym} 810 -1200 0 0 {name=l7 lab=VDD}
C {vdd.sym} 880 -940 0 0 {name=l8 lab=VDD}
C {vdd.sym} 880 -1200 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 950 -1220 3 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1250 -820 0 0 {name=p2 sig_type=std_logic lab=out
}
C {lab_wire.sym} 880 -1050 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 690 -790 0 1 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 690 -850 0 1 {name=p5 sig_type=std_logic lab=vref}
C {libs/core_ldo/ldo/ldo/ldo.sym} 880 -820 0 0 {name=x1}
C {title-3.sym} 0 0 0 0 {name=l10 author="Julio Vilca" rev=1.0 lock=true page=4 pages=6}
C {simulator_commands.sym} 250 -1070 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

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
let psrr_3db = PSRR_gain+3
meas ac f_3db WHEN psrr_db=$&psrr_3db

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
