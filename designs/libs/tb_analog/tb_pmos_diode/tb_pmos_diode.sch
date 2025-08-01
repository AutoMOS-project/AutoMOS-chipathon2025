v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1210 -1510 2010 -1190 {flags=graph
y1=0.21
y2=1.2
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
node="\\"Vgs1 (SS);vgs_03v3_1 % $netlist_dir/tb_pmos_diode_ss.raw\\"
\\"Vgs1 (TT);vgs_03v3_1 % $netlist_dir/tb_pmos_diode.raw\\"
\\"Vgs1 (FF);vgs_03v3_1 % $netlist_dir/tb_pmos_diode_ff.raw\\"
@m.xmpfet_03v3_1.m0[vth]
vov_03v3_1"
rawfile=$netlist_dir/tb_pmos_diode.raw
rainbow=0}
B 2 1210 -1190 2010 -870 {flags=graph
y1=0.2
y2=1.2
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
node="\\"Vgs10 (SS);vgs_03v3_10 % $netlist_dir/tb_pmos_diode_ss.raw\\"
\\"Vgs10 (TT);vgs_03v3_10 % $netlist_dir/tb_pmos_diode.raw\\"
\\"Vgs10 (FF);vgs_03v3_10 % $netlist_dir/tb_pmos_diode_ff.raw\\"
@m.xmpfet_03v3_10.m0[vth]
vov_03v3_10"
rawfile=$netlist_dir/tb_pmos_diode.raw}
B 2 1210 -770 2010 -450 {flags=graph
y1=0.24
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
node="\\"Vgs1 (SS);vgs_05v0_1 % $netlist_dir/tb_pmos_diode_ss.raw\\"
\\"Vgs1 (TT);vgs_05v0_1 % $netlist_dir/tb_pmos_diode.raw\\"
\\"Vgs1 (FF);vgs_05v0_1 % $netlist_dir/tb_pmos_diode_ff.raw\\"
@m.xmpfet_05v0_1.m0[vth]
vov_05v0_1"
rawfile=$netlist_dir/tb_pmos_diode.raw
rainbow=0}
B 2 1210 -450 2010 -130 {flags=graph
y1=0.23
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
node="\\"Vgs10 (SS);vgs_05v0_10 % $netlist_dir/tb_pmos_diode_ss.raw\\"
\\"Vgs10 (TT);vgs_05v0_10 % $netlist_dir/tb_pmos_diode.raw\\"
\\"Vgs10 (FF);vgs_05v0_10 % $netlist_dir/tb_pmos_diode_ff.raw\\"
@m.xmpfet_05v0_10.m0[vth]
vov_05v0_10"
rawfile=$netlist_dir/tb_pmos_diode.raw}
N 1100 -1280 1100 -1210 {lab=GND}
N 1100 -1440 1100 -1340 {lab=vgs_03v3_1}
N 660 -820 660 -800 {lab=ibias}
N 660 -820 700 -820 {lab=ibias}
N 760 -820 800 -820 {lab=vsns}
N 800 -820 800 -800 {lab=vsns}
N 800 -740 800 -720 {lab=GND}
N 660 -720 800 -720 {lab=GND}
N 660 -730 660 -720 {lab=GND}
N 660 -740 660 -730 {lab=GND}
N 920 -740 920 -720 {lab=GND}
N 800 -720 920 -720 {lab=GND}
N 920 -820 920 -800 {lab=3V3}
N 1100 -940 1100 -870 {lab=GND}
N 1100 -1100 1100 -1000 {lab=vgs_03v3_10}
N 1100 -1310 1110 -1310 {lab=vgs_03v3_1}
N 1100 -970 1110 -970 {lab=vgs_03v3_10}
N 1100 -540 1100 -470 {lab=GND}
N 1100 -700 1100 -600 {lab=vgs_05v0_1}
N 1100 -200 1100 -130 {lab=GND}
N 1100 -360 1100 -260 {lab=vgs_05v0_10}
N 1100 -570 1110 -570 {lab=vgs_05v0_1}
N 1100 -230 1110 -230 {lab=vgs_05v0_10}
N 1110 -1360 1110 -1310 {lab=vgs_03v3_1}
N 1100 -1360 1110 -1360 {lab=vgs_03v3_1}
N 1060 -1310 1060 -1250 {lab=GND}
N 1060 -1250 1100 -1250 {lab=GND}
N 1110 -1020 1110 -970 {lab=vgs_03v3_10}
N 1100 -1020 1110 -1020 {lab=vgs_03v3_10}
N 1060 -970 1060 -900 {lab=GND}
N 1060 -900 1100 -900 {lab=GND}
N 1060 -570 1060 -500 {lab=GND}
N 1060 -500 1100 -500 {lab=GND}
N 1110 -630 1110 -570 {lab=vgs_05v0_1}
N 1100 -630 1110 -630 {lab=vgs_05v0_1}
N 1110 -290 1110 -230 {lab=vgs_05v0_10}
N 1100 -290 1110 -290 {lab=vgs_05v0_10}
N 1060 -230 1060 -160 {lab=GND}
N 1060 -160 1100 -160 {lab=GND}
C {isource.sym} 660 -770 2 0 {name=I0 value=1u}
C {res.sym} 730 -820 1 0 {name=Rsense
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 800 -770 0 0 {name=vsense value=0 savecurrent=false}
C {gnd.sym} 660 -720 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 660 -820 0 0 {name=p1 sig_type=std_logic lab=ibias}
C {lab_pin.sym} 800 -820 2 0 {name=p2 sig_type=std_logic lab=vsns}
C {vsource.sym} 920 -770 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} 920 -820 0 0 {name=p22 sig_type=std_logic lab=3V3}
C {cccs.sym} 1100 -1470 0 0 {name=F1 vnam=vsense value=1}
C {gnd.sym} 1100 -1500 1 0 {name=l2 lab=GND}
C {cccs.sym} 1100 -1130 0 0 {name=F2 vnam=vsense value=8}
C {gnd.sym} 1100 -1160 1 0 {name=l3 lab=GND}
C {gnd.sym} 1100 -1210 0 0 {name=l4 lab=GND}
C {gnd.sym} 1100 -870 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 0 -220 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 10 -590 0 0 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.control 
save all 
+ @m.xmpfet_03v3_1.m0[vth] @m.xmpfet_03v3_1.m0[gm] @m.xmpfet_03v3_1.m0[vdsat]
+ @m.xmpfet_03v3_10.m0[vth] @m.xmpfet_03v3_10.m0[gm] @m.xmpfet_03v3_10.m0[vdsat]
+ @m.xmpfet_05v0_1.m0[vth] @m.xmpfet_05v0_1.m0[gm] @m.xmpfet_05v0_1.m0[vdsat]
+ @m.xmpfet_05v0_10.m0[vth] @m.xmpfet_05v0_10.m0[gm] @m.xmpfet_05v0_10.m0[vdsat]

