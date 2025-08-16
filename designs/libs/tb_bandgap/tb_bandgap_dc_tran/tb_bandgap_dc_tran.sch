v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 2680 -1080 4030 -280 {flags=graph
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
xlabmag=0.75
ylabmag=0.75
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
rawfile=$netlist_dir/tb_bandgap_dc_tran.raw
rainbow=1
hilight_wave=-1
color="4 7 20 6"
node="VBG
VDD
vpref
xi_bandgap.vpcas"
dataset=-1}
B 2 1240 -1080 2600 -680 {flags=graph
y1=-0.52
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-14
x2=2.1163236e-05
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="VBG
VDD
xi_bandgap.vstart_up
vpref
xi_bandgap.vbe
xi_bandgap.vpcas
xi_bandgap.vbjt_ptat[6]
vztc
xi_bandgap.vgs_ctat
xi_bandgap.vpcas_ctat"
color="7 4 13 18 18 11 12 4 21 19"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap_dc_tran.raw
sim_type=tran
autoload=1
hilight_wave=-1}
B 2 1240 -680 2600 -280 {flags=graph
y1=-8.3e-05
y2=4.6e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-14
x2=2.1163236e-05
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap_dc_tran.raw
sim_type=tran
autoload=1
hilight_wave=-1
color="4 15 7"
node="i(v1)
i(@m.xi_bandgap.xmpref1.m0[id])
i(@m.xi_bandgap.xmpref11.m0[id])"
rainbow=0}
N 680 -640 680 -610 {lab=VSS}
N 680 -720 680 -700 {lab=VDD}
N 840 -570 860 -570 {lab=VSS}
N 980 -670 1090 -670 {lab=VBG}
N 1090 -610 1090 -600 {lab=VSS}
N 760 -630 760 -610 {lab=vpref}
N 1040 -690 1150 -690 {lab=VZTC}
N 1150 -630 1150 -620 {lab=VSS}
N 940 -690 1040 -690 {lab=VZTC}
N 950 -320 950 -300 {lab=VSS}
N 950 -350 960 -350 {lab=VSS}
N 960 -350 960 -300 {lab=VSS}
N 950 -300 960 -300 {lab=VSS}
N 910 -400 910 -350 {lab=IZTC}
N 910 -400 950 -400 {lab=IZTC}
N 950 -400 950 -380 {lab=IZTC}
N 950 -610 950 -400 {lab=IZTC}
N 1050 -320 1050 -300 {lab=VSS}
N 1050 -350 1060 -350 {lab=VSS}
N 1060 -350 1060 -300 {lab=VSS}
N 1050 -300 1060 -300 {lab=VSS}
N 1010 -400 1010 -350 {lab=IPTAT}
N 1010 -400 1050 -400 {lab=IPTAT}
N 1050 -400 1050 -380 {lab=IPTAT}
N 1150 -320 1150 -300 {lab=VSS}
N 1150 -350 1160 -350 {lab=VSS}
N 1160 -350 1160 -300 {lab=VSS}
N 1150 -300 1160 -300 {lab=VSS}
N 1110 -400 1110 -350 {lab=ICTAT}
N 1110 -400 1150 -400 {lab=ICTAT}
N 1150 -400 1150 -380 {lab=ICTAT}
N 940 -610 950 -610 {lab=IZTC}
N 940 -630 1000 -630 {lab=IPTAT}
N 1000 -630 1000 -420 {lab=IPTAT}
N 1000 -420 1050 -420 {lab=IPTAT}
N 1050 -420 1050 -400 {lab=IPTAT}
N 940 -650 1020 -650 {lab=ICTAT}
N 1020 -650 1020 -440 {lab=ICTAT}
N 1020 -440 1150 -440 {lab=ICTAT}
N 1150 -440 1150 -400 {lab=ICTAT}
N 940 -670 980 -670 {lab=VBG}
C {devices/code_shown.sym} 10 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} -10 -950 0 0 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
*.option method=gear
.control
** Define input signal
let VDD=5.0
let Vstep=2.0
let T=80u
let td=1u
let trf=10u
let tON=0.5*T-trf

** Define transient params
let Tstop=2*T
* let Tstop=td+trf+tON
let Tstep=0.01*T

** Set sources
alter @V1[DC] = $&VDD
alter @V1[PULSE]= [ 0 $&Vstep $&td $&trf $&trf $&tON $&T 2 ]

** Simulations
op
save all
write tb_bandgap_dc_tran.raw
set appendwrite

dc v1 0 $&VDD 0.1
write tb_bandgap_dc_tran.raw
set appendwrite

tran $&Tstep $&Tstop
write tb_bandgap_dc_tran.raw

.endc
"}
C {launcher.sym} 780 -970 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_dc.raw"
}
C {launcher.sym} 780 -930 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {title.sym} 160 -40 0 0 {name=l2 author="Luighi Viton"}
C {vsource.sym} 680 -670 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} 680 -720 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 680 -630 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {vsource.sym} 680 -580 0 0 {name=VSS_sense value=0 savecurrent=false}
C {gnd.sym} 680 -550 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 840 -730 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 940 -670 0 1 {name=p2 lab=VBG}
C {lab_pin.sym} 840 -570 1 1 {name=p6 lab=VSS}
C {capa.sym} 1090 -640 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1090 -600 1 1 {name=p5 lab=VSS}
C {libs/core_bandgap/bandgap/bandgap.sym} 780 -710 0 0 {name=xI_bandgap}
C {lab_wire.sym} 760 -630 0 0 {name=p3 sig_type=std_logic lab=vpref}
C {lab_pin.sym} 940 -630 0 1 {name=p4 lab=IPTAT}
C {lab_pin.sym} 940 -610 0 1 {name=p8 lab=IZTC}
C {lab_pin.sym} 940 -650 0 1 {name=p9 lab=ICTAT}
C {lab_pin.sym} 940 -690 0 1 {name=p10 lab=VZTC}
C {capa.sym} 1150 -660 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1150 -620 1 1 {name=p11 lab=VSS}
C {symbols/nfet_05v0.sym} 930 -350 0 0 {name=M1
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
C {lab_wire.sym} 950 -300 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1030 -350 0 0 {name=M2
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
C {lab_wire.sym} 1050 -300 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1130 -350 0 0 {name=M3
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
C {lab_wire.sym} 1150 -300 0 0 {name=p14 sig_type=std_logic lab=VSS}
