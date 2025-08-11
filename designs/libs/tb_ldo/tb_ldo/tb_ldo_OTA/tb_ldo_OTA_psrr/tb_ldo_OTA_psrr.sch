v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -1000 2420 -600 {flags=graph
y1=-50
y2=-20
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_ldo_OTA_psrr.raw
autoload=1
color="4 7"
node="OTA Power supply rejection ratio (PSRR)
re(psrr_db)"}
N 1150 -700 1150 -670 {lab=GND}
N 660 -850 660 -810 {lab=VDD}
N 1150 -980 1150 -940 {lab=VDD}
N 660 -750 660 -710 {lab=GND}
N 1040 -640 1040 -600 {lab=VDD}
N 790 -860 790 -760 {lab=vref}
N 790 -860 860 -860 {lab=vref}
N 1420 -660 1420 -640 {lab=GND}
N 1420 -820 1420 -800 {lab=out}
N 1320 -820 1420 -820 {lab=out}
N 790 -700 790 -650 {lab=GND}
N 1420 -800 1420 -760 {lab=out}
N 1420 -700 1420 -660 {lab=GND}
N 1040 -510 1110 -510 {lab=#net1}
N 880 -700 880 -650 {lab=GND}
N 880 -780 880 -760 {lab=in}
N 1040 -540 1040 -510 {lab=#net1}
N 1110 -700 1110 -510 {lab=#net1}
N 1270 -820 1320 -820 {lab=out}
N 860 -860 1030 -860 {lab=vref}
N 880 -780 1030 -780 {lab=in}
C {gnd.sym} 1150 -670 0 0 {name=l2 lab=GND}
C {vsource.sym} 660 -780 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 660 -710 0 0 {name=l3 lab=GND}
C {vsource.sym} 790 -730 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 1040 -570 0 0 {name=I0 value=10u}
C {gnd.sym} 790 -650 0 0 {name=l4 lab=GND}
C {capa.sym} 1420 -730 0 0 {name=CL
m=1
value=0.52p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1420 -640 0 0 {name=l6 lab=GND}
C {vdd.sym} 660 -850 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1150 -980 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1040 -640 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 840 -860 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1370 -820 0 0 {name=p2 sig_type=std_logic lab=out}
C {vsource.sym} 880 -730 0 0 {name=V3 value=1.5 savecurrent=false}
C {gnd.sym} 880 -650 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 980 -780 0 0 {name=p3 sig_type=std_logic lab=in}
C {libs/core_ldo/ldo/ldo_OTA/OTA.sym} 1130 -820 0 0 {name=x1}
C {simulator_commands.sym} 250 -1010 0 0 {name=SIMULATIONS
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
let psrr_db = db(v(out))
plot psrr_db

** Measurements
meas ac PSRR_gain FIND psrr_db AT=1Hz
let psrr_3db = PSRR_gain + 3
meas ac f_3db WHEN psrr_db=$&psrr_3db

write tb_ldo_OTA_psrr.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -770 0 0 {name=MODELS
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
C {title-3.sym} 0 0 0 0 {name=l5 author="Julio Vilca" rev=1.0 lock=true page=4 pages=6}
C {launcher.sym} 300 -210 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_OTA_psrr.raw"
}
