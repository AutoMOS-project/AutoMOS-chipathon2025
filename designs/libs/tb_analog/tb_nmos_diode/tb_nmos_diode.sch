v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1210 -1510 2010 -1190 {flags=graph
y1=0.13
y2=1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
x2=125
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
color="7 4 12 4 10"
node="\\"Vgs1 (SS);vgs_03v3_1 % $netlist_dir/tb_nmos_diode_ss.raw\\"
\\"Vgs1 (TT);vgs_03v3_1 % $netlist_dir/tb_nmos_diode.raw\\"
\\"Vgs1 (FF);vgs_03v3_1 % $netlist_dir/tb_nmos_diode_ff.raw\\"
@m.xmnfet_03v3_1.m0[vth]
vov_03v3_1"
rawfile=$netlist_dir/tb_nmos_diode.raw
rainbow=0}
B 2 1210 -1190 2010 -870 {flags=graph
y1=0.43
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
x2=125
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
color="7 4 12 4 10"
node="\\"Vgs10 (SS);vgs_03v3_10 % $netlist_dir/tb_nmos_diode_ss.raw\\"
\\"Vgs10 (TT);vgs_03v3_10 % $netlist_dir/tb_nmos_diode.raw\\"
\\"Vgs10 (FF);vgs_03v3_10 % $netlist_dir/tb_nmos_diode_ff.raw\\"
@m.xmnfet_03v3_10.m0[vth]
vov_03v3_10"
rawfile=$netlist_dir/tb_nmos_diode.raw}
B 2 1210 -770 2010 -450 {flags=graph
y1=0.091
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
x2=125
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
color="7 4 12 4 10"
node="\\"Vgs1 (SS);vgs_05v0_1 % $netlist_dir/tb_nmos_diode_ss.raw\\"
\\"Vgs1 (TT);vgs_05v0_1 % $netlist_dir/tb_nmos_diode.raw\\"
\\"Vgs1 (FF);vgs_05v0_1 % $netlist_dir/tb_nmos_diode_ff.raw\\"
@m.xmnfet_05v0_1.m0[vth]
vov_05v0_1"
rawfile=$netlist_dir/tb_nmos_diode.raw
rainbow=0}
B 2 1210 -450 2010 -130 {flags=graph
y1=0.076
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
x2=125
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
color="7 4 12 4 10"
node="\\"Vgs10 (SS);vgs_05v0_10 % $netlist_dir/tb_nmos_diode_ss.raw\\"
\\"Vgs10 (TT);vgs_05v0_10 % $netlist_dir/tb_nmos_diode.raw\\"
\\"Vgs10 (FF);vgs_05v0_10 % $netlist_dir/tb_nmos_diode_ff.raw\\"
@m.xmnfet_05v0_10.m0[vth]
vov_05v0_10"
rawfile=$netlist_dir/tb_nmos_diode.raw}
N 1100 -1280 1100 -1210 {lab=GND}
N 1100 -1440 1100 -1340 {lab=vgs_03v3_1}
N 650 -790 650 -770 {lab=ibias}
N 650 -790 690 -790 {lab=ibias}
N 750 -790 790 -790 {lab=vsns}
N 790 -790 790 -770 {lab=vsns}
N 790 -710 790 -690 {lab=GND}
N 650 -690 790 -690 {lab=GND}
N 650 -700 650 -690 {lab=GND}
N 650 -710 650 -700 {lab=GND}
N 910 -710 910 -690 {lab=GND}
N 790 -690 910 -690 {lab=GND}
N 910 -790 910 -770 {lab=3V3}
N 1100 -940 1100 -870 {lab=GND}
N 1100 -1100 1100 -1000 {lab=vgs_03v3_10}
N 1060 -1360 1060 -1310 {lab=vgs_03v3_1}
N 1060 -1360 1100 -1360 {lab=vgs_03v3_1}
N 1100 -1310 1110 -1310 {lab=GND}
N 1110 -1310 1110 -1260 {lab=GND}
N 1100 -1260 1110 -1260 {lab=GND}
N 1060 -1020 1060 -970 {lab=vgs_03v3_10}
N 1060 -1020 1100 -1020 {lab=vgs_03v3_10}
N 1100 -970 1110 -970 {lab=GND}
N 1110 -970 1110 -920 {lab=GND}
N 1100 -920 1110 -920 {lab=GND}
N 1100 -540 1100 -470 {lab=GND}
N 1100 -700 1100 -600 {lab=vgs_05v0_1}
N 1100 -200 1100 -130 {lab=GND}
N 1100 -360 1100 -260 {lab=vgs_05v0_10}
N 1060 -620 1060 -570 {lab=vgs_05v0_1}
N 1060 -620 1100 -620 {lab=vgs_05v0_1}
N 1100 -570 1110 -570 {lab=GND}
N 1110 -570 1110 -520 {lab=GND}
N 1100 -520 1110 -520 {lab=GND}
N 1060 -280 1060 -230 {lab=vgs_05v0_10}
N 1060 -280 1100 -280 {lab=vgs_05v0_10}
N 1100 -230 1110 -230 {lab=GND}
N 1110 -230 1110 -180 {lab=GND}
N 1100 -180 1110 -180 {lab=GND}
C {isource.sym} 650 -740 2 0 {name=I0 value=1u}
C {res.sym} 720 -790 1 0 {name=Rsense
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 790 -740 0 0 {name=vsense value=0 savecurrent=false}
C {gnd.sym} 650 -690 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 650 -790 0 0 {name=p1 sig_type=std_logic lab=ibias}
C {lab_pin.sym} 790 -790 2 0 {name=p2 sig_type=std_logic lab=vsns}
C {vsource.sym} 910 -740 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} 910 -790 0 0 {name=p22 sig_type=std_logic lab=3V3}
C {cccs.sym} 1100 -1470 0 0 {name=F1 vnam=vsense value=1}
C {gnd.sym} 1100 -1500 1 0 {name=l2 lab=GND}
C {cccs.sym} 1100 -1130 0 0 {name=F2 vnam=vsense value=8}
C {gnd.sym} 1100 -1160 1 0 {name=l3 lab=GND}
C {gnd.sym} 1100 -1210 0 0 {name=l4 lab=GND}
C {gnd.sym} 1100 -870 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 0 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -560 0 0 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.control 
save all 
+ @m.xmnfet_03v3_1.m0[vth] @m.xmnfet_03v3_1.m0[gm] @m.xmnfet_03v3_1.m0[vdsat]
+ @m.xmnfet_03v3_10.m0[vth] @m.xmnfet_03v3_10.m0[gm] @m.xmnfet_03v3_10.m0[vdsat]
+ @m.xmnfet_05v0_1.m0[vth] @m.xmnfet_05v0_1.m0[gm] @m.xmnfet_05v0_1.m0[vdsat]
+ @m.xmnfet_05v0_10.m0[vth] @m.xmnfet_05v0_10.m0[gm] @m.xmnfet_05v0_10.m0[vdsat]

