v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 910 -930 1710 -530 {flags=graph
y1=0.37
y2=2
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
node="vbg
vdd
xi_bandgap.vbjt_ptat[0]
xi_bandgap.vbjt_ptat[2]
xi_bandgap.vbe"
color="4 7 13 12 13"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1
hilight_wave=2}
B 2 910 -530 1710 -130 {flags=graph
y1=1
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
node="vgb(FF); vbg % $netlist_dir/tb_bandgap_ff.raw
vgb(TT); vbg % $netlist_dir/tb_bandgap.raw
vgb(SS); vbg % $netlist_dir/tb_bandgap_ss.raw"
color="7 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1
hilight_wave=1}
B 2 1770 -520 2570 -120 {flags=graph
y1=0.98
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
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1
hilight_wave=0
color=13
node=xi_bandgap.vztc}
B 2 1770 -1320 2570 -920 {flags=graph
y1=7.7e-07
y2=2.8e-06
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
node="i(@q.xi_bandgap.xq1.q0[ie])
i(@q.xi_bandgap.xq2.q0[ie])
i(@q.xi_bandgap.xq3.q0[ie])"
color="4 8 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1}
B 2 1770 -920 2570 -520 {flags=graph
y1=3.4e-06
y2=4.4e-06
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
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1
hilight_wave=2
color=13
node=i(@m.xi_bandgap.xmpref12.m0[id])}
N 420 -490 420 -460 {lab=VSS}
N 420 -570 420 -550 {lab=VDD}
N 620 -410 640 -410 {lab=VSS}
N 720 -510 830 -510 {lab=VBG}
N 830 -450 830 -440 {lab=VSS}
C {lab_pin.sym} 620 -570 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 720 -510 0 1 {name=p2 lab=VBG}
C {lab_pin.sym} 620 -410 1 1 {name=p6 lab=VSS}
C {devices/code_shown.sym} 0 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -600 0 0 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.control
save all
op
dc temp -40 125 1 v1 2 5 0.25
write tb_bandgap.raw
.endc
"}
C {vsource.sym} 420 -520 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} 420 -570 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 420 -480 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {vsource.sym} 420 -430 0 0 {name=VSS_sense value=0 savecurrent=false}
C {gnd.sym} 420 -400 0 0 {name=l1 lab=GND}
C {launcher.sym} 180 -680 0 0 {name=h2
descr="Run PVT"
tclcommand="
set spicefile $netlist_dir/tb_bandgap.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/typical/ff/\} $spicefile
exec sed -i \{s/tb_bandgap.raw/tb_bandgap_ff.raw/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_bandgap_ff.raw/tb_bandgap_ss.raw/\} $spicefile
simulate
"}
C {capa.sym} 830 -480 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 830 -440 1 1 {name=p5 lab=VSS}
C {noconn.sym} 720 -470 0 1 {name=l2}
C {noconn.sym} 720 -450 0 1 {name=l3}
C {libs/core_bandgap/bandgap/bandgap.sym} 560 -550 0 0 {name=xI_bandgap}
C {title.sym} 160 -40 0 0 {name=l4 author="Luighi Viton (AutoMOS-Project)"}
