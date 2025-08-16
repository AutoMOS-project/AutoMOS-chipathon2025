v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 2010 -1330 2810 -930 {flags=graph
y1=0
y2=4.4
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
rawfile=$netlist_dir/tb_biasgen_buffer_dc_tran.raw
rainbow=1
hilight_wave=-1
color="4 7 4"
node="vout
vp
vbg_buff"
dataset=-1}
B 2 2010 -480 2810 -80 {flags=graph
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
vbg_buff
vref_0p5v
vref_0p9v
vref_1v"
color="7 4 12 12 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen_buffer_dc_tran.raw
sim_type=tran
autoload=1}
B 2 2010 -930 2810 -530 {flags=graph
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
node="\\"Offset; VBG_buff vp -\\""
color=12
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen_buffer_dc_tran.raw
sim_type=dc
autoload=1}
B 2 2840 -1330 3640 -930 {flags=graph
y1=-4.7e-05
y2=-1.5e-05
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
rawfile=$netlist_dir/tb_biasgen_buffer_dc_tran.raw
rainbow=1
hilight_wave=-1
color="4 4"
node="vout
i(v1)"
dataset=-1}
N 920 -770 920 -720 {lab=VSS}
N 920 -750 990 -750 {lab=VSS}
N 990 -770 990 -750 {lab=VSS}
N 920 -880 920 -830 {lab=VDD}
N 990 -880 990 -830 {lab=vp}
N 740 -460 740 -420 {lab=VDD}
N 1120 -430 1120 -380 {lab=VBG_buff}
N 1120 -470 1120 -430 {lab=VBG_buff}
N 1110 -470 1120 -470 {lab=VBG_buff}
N 1180 -300 1260 -300 {lab=VREF_1V}
N 1180 -280 1260 -280 {lab=VREF_0P9V}
N 1180 -220 1260 -220 {lab=VREF_0P5V}
N 1110 -490 1120 -490 {lab=VBG_buff}
N 1470 -300 1470 -290 {lab=VREF_1V}
N 1400 -280 1400 -260 {lab=VREF_0P9V}
N 1340 -220 1340 -200 {lab=VREF_0P5V}
N 1260 -300 1470 -300 {lab=VREF_1V}
N 1260 -280 1400 -280 {lab=VREF_0P9V}
N 1260 -220 1340 -220 {lab=VREF_0P5V}
N 1120 -490 1120 -470 {lab=VBG_buff}
N 740 -790 760 -790 {lab=ENB}
N 1060 -880 1060 -830 {lab=EN}
N 1060 -770 1060 -750 {lab=VSS}
N 990 -750 1060 -750 {lab=VSS}
N 900 -410 920 -410 {lab=VSS}
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
N 980 -310 980 -290 {lab=ibias}
N 980 -410 980 -310 {lab=ibias}
N 780 -260 940 -260 {lab=#net1}
N 740 -210 980 -210 {lab=VSS}
C {gnd.sym} 920 -660 0 0 {name=l1 lab=GND}
C {vsource.sym} 920 -800 0 0 {name=V1 value=2 savecurrent=false}
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
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
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
write tb_biasgen_buffer_dc_tran.raw
set appendwrite

dc v2 0 $&VDD 0.1
write tb_biasgen_buffer_dc_tran.raw
set appendwrite

tran $&Tstep $&Tstop
write tb_biasgen_buffer_dc_tran.raw

.endc
"}
C {isource.sym} 740 -390 0 0 {name=I0 value=2u}
C {launcher.sym} 110 -1060 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_dc.raw"
}
C {launcher.sym} 110 -1020 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {libs/core_biasgen/biasgen_buffer/biasgen_buffer.sym} 860 -430 0 0 {name=xI_Buffer}
C {lab_pin.sym} 1060 -610 0 1 {name=p32 lab=VDD}
C {lab_pin.sym} 860 -510 0 0 {name=p33 lab=EN}
C {lab_pin.sym} 860 -490 0 0 {name=p34 lab=ENB}
C {lab_pin.sym} 980 -410 0 1 {name=p36 lab=ibias}
C {lab_pin.sym} 1120 -450 0 1 {name=p38 lab=VBG_buff}
C {lab_pin.sym} 900 -410 1 1 {name=p39 lab=VSS}
C {libs/core_biasgen/biasgen_resistor_divider/biasgen_resistor_divider.sym} 1080 -100 0 0 {name=xI_divider}
C {lab_pin.sym} 1100 -380 0 0 {name=p45 lab=VDD}
C {lab_pin.sym} 1120 -100 1 1 {name=p46 lab=VSS}
C {lab_pin.sym} 860 -550 0 0 {name=p10 lab=vp}
C {lab_wire.sym} 1180 -300 0 1 {name=p20 sig_type=std_logic lab=VREF_1V}
C {lab_wire.sym} 1180 -280 0 1 {name=p21 sig_type=std_logic lab=VREF_0P9V}
C {lab_wire.sym} 1180 -220 0 1 {name=p24 sig_type=std_logic lab=VREF_0P5V}
C {capa.sym} 1470 -260 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1470 -230 1 1 {name=p25 lab=VSS}
C {capa.sym} 1400 -230 0 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1400 -200 1 1 {name=p26 lab=VSS}
C {capa.sym} 1340 -170 0 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1340 -140 1 1 {name=p27 lab=VSS}
C {libs/core_biasgen/biasgen_inverter/biasgen_inverter.sym} 620 -750 0 0 {name=xINV}
C {lab_wire.sym} 760 -790 0 1 {name=p44 sig_type=std_logic lab=ENB}
C {lab_wire.sym} 670 -830 0 1 {name=p55 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 670 -750 2 0 {name=p56 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -790 0 0 {name=p1 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1060 -750 2 0 {name=p2 lab=VSS}
C {vsource.sym} 1060 -800 0 0 {name=V5 value=2 savecurrent=false}
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