op
dc temp -40 125 1

let Vov_03v3_1=vgs_03v3_1-@m.xmnfet_03v3_1.m0[vth]
let Vov_03v3_10=vgs_03v3_10-@m.xmnfet_03v3_10.m0[vth]
let Vov_05v0_1=vgs_05v0_1-@m.xmnfet_05v0_1.m0[vth]
let Vov_05v0_10=vgs_05v0_10-@m.xmnfet_05v0_10.m0[vth]

write tb_nmos_diode.raw
.endc
"}
C {lab_wire.sym} 1100 -1390 0 0 {name=p3 sig_type=std_logic lab=vgs_03v3_1}
C {lab_wire.sym} 1100 -1050 0 0 {name=p4 sig_type=std_logic lab=vgs_03v3_10}
C {launcher.sym} 410 -630 0 0 {name=h2
descr="Run PVT"
tclcommand="
set spicefile $netlist_dir/tb_nmos_diode.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/typical/ff/\} $spicefile
exec sed -i \{s/tb_nmos_diode.raw/tb_nmos_diode_ff.raw/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_nmos_diode_ff.raw/tb_nmos_diode_ss.raw/\} $spicefile
simulate
"}
C {symbols/nfet_03v3.sym} 1080 -1310 0 0 {name=Mnfet_03v3_1
L=1u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1080 -970 0 0 {name=Mnfet_03v3_10
L=1u
W=1u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {cccs.sym} 1100 -730 0 0 {name=F3 vnam=vsense value=1}
C {gnd.sym} 1100 -760 1 0 {name=l6 lab=GND}
C {cccs.sym} 1100 -390 0 0 {name=F4 vnam=vsense value=8}
C {gnd.sym} 1100 -420 1 0 {name=l7 lab=GND}
C {gnd.sym} 1100 -470 0 0 {name=l8 lab=GND}
C {gnd.sym} 1100 -130 0 0 {name=l9 lab=GND}
C {lab_wire.sym} 1100 -650 0 0 {name=p5 sig_type=std_logic lab=vgs_05v0_1}
C {lab_wire.sym} 1100 -310 0 0 {name=p6 sig_type=std_logic lab=vgs_05v0_10}
C {symbols/nfet_05v0.sym} 1080 -570 0 0 {name=Mnfet_05v0_1
L=1u
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
C {symbols/nfet_05v0.sym} 1080 -230 0 0 {name=Mnfet_05v0_10
L=1u
W=8u
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
C {title.sym} 160 -40 0 0 {name=l10 author="Luighi Viton"}
