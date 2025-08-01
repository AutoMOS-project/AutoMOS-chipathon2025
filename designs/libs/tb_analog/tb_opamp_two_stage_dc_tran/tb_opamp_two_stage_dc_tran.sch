v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1190 -1370 1990 -970 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=3.3
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
rawfile=$netlist_dir/tb_opamp_two_stage_dc_tran.raw
rainbow=1
hilight_wave=-1
color="4 7"
node="vout
vp"
dataset=-1}
B 2 1190 -520 1990 -120 {flags=graph
y1=0
y2=1.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.2351647e-22
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vp"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_opamp_two_stage_dc_tran.raw
sim_type=tran
autoload=1}
B 2 1190 -970 1990 -570 {flags=graph
y1=3.6e-06
y2=0.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Offset; vout vp -\\""
color=12
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_opamp_two_stage_dc_tran.raw
sim_type=dc}
N 590 -560 590 -510 {lab=VSS}
N 590 -540 660 -540 {lab=VSS}
N 660 -560 660 -540 {lab=VSS}
N 590 -670 590 -620 {lab=VDD}
N 660 -670 660 -620 {lab=vp}
N 970 -620 1050 -620 {lab=vout}
N 1050 -620 1050 -600 {lab=vout}
N 760 -740 1000 -740 {lab=vout}
N 1000 -740 1000 -620 {lab=vout}
N 520 -560 520 -540 {lab=VSS}
N 520 -540 590 -540 {lab=VSS}
N 520 -660 520 -620 {lab=ibias}
N 760 -620 830 -620 {lab=vout}
N 760 -740 760 -620 {lab=vout}
C {gnd.sym} 590 -450 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1050 -620 0 1 {name=p4 lab=vout}
C {vsource.sym} 590 -590 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 660 -590 0 0 {name=V2 
value="1.65"}
C {vsource.sym} 590 -480 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 660 -540 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 590 -650 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 660 -650 0 0 {name=p9  lab=vp}
C {capa.sym} 1050 -570 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1050 -540 1 1 {name=p11 lab=VSS}
C {devices/code_shown.sym} 10 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -950 0 0 {name=NGSPICE only_toplevel=true
value="
.control
** Define input signal
let VDD=3.3
let Vstep=1.65
let T=20u
let td=1u
let trf=1u
let tON=0.5*T-trf

** Define transient params
let Tstop=2*T
let Tstep=0.01*T

** Set sources
alter @V1[DC] = $&VDD
alter @V2[PULSE]= [ 0 $&Vstep $&td $&trf $&trf $&tON $&T 2 ]

** Simulations
op
save all
write tb_opamp_two_stage_dc_tran.raw
set appendwrite

dc v2 0 3.3 0.1
write tb_opamp_two_stage_dc_tran.raw
set appendwrite

tran $&Tstep $&Tstop
write tb_opamp_two_stage_dc_tran.raw

.endc
"}
C {isource.sym} 520 -590 0 0 {name=I0 value=2u}
C {lab_pin.sym} 520 -640 2 1 {name=p12 lab=ibias}
C {libs/core_analog/opamp_two_stage/opamp_two_stage.sym} 830 -560 0 0 {name=x1}
C {lab_pin.sym} 890 -680 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 830 -640 0 0 {name=p2 lab=ibias}
C {lab_pin.sym} 830 -600 0 0 {name=p5 lab=vp}
C {lab_pin.sym} 890 -560 0 1 {name=p6 lab=VSS}
C {launcher.sym} 780 -970 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_dc.raw"
}
C {launcher.sym} 780 -930 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {title.sym} 160 -40 0 0 {name=l2 author="Luighi Viton"}
