v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1210 -930 2010 -530 {flags=graph
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
xlabmag=0.75
ylabmag=0.75
node="vbg
vdd
xi_bandgap.vbjt_ptat[0]
xi_bandgap.vbjt_ptat[6]
xi_bandgap.vbe"
color="4 7 13 12 13"
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1
hilight_wave=2
dataset=0}
B 2 1210 -530 2010 -130 {flags=graph
y1=1.1875395
y2=1.2090144
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
x2=125
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
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
hilight_wave=2}
B 2 2070 -520 2870 -120 {flags=graph
y1=1.1
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
x2=125
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1
hilight_wave=0
color="7 13 12"
node="vztc (ff); vztc % $\{netlist_dir\}/tb_bandgap_ff.raw
vztc (tt); vztc % $\{netlist_dir\}/tb_bandgap.raw
vztc (ss); vztc % $\{netlist_dir\}/tb_bandgap_ss.raw"
dataset=-1}
B 2 2070 -1320 2870 -920 {flags=graph
y1=1.3e-06
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
ylabmag=0.75
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
B 2 2070 -920 2870 -520 {flags=graph
y1=1.3e-06
y2=5.5e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
x2=125
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1
hilight_wave=2
color="13 7 7 12"
node="i(@m.xi_bandgap.xmpref12.m0[id])
ctat_m (tt);i(@m.xi_bandgap.xmpref15.m0[id]) % $netlist_dir/tb_bandgap.raw
ctat_m (ss);i(@m.xi_bandgap.xmpref15.m0[id]) % $netlist_dir/tb_bandgap_ss.raw
i(@m.xi_bandgap.xmpref17.m0[id])"}
B 2 2900 -1320 3700 -920 {flags=graph
y1=-9.7e-05
y2=-4e-05
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
ylabmag=0.75
node="IQ (FF); i(v1) % $netlist_dir/tb_bandgap_ff.raw
IQ (TT); i(v1) % $netlist_dir/tb_bandgap.raw
IQ (SS); i(v1) % $netlist_dir/tb_bandgap_ss.raw"
color="5 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1}
B 2 2900 -920 3700 -520 {flags=graph
y1=1.1e-06
y2=3.4e-06
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
ylabmag=0.75
node="IPTAT (SS);i(@m.xm2.m0[id]) % $netlist_dir/tb_bandgap_ss.raw
IPTAT (TT);i(@m.xm2.m0[id]) % $netlist_dir/tb_bandgap.raw
IPTAT (FF);i(@m.xm2.m0[id]) % $netlist_dir/tb_bandgap_ff.raw"
color="6 4 5"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1}
B 2 2900 -520 3700 -120 {flags=graph
y1=2.9e-06
y2=5.5e-06
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
ylabmag=0.75
node="CPTAT (SS);i(@m.xm3.m0[id]) % $netlist_dir/tb_bandgap_ss.raw
CPTAT (TT);i(@m.xm3.m0[id]) % $netlist_dir/tb_bandgap.raw
CPTAT (FF);i(@m.xm3.m0[id]) % $netlist_dir/tb_bandgap_ff.raw"
color="6 4 5"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1}
B 2 3750 -1320 4550 -920 {flags=graph
y1=5.3e-06
y2=9.4e-06
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
ylabmag=0.75
node="IZTC (SS);i(@m.xm1.m0[id]) % $netlist_dir/tb_bandgap_ss.raw
IZTC (TT);i(@m.xm1.m0[id]) % $netlist_dir/tb_bandgap.raw
IZTC (FF);i(@m.xm1.m0[id]) % $netlist_dir/tb_bandgap_ff.raw"
color="6 4 5"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1}
N 420 -490 420 -460 {lab=VSS}
N 420 -570 420 -550 {lab=VDD}
N 600 -410 620 -410 {lab=VSS}
N 740 -510 850 -510 {lab=VBG}
N 850 -450 850 -440 {lab=VSS}
N 520 -470 520 -450 {lab=vpref}
N 800 -530 910 -530 {lab=VZTC}
N 910 -470 910 -460 {lab=VSS}
N 700 -530 800 -530 {lab=VZTC}
N 710 -160 710 -140 {lab=VSS}
N 710 -190 720 -190 {lab=VSS}
N 720 -190 720 -140 {lab=VSS}
N 710 -140 720 -140 {lab=VSS}
N 670 -240 670 -190 {lab=IZTC}
N 670 -240 710 -240 {lab=IZTC}
N 710 -240 710 -220 {lab=IZTC}
N 710 -450 710 -240 {lab=IZTC}
N 810 -160 810 -140 {lab=VSS}
N 810 -190 820 -190 {lab=VSS}
N 820 -190 820 -140 {lab=VSS}
N 810 -140 820 -140 {lab=VSS}
N 770 -240 770 -190 {lab=IPTAT}
N 770 -240 810 -240 {lab=IPTAT}
N 810 -240 810 -220 {lab=IPTAT}
N 910 -160 910 -140 {lab=VSS}
N 910 -190 920 -190 {lab=VSS}
N 920 -190 920 -140 {lab=VSS}
N 910 -140 920 -140 {lab=VSS}
N 870 -240 870 -190 {lab=ICTAT}
N 870 -240 910 -240 {lab=ICTAT}
N 910 -240 910 -220 {lab=ICTAT}
N 700 -450 710 -450 {lab=IZTC}
N 700 -470 760 -470 {lab=IPTAT}
N 760 -470 760 -260 {lab=IPTAT}
N 760 -260 810 -260 {lab=IPTAT}
N 810 -260 810 -240 {lab=IPTAT}
N 700 -490 780 -490 {lab=ICTAT}
N 780 -490 780 -280 {lab=ICTAT}
N 780 -280 910 -280 {lab=ICTAT}
N 910 -280 910 -240 {lab=ICTAT}
N 700 -510 740 -510 {lab=VBG}
C {lab_pin.sym} 600 -570 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 700 -510 0 1 {name=p2 lab=VBG}
C {lab_pin.sym} 600 -410 1 1 {name=p6 lab=VSS}
C {devices/code_shown.sym} 0 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -600 0 0 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.nodeset v(xI_bandgap.vpref)=1
.nodeset v(xI_bandgap.vstart_up)=1
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
C {capa.sym} 850 -480 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 850 -440 1 1 {name=p5 lab=VSS}
C {libs/core_bandgap/bandgap/bandgap.sym} 540 -550 0 0 {name=xI_bandgap}
C {title.sym} 160 -40 0 0 {name=l4 author="Luighi Viton (AutoMOS-Project)"}
C {launcher.sym} 180 -730 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {lab_wire.sym} 520 -470 0 0 {name=p3 sig_type=std_logic lab=vpref}
C {lab_pin.sym} 700 -470 0 1 {name=p4 lab=IPTAT}
C {lab_pin.sym} 700 -450 0 1 {name=p8 lab=IZTC}
C {lab_pin.sym} 700 -490 0 1 {name=p9 lab=ICTAT}
C {lab_pin.sym} 700 -530 0 1 {name=p10 lab=VZTC}
C {capa.sym} 910 -500 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 910 -460 1 1 {name=p11 lab=VSS}
C {symbols/nfet_05v0.sym} 690 -190 0 0 {name=M1
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
C {lab_wire.sym} 710 -140 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 790 -190 0 0 {name=M2
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
C {lab_wire.sym} 810 -140 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 890 -190 0 0 {name=M3
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
C {lab_wire.sym} 910 -140 0 0 {name=p14 sig_type=std_logic lab=VSS}
