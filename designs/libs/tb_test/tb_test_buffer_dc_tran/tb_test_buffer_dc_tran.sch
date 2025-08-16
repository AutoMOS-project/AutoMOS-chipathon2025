v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1370 2440 -970 {flags=graph
y1=0
y2=5
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
rawfile=$netlist_dir/tb_test_buffer_dc_tran.raw
rainbow=1
hilight_wave=-1
color="4 7 4"
node="vout
vp
vbg_buff"
dataset=-1}
B 2 1640 -520 2440 -120 {flags=graph
y1=-0.00076
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
node="vp
vout"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_test_buffer_dc_tran.raw
sim_type=tran
autoload=1}
B 2 1640 -970 2440 -570 {flags=graph
y1=-0.78
y2=0.00037
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
node="\\"Offset; Vout vp -\\""
color=12
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_test_buffer_dc_tran.raw
sim_type=dc
autoload=1}
B 2 2470 -1370 3270 -970 {flags=graph
y1=-0.00012
y2=-4.2e-05
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
rawfile=$netlist_dir/tb_test_buffer_dc_tran.raw
rainbow=1
hilight_wave=-1
color=4
node=i(v1)
dataset=-1}
N 920 -770 920 -720 {lab=VSS}
N 920 -750 990 -750 {lab=VSS}
N 990 -770 990 -750 {lab=VSS}
N 920 -880 920 -830 {lab=VDD}
N 990 -880 990 -830 {lab=vp}
N 740 -460 740 -420 {lab=VDD}
N 740 -790 760 -790 {lab=ENB}
N 1060 -880 1060 -830 {lab=EN}
N 1060 -770 1060 -750 {lab=VSS}
N 990 -750 1060 -750 {lab=VSS}
N 740 -230 740 -210 {lab=VSS}
N 730 -260 740 -260 {lab=VSS}
N 730 -260 730 -210 {lab=VSS}
N 730 -210 740 -210 {lab=VSS}
N 780 -310 780 -260 {lab=#net1}
N 740 -310 780 -310 {lab=#net1}
N 740 -310 740 -290 {lab=#net1}
N 740 -360 740 -310 {lab=#net1}
N 980 -230 980 -210 {lab=VSS}
N 980 -260 990 -260 {lab=VSS}
N 990 -260 990 -210 {lab=VSS}
N 980 -210 990 -210 {lab=VSS}
N 980 -310 980 -290 {lab=#net2}
N 980 -410 980 -310 {lab=#net2}
N 780 -260 940 -260 {lab=#net1}
N 740 -210 980 -210 {lab=VSS}
N 1080 -470 1090 -470 {lab=VOUT}
N 1200 -470 1200 -430 {lab=VOUT}
N 1130 -470 1200 -470 {lab=VOUT}
N 1130 -370 1130 -330 {lab=VSS}
N 1130 -330 1200 -330 {lab=VSS}
N 1200 -370 1200 -330 {lab=VSS}
N 1000 -410 1020 -410 {lab=VSS}
N 870 -490 940 -490 {lab=VOUT}
N 870 -590 870 -490 {lab=VOUT}
N 870 -600 1090 -600 {lab=VOUT}
N 870 -600 870 -590 {lab=VOUT}
N 1090 -600 1090 -470 {lab=VOUT}
N 1130 -470 1130 -430 {lab=VOUT}
N 1090 -470 1130 -470 {lab=VOUT}
C {gnd.sym} 920 -660 0 0 {name=l1 lab=GND}
C {vsource.sym} 920 -800 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 990 -800 0 0 {name=V2 
value="1.2"}
C {vsource.sym} 920 -690 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_wire.sym} 920 -860 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 990 -860 0 0 {name=p9  lab=vp}
C {devices/code_shown.sym} 30 -230 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} 20 -910 0 0 {name=NGSPICE only_toplevel=true
value="
*.options savecurrents
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
write tb_test_buffer_dc_tran.raw
set appendwrite

dc v2 0 $&VDD 0.1
write tb_test_buffer_dc_tran.raw
set appendwrite

tran $&Tstep $&Tstop
write tb_test_buffer_dc_tran.raw

.endc
"}
C {isource.sym} 740 -390 0 0 {name=I0 value=10u}
C {launcher.sym} 110 -1060 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_dc.raw"
}
C {launcher.sym} 110 -1020 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {libs/core_biasgen/biasgen_inverter/biasgen_inverter.sym} 620 -750 0 0 {name=xINV}
C {lab_wire.sym} 760 -790 0 1 {name=p44 sig_type=std_logic lab=ENB}
C {lab_wire.sym} 670 -830 0 1 {name=p55 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 670 -750 2 0 {name=p56 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -790 0 0 {name=p1 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1060 -750 2 0 {name=p2 lab=VSS}
C {vsource.sym} 1060 -800 0 0 {name=V5 value=5 savecurrent=false}
C {lab_wire.sym} 1060 -860 0 0 {name=p3  lab=EN}
C {symbols/nfet_05v0.sym} 760 -260 0 1 {name=M1
L=2u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {lab_wire.sym} 740 -210 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 960 -260 0 0 {name=M2
L=2u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {lab_wire.sym} 980 -210 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 740 -450 0 0 {name=p5  lab=VDD}
C {lab_pin.sym} 1000 -530 0 1 {name=p6 lab=VDD}
C {lab_pin.sym} 940 -530 0 0 {name=p7 lab=EN}
C {lab_pin.sym} 940 -510 0 0 {name=p11 lab=ENB}
C {lab_pin.sym} 1200 -470 0 1 {name=p13 lab=VOUT}
C {lab_pin.sym} 1000 -410 1 1 {name=p14 lab=VSS}
C {lab_pin.sym} 940 -450 0 0 {name=p15 lab=vp}
C {capa.sym} 1200 -400 0 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1130 -400 0 0 {name=R2
value=1Meg
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1200 -330 2 0 {name=p17 lab=VSS}
C {libs/core_test/test_buffer/test_buffer.sym} 940 -410 0 0 {name=x2}
C {title.sym} 160 -40 0 0 {name=l6 author="Luighi Viton (AutoMOS-Project)"}
