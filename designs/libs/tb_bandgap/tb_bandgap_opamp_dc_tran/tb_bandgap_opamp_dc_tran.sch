v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1290 -1250 2090 -850 {flags=graph
y1=0
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=5
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
rawfile=$netlist_dir/tb_bandgap_opamp_dc_tran.raw
rainbow=1
hilight_wave=-1
color="4 7"
node="vout
vp"
dataset=-1}
B 2 1290 -400 2090 0 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="vout
vp"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap_opamp_dc_tran.raw
sim_type=tran
autoload=1}
B 2 1290 -850 2090 -450 {flags=graph
y1=-4.8e-06
y2=0.31
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
node="\\"Offset; vout vp -\\""
color=12
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap_opamp_dc_tran.raw
sim_type=dc
autoload=1}
N 590 -440 590 -390 {lab=VSS}
N 590 -420 660 -420 {lab=VSS}
N 660 -440 660 -420 {lab=VSS}
N 590 -550 590 -500 {lab=VDD}
N 660 -550 660 -500 {lab=vp}
N 970 -500 1050 -500 {lab=vout}
N 1050 -500 1050 -480 {lab=vout}
N 760 -620 1000 -620 {lab=vout}
N 1000 -620 1000 -500 {lab=vout}
N 520 -440 520 -420 {lab=VSS}
N 520 -420 590 -420 {lab=VSS}
N 520 -540 520 -500 {lab=ibias}
N 760 -500 830 -500 {lab=vout}
N 760 -620 760 -500 {lab=vout}
C {gnd.sym} 590 -330 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1050 -500 0 1 {name=p4 lab=vout}
C {vsource.sym} 590 -470 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 660 -470 0 0 {name=V2 
value="0.8"}
C {vsource.sym} 590 -360 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 660 -420 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 590 -530 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 660 -530 0 0 {name=p9  lab=vp}
C {capa.sym} 1050 -450 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1050 -420 1 1 {name=p11 lab=VSS}
C {devices/code_shown.sym} 0 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -890 0 0 {name=NGSPICE only_toplevel=true
value="
.control
** Define input signal
let VDD=5.0
let Vstep=1.2
let T=20u
let td=1u
let trf=1u
let tON=0.5*T-trf

** Define transient params
let Tstop=2*T
let Tstep=0.05*T

** Set sources
alter @V1[DC] = $&VDD
alter @V2[PULSE]= [ 0 $&Vstep $&td $&trf $&trf $&tON $&T 2 ]

** Simulations
op
save all
write tb_bandgap_opamp_dc_tran.raw
set appendwrite

dc v2 0 5.0 0.1
write tb_bandgap_opamp_dc_tran.raw
set appendwrite

tran $&Tstep $&Tstop
write tb_bandgap_opamp_dc_tran.raw

.endc
"}
C {isource.sym} 520 -470 0 0 {name=I0 value=2u}
C {lab_pin.sym} 520 -520 2 1 {name=p12 lab=ibias}
C {lab_pin.sym} 890 -560 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 830 -520 0 0 {name=p2 lab=ibias}
C {lab_pin.sym} 830 -480 0 0 {name=p5 lab=vp}
C {lab_pin.sym} 890 -440 0 1 {name=p6 lab=VSS}
C {launcher.sym} 780 -850 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_dc.raw"
}
C {launcher.sym} 780 -810 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {libs/core_bandgap/bandgap_opamp/bandgap_opamp.sym} 830 -440 0 0 {name=x1}
C {title.sym} 160 -40 0 0 {name=l3 author="Luighi Viton"}
