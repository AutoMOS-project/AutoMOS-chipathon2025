v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1240 -1150 2040 -750 {flags=graph
y1=-48
y2=0.0019
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="vout db20()"
color=7
dataset=0
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_opamp_two_stage_ac.raw
sim_type=ac
autoload=1}
B 2 1240 -660 2040 -260 {flags=graph
y1=-74
y2=-33
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="vout db20()"
color=7
dataset=1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_opamp_two_stage_ac.raw
sim_type=ac
autoload=1}
N 600 -610 600 -560 {lab=VSS}
N 600 -590 670 -590 {lab=VSS}
N 670 -610 670 -590 {lab=VSS}
N 600 -720 600 -670 {lab=VDD}
N 670 -750 670 -700 {lab=vp}
N 980 -670 1060 -670 {lab=vout}
N 1060 -670 1060 -650 {lab=vout}
N 770 -790 1010 -790 {lab=vout}
N 1010 -790 1010 -670 {lab=vout}
N 530 -610 530 -590 {lab=VSS}
N 530 -590 600 -590 {lab=VSS}
N 530 -710 530 -670 {lab=ibias}
N 770 -670 840 -670 {lab=vout}
N 770 -790 770 -670 {lab=vout}
N 670 -640 670 -610 {lab=VSS}
C {gnd.sym} 600 -500 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1060 -670 0 1 {name=p4 lab=vout}
C {vsource.sym} 600 -640 0 0 {name=V1 value="3 AC \{ac_psrr\}" savecurrent=false}
C {vsource.sym} 670 -670 0 0 {name=V2 
value="1.65 AC \{ac_buffer\}"}
C {vsource.sym} 600 -530 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 670 -590 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 600 -700 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 670 -730 0 0 {name=p9  lab=vp}
C {capa.sym} 1060 -620 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1060 -590 1 1 {name=p11 lab=VSS}
C {devices/code_shown.sym} 20 -320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -1080 0 0 {name=NGSPICE only_toplevel=true
value="
.param ac_buffer=0
.param ac_psrr=0
.control
** Define input signal
let VDD=3.3

** Set sources
alter @V1[DC] = $&VDD

** Simulations
op
save all
write tb_opamp_two_stage_ac.raw
set appendwrite

alterparam ac_buffer=1
reset
ac dec 100 0.1 10G
write tb_opamp_two_stage_ac.raw
set appendwrite

alterparam ac_buffer=0
alterparam ac_psrr=1
reset
ac dec 100 0.1 10G
write tb_opamp_two_stage_ac.raw

.endc
"}
C {isource.sym} 530 -640 0 0 {name=I0 value=2u}
C {lab_pin.sym} 530 -690 2 1 {name=p12 lab=ibias}
C {libs/core_analog/opamp_two_stage/opamp_two_stage.sym} 840 -610 0 0 {name=x1}
C {lab_pin.sym} 900 -730 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 840 -690 0 0 {name=p2 lab=ibias}
C {lab_pin.sym} 840 -650 0 0 {name=p5 lab=vp}
C {lab_pin.sym} 900 -610 0 1 {name=p6 lab=VSS}
C {launcher.sym} 790 -1020 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_dc.raw"
}
C {launcher.sym} 790 -980 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {title.sym} 160 -30 0 0 {name=l2 author="Luighi Viton"}
