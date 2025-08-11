v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -1200 2420 -800 {flags=graph
y1=-60
y2=50
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="OTA Gain
re(gain_db)"
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_ldo_OTA_ac.raw
sim_type=ac
autoload=1
legend=1
mode=Line
x2=10
x1=0}
B 2 1620 -720 2420 -320 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="OTA Phase
re(phase_deg)"
color="4 7"
dataset=0
unitx=1
logx=1
logy=0
rainbow=0
rawfile=$netlist_dir/tb_ldo_OTA_ac.raw
autoload=1
y1=-350
y2=0
sim_type=ac
x2=10
x1=0}
N 1140 -670 1140 -640 {lab=GND}
N 650 -820 650 -780 {lab=VDD}
N 1140 -950 1140 -910 {lab=VDD}
N 650 -720 650 -680 {lab=GND}
N 1030 -610 1030 -570 {lab=VDD}
N 780 -830 780 -730 {lab=vref}
N 780 -830 850 -830 {lab=vref}
N 1410 -630 1410 -610 {lab=GND}
N 1410 -790 1410 -770 {lab=out}
N 1310 -790 1410 -790 {lab=out}
N 780 -670 780 -620 {lab=GND}
N 1410 -770 1410 -730 {lab=out}
N 1410 -670 1410 -630 {lab=GND}
N 1030 -480 1100 -480 {lab=#net1}
N 870 -670 870 -620 {lab=GND}
N 870 -750 870 -730 {lab=in}
N 1030 -510 1030 -480 {lab=#net1}
N 1100 -670 1100 -480 {lab=#net1}
N 1260 -790 1310 -790 {lab=out}
N 850 -830 1020 -830 {lab=vref}
N 870 -750 1020 -750 {lab=in}
C {gnd.sym} 1140 -640 0 0 {name=l2 lab=GND}
C {vsource.sym} 650 -750 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 650 -680 0 0 {name=l3 lab=GND}
C {vsource.sym} 780 -700 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 1030 -540 0 0 {name=I0 value=10u}
C {gnd.sym} 780 -620 0 0 {name=l4 lab=GND}
C {capa.sym} 1410 -700 0 0 {name=CL
m=1
value=0.52p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1410 -610 0 0 {name=l6 lab=GND}
C {vdd.sym} 650 -820 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1140 -950 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1030 -610 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 830 -830 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1360 -790 0 0 {name=p2 sig_type=std_logic lab=out}
C {vsource.sym} 870 -700 0 0 {name=V3 value=1.5 savecurrent=false}
C {gnd.sym} 870 -620 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 970 -750 0 0 {name=p3 sig_type=std_logic lab=in}
C {libs/core_ldo/ldo/ldo_OTA/OTA.sym} 1120 -790 0 0 {name=x1}
C {simulator_commands.sym} 250 -930 0 0 {name=SIMULATIONS
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
plot gain_db
let phase_deg = cph(v(out))*180/pi
plot phase_deg

** Measurements
meas ac DC_gain FIND gain_db AT=1Hz
let gain_3db = DC_gain-3
meas ac f_3db WHEN gain_db=$&gain_3db
meas ac f_0db WHEN gain_db=0
meas ac phase_0db FIND phase_deg WHEN gain_db=0
let phase_margin = 180 + phase_0db
print phase_margin

write tb_ldo_OTA_ac.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -690 0 0 {name=MODELS
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
tclcommand="xschem raw_read $netlist_dir/tb_ldo_OTA_ac.raw"
}
C {title-3.sym} 0 0 0 0 {name=l5 author="Julio Vilca" rev=1.0 lock=true page=3 pages=6}
