v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1310 -930 2110 -530 {flags=graph
y1=0
y2=5
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0.5895691
x2=5.0132491
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
rawfile=$netlist_dir/tb_test_tg_dc_tran.raw
rainbow=1
hilight_wave=-1
color="4 7"
node="vout
vp"
dataset=-1}
B 2 1310 -510 2110 -110 {flags=graph
y1=700
y2=1200
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0.5895691
x2=5.0132491
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
rawfile=$netlist_dir/tb_test_tg_dc_tran.raw
rainbow=1
hilight_wave=-1
dataset=-1
color=4
node="Resistance; 1 i(@r2[i]) vp vout - / /"}
N 1000 -440 1000 -390 {lab=VSS}
N 1000 -420 1070 -420 {lab=VSS}
N 1070 -440 1070 -420 {lab=VSS}
N 1000 -550 1000 -500 {lab=VDD}
N 1070 -550 1070 -500 {lab=vp}
N 1140 -550 1140 -500 {lab=EN}
N 1140 -440 1140 -420 {lab=VSS}
N 1070 -420 1140 -420 {lab=VSS}
N 1140 -750 1140 -710 {lab=VOUT}
N 1070 -750 1140 -750 {lab=VOUT}
N 1070 -650 1070 -610 {lab=VSS}
N 1070 -610 1140 -610 {lab=VSS}
N 1140 -650 1140 -610 {lab=VSS}
N 1070 -750 1070 -710 {lab=VOUT}
N 1030 -750 1070 -750 {lab=VOUT}
C {devices/code_shown.sym} 30 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 20 -910 0 0 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.control
** Define input signal
let VDD=5.0
let Vstep=1.2
let T=20u
let td=4u
let trf=1u
let tON=0.5*T-trf

** Define transient params
let Tstop=2*T
let Tstep=0.05*T

** Set sources
alter @V1[DC] = $&VDD
alter @V5[DC] = $&VDD
alter @V2[PULSE]= [ 0 $&Vstep $&td $&trf $&trf $&tON $&T 2 ]
alter @V5[PULSE]= [ 0 $&VDD 0 $&trf $&trf 1 1 1 ]

** Simulations
op
save all
write tb_test_tg_dc_tran.raw
set appendwrite

dc v2 0 $&VDD 0.01
write tb_test_tg_dc_tran.raw
set appendwrite

tran $&Tstep $&Tstop
write tb_test_tg_dc_tran.raw

.endc
"}
C {title.sym} 160 -40 0 0 {name=l6 author="Luighi Viton (AutoMOS-Project)"}
C {libs/core_test/test_tg/test_tg.sym} 890 -710 0 0 {name=x1}
C {gnd.sym} 1000 -330 0 0 {name=l1 lab=GND}
C {vsource.sym} 1000 -470 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 1070 -470 0 0 {name=V2 
value="1.2"}
C {vsource.sym} 1000 -360 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_wire.sym} 1000 -530 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 1070 -530 0 0 {name=p9  lab=vp}
C {lab_pin.sym} 1140 -420 2 0 {name=p2 lab=VSS}
C {vsource.sym} 1140 -470 0 0 {name=V5 value=5 savecurrent=false}
C {lab_wire.sym} 1140 -530 0 0 {name=p3  lab=EN}
C {lab_pin.sym} 1140 -750 0 1 {name=p13 lab=VOUT}
C {capa.sym} 1140 -680 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1070 -680 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1140 -610 2 0 {name=p17 lab=VSS}
C {lab_wire.sym} 960 -790 0 0 {name=p4  lab=EN}
C {lab_wire.sym} 890 -750 0 0 {name=p5  lab=vp}
C {lab_wire.sym} 930 -710 3 0 {name=p6  lab=VDD}
C {lab_wire.sym} 990 -710 3 0 {name=p7 sig_type=std_logic lab=VSS}