op
dc temp -40 125 1

let Vov_03v3_1=vgs_03v3_1-@m.xmpfet_03v3_1.m0[vth]
let Vov_03v3_10=vgs_03v3_10-@m.xmpfet_03v3_10.m0[vth]
let Vov_05v0_1=vgs_05v0_1-@m.xmpfet_05v0_1.m0[vth]
let Vov_05v0_10=vgs_05v0_10-@m.xmpfet_05v0_10.m0[vth]

write tb_pmos_diode.raw
.endc
"}
C {lab_wire.sym} 1100 -1390 0 0 {name=p3 sig_type=std_logic lab=vgs_03v3_1}
C {lab_wire.sym} 1100 -1050 0 0 {name=p4 sig_type=std_logic lab=vgs_03v3_10}
C {launcher.sym} 420 -660 0 0 {name=h2
descr="Run PVT"
tclcommand="
set spicefile $netlist_dir/tb_pmos_diode.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/typical/ff/\} $spicefile
exec sed -i \{s/tb_pmos_diode.raw/tb_pmos_diode_ff.raw/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_pmos_diode_ff.raw/tb_pmos_diode_ss.raw/\} $spicefile
simulate
"}
C {cccs.sym} 1100 -730 0 0 {name=F3 vnam=vsense value=1}
C {gnd.sym} 1100 -760 1 0 {name=l6 lab=GND}
C {cccs.sym} 1100 -390 0 0 {name=F4 vnam=vsense value=8}
C {gnd.sym} 1100 -420 1 0 {name=l7 lab=GND}
C {gnd.sym} 1100 -470 0 0 {name=l8 lab=GND}
C {gnd.sym} 1100 -130 0 0 {name=l9 lab=GND}
C {lab_wire.sym} 1100 -650 0 0 {name=p5 sig_type=std_logic lab=vgs_05v0_1}
C {lab_wire.sym} 1100 -310 0 0 {name=p6 sig_type=std_logic lab=vgs_05v0_10}
C {symbols/pfet_03v3.sym} 1080 -1310 0 0 {name=Mpfet_03v3_1
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1080 -970 0 0 {name=Mpfet_03v3_10
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 1080 -570 0 0 {name=Mpfet_05v0_1
L=0.8u
W=3.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 1080 -230 0 0 {name=Mpfet_05v0_10
L=0.8u
W=3.2u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {title.sym} 160 -40 0 0 {name=l10 author="Luighi Viton"}
