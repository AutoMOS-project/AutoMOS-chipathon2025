v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1950 -1220 2750 -820 {flags=graph
y1=1.1901391
y2=1.2116139
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-39.999996
x2=125.00003
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="vgb(FF); vbg % $netlist_dir/tb_biasgen_ff.raw
vgb(TT); vbg % $netlist_dir/tb_biasgen.raw
vgb(SS); vbg % $netlist_dir/tb_biasgen_ss.raw"
color="7 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen.raw
sim_type=dc
autoload=1
hilight_wave=2}
B 2 2810 -1630 3610 -1230 {flags=graph
y1=0.994
y2=1.004
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-39.999996
x2=125.00003
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="vref_1V(FF); vref_1V % $netlist_dir/tb_biasgen_ff.raw
vref_1V(TT); vref_1V % $netlist_dir/tb_biasgen.raw
vref_1V(SS); vref_1V % $netlist_dir/tb_biasgen_ss.raw"
color="7 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen.raw
sim_type=dc
autoload=1
hilight_wave=2}
B 2 2810 -1230 3610 -830 {flags=graph
y1=0.896
y2=0.906
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-39.999996
x2=125.00003
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="vref_0P9V(FF); vref_0P9V % $netlist_dir/tb_biasgen_ff.raw
vref_0P9V(TT); vref_0P9V % $netlist_dir/tb_biasgen.raw
vref_0P9V(SS); vref_0P9V % $netlist_dir/tb_biasgen_ss.raw"
color="7 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen.raw
sim_type=dc
autoload=1
hilight_wave=2}
B 2 2810 -830 3610 -430 {flags=graph
y1=0.49565728
y2=0.50450464
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-39.999996
x2=125.00003
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="vref_0P5V(FF); vref_0P5V % $netlist_dir/tb_biasgen_ff.raw
vref_0P5V(TT); vref_0P5V % $netlist_dir/tb_biasgen.raw
vref_0P5V(SS); vref_0P5V % $netlist_dir/tb_biasgen_ss.raw"
color="7 4 12"
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen.raw
sim_type=dc
autoload=1
hilight_wave=2
dataset=-1}
B 2 3720 -1630 4520 -1230 {flags=graph
y1=3.8e-06
y2=1.8e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-39.999996
x2=125.00003
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="IPTAT (SS);i(@m.xmptat_10.m0[id]) % $netlist_dir/tb_biasgen_ss.raw
IPTAT (TT);i(@m.xmptat_10.m0[id]) % $netlist_dir/tb_biasgen.raw
IPTAT (FF);i(@m.xmptat_10.m0[id]) % $netlist_dir/tb_biasgen_ff.raw"
color="7 4 12"
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen.raw
sim_type=dc
autoload=1
hilight_wave=-1
dataset=-1}
B 2 3720 -1220 4520 -820 {flags=graph
y1=3.1e-06
y2=1.5e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-39.999996
x2=125.00003
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="ICTAT (SS);i(@m.xmctat_10.m0[id]) % $netlist_dir/tb_biasgen_ss.raw
ICTAT (TT);i(@m.xmctat_10.m0[id]) % $netlist_dir/tb_biasgen.raw
ICTAT (FF);i(@m.xmctat_10.m0[id]) % $netlist_dir/tb_biasgen_ff.raw"
color="7 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen.raw
sim_type=dc
autoload=1
hilight_wave=-1}
B 2 3720 -800 4520 -400 {flags=graph
y1=2.5e-06
y2=1.4e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-39.999996
x2=125.00003
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="IZTC (SS);i(@m.xmztc_10.m0[id]) % $netlist_dir/tb_biasgen_ss.raw
IZTC (TT);i(@m.xmztc_10.m0[id]) % $netlist_dir/tb_biasgen.raw
IZTC (FF);i(@m.xmztc_10.m0[id]) % $netlist_dir/tb_biasgen_ff.raw"
color="7 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen.raw
sim_type=dc
autoload=1
hilight_wave=-1}
B 2 4580 -800 5380 -400 {flags=graph
y1=1
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-39.999996
x2=125.00003
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="vZTC (SS);vztc % $netlist_dir/tb_biasgen_ss.raw
vZTC (TT);vztc % $netlist_dir/tb_biasgen.raw
vZTC (FF);vztc % $netlist_dir/tb_biasgen_ff.raw"
color="7 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen.raw
sim_type=dc
autoload=1
hilight_wave=-1}
B 2 2810 -2030 3610 -1630 {flags=graph
y1=1.1788973
y2=1.2124517
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-39.999996
x2=125.00003
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="vgb_buf(FF); net1 % $netlist_dir/tb_biasgen_ff.raw
vgb_buf(TT); net1 % $netlist_dir/tb_biasgen.raw
vgb_buf(SS); net1 % $netlist_dir/tb_biasgen_ss.raw"
color="7 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_biasgen.raw
sim_type=dc
autoload=1
hilight_wave=2}
B 2 4570 -1640 5370 -1240 {flags=graph
y1=-0.00033
y2=-4.2e-05
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
node="IQ (FF); i(v1) % $netlist_dir/tb_biasgen_ff.raw
IQ (TT); i(v1) % $netlist_dir/tb_biasgen.raw
IQ (SS); i(v1) % $netlist_dir/tb_biasgen_ss.raw"
color="5 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_bandgap.raw
sim_type=dc
autoload=1}
N 420 -490 420 -460 {lab=VSS}
N 420 -570 420 -550 {lab=VDD}
N 600 -270 620 -270 {lab=VSS}
N 1210 -480 1210 -470 {lab=VSS}
N 520 -330 520 -310 {lab=vpref}
N 1270 -500 1270 -490 {lab=VSS}
N 1660 -340 1660 -320 {lab=VSS}
N 1660 -370 1670 -370 {lab=VSS}
N 1670 -370 1670 -320 {lab=VSS}
N 1660 -320 1670 -320 {lab=VSS}
N 1620 -420 1620 -370 {lab=IZTC_2u_src}
N 1620 -420 1660 -420 {lab=IZTC_2u_src}
N 1660 -420 1660 -400 {lab=IZTC_2u_src}
N 1660 -640 1660 -420 {lab=IZTC_2u_src}
N 1760 -340 1760 -320 {lab=VSS}
N 1760 -370 1770 -370 {lab=VSS}
N 1770 -370 1770 -320 {lab=VSS}
N 1760 -320 1770 -320 {lab=VSS}
N 1720 -420 1720 -370 {lab=ICTAT_2u_src}
N 1720 -420 1760 -420 {lab=ICTAT_2u_src}
N 1760 -420 1760 -400 {lab=ICTAT_2u_src}
N 1860 -340 1860 -320 {lab=VSS}
N 1860 -370 1870 -370 {lab=VSS}
N 1870 -370 1870 -320 {lab=VSS}
N 1860 -320 1870 -320 {lab=VSS}
N 1820 -420 1820 -370 {lab=IPTAT_2u_src}
N 1820 -420 1860 -420 {lab=IPTAT_2u_src}
N 1860 -420 1860 -400 {lab=IPTAT_2u_src}
N 1700 -440 1760 -440 {lab=ICTAT_2u_src}
N 1760 -440 1760 -420 {lab=ICTAT_2u_src}
N 1740 -460 1860 -460 {lab=IPTAT_2u_src}
N 1860 -460 1860 -420 {lab=IPTAT_2u_src}
N 1160 -460 1160 -450 {lab=VSS}
N 1040 -520 1160 -520 {lab=VREF_0P5V}
N 1040 -540 1210 -540 {lab=VREF_0P9V}
N 1040 -560 1270 -560 {lab=VREF_1V}
N 1360 -340 1360 -320 {lab=VSS}
N 1360 -370 1370 -370 {lab=VSS}
N 1370 -370 1370 -320 {lab=VSS}
N 1360 -320 1370 -320 {lab=VSS}
N 1320 -420 1320 -370 {lab=IZTC_10u_src}
N 1320 -420 1360 -420 {lab=IZTC_10u_src}
N 1360 -420 1360 -400 {lab=IZTC_10u_src}
N 1360 -620 1360 -420 {lab=IZTC_10u_src}
N 1460 -340 1460 -320 {lab=VSS}
N 1460 -370 1470 -370 {lab=VSS}
N 1470 -370 1470 -320 {lab=VSS}
N 1460 -320 1470 -320 {lab=VSS}
N 1420 -420 1420 -370 {lab=ICTAT_10u_src}
N 1420 -420 1460 -420 {lab=ICTAT_10u_src}
N 1460 -420 1460 -400 {lab=ICTAT_10u_src}
N 1560 -340 1560 -320 {lab=VSS}
N 1560 -370 1570 -370 {lab=VSS}
N 1570 -370 1570 -320 {lab=VSS}
N 1560 -320 1570 -320 {lab=VSS}
N 1520 -420 1520 -370 {lab=IPTAT_10u_src}
N 1520 -420 1560 -420 {lab=IPTAT_10u_src}
N 1560 -420 1560 -400 {lab=IPTAT_10u_src}
N 1400 -440 1460 -440 {lab=ICTAT_10u_src}
N 1460 -440 1460 -420 {lab=ICTAT_10u_src}
N 1440 -460 1560 -460 {lab=IPTAT_10u_src}
N 1560 -460 1560 -420 {lab=IPTAT_10u_src}
N 1040 -620 1360 -620 {lab=IZTC_10u_src}
N 1400 -680 1400 -440 {lab=ICTAT_10u_src}
N 1440 -740 1440 -460 {lab=IPTAT_10u_src}
N 1040 -680 1400 -680 {lab=ICTAT_10u_src}
N 1040 -740 1440 -740 {lab=IPTAT_10u_src}
N 1040 -640 1660 -640 {lab=IZTC_2u_src}
N 1700 -700 1700 -440 {lab=ICTAT_2u_src}
N 1040 -700 1700 -700 {lab=ICTAT_2u_src}
N 1740 -760 1740 -460 {lab=IPTAT_2u_src}
N 1040 -760 1740 -760 {lab=IPTAT_2u_src}
N 1340 -860 1340 -810 {lab=IPTAT_10u_snk}
N 1340 -810 1380 -810 {lab=IPTAT_10u_snk}
N 1380 -810 1380 -720 {lab=IPTAT_10u_snk}
N 1040 -720 1380 -720 {lab=IPTAT_10u_snk}
N 1440 -860 1440 -810 {lab=ICTAT_10u_snk}
N 1440 -810 1480 -810 {lab=ICTAT_10u_snk}
N 1480 -810 1480 -660 {lab=ICTAT_10u_snk}
N 1040 -660 1480 -660 {lab=ICTAT_10u_snk}
N 1540 -860 1540 -810 {lab=IZTC_10u_snk}
N 1540 -810 1580 -810 {lab=IZTC_10u_snk}
N 1580 -830 1580 -810 {lab=IZTC_10u_snk}
N 1580 -810 1580 -600 {lab=IZTC_10u_snk}
N 1040 -600 1580 -600 {lab=IZTC_10u_snk}
N 1380 -860 1390 -860 {lab=VDD}
N 1390 -920 1390 -860 {lab=VDD}
N 1380 -920 1390 -920 {lab=VDD}
N 1380 -920 1380 -890 {lab=VDD}
N 1480 -860 1490 -860 {lab=VDD}
N 1490 -920 1490 -860 {lab=VDD}
N 1480 -920 1490 -920 {lab=VDD}
N 1480 -920 1480 -890 {lab=VDD}
N 1580 -860 1590 -860 {lab=VDD}
N 1590 -920 1590 -860 {lab=VDD}
N 1580 -920 1590 -920 {lab=VDD}
N 1580 -920 1580 -890 {lab=VDD}
N 1490 -920 1580 -920 {lab=VDD}
N 1390 -920 1480 -920 {lab=VDD}
N 920 -330 920 -320 {lab=VSS}
N 700 -390 920 -390 {lab=VZTC}
N 900 -480 920 -480 {lab=VSS}
N 1380 -830 1380 -810 {lab=IPTAT_10u_snk}
N 1480 -830 1480 -810 {lab=ICTAT_10u_snk}
C {lab_pin.sym} 600 -430 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 700 -370 0 1 {name=p2 lab=VBG}
C {lab_pin.sym} 600 -270 1 1 {name=p6 lab=VSS}
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
write tb_biasgen.raw
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
set spicefile $netlist_dir/tb_biasgen.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/typical/ff/\} $spicefile
exec sed -i \{s/tb_biasgen.raw/tb_biasgen_ff.raw/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_biasgen_ff.raw/tb_biasgen_ss.raw/\} $spicefile
simulate
"}
C {capa.sym} 1210 -510 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1210 -470 1 1 {name=p5 lab=VSS}
C {libs/core_bandgap/bandgap/bandgap.sym} 540 -410 0 0 {name=xI_bandgap}
C {title.sym} 160 -40 0 0 {name=l4 author="Luighi Viton (AutoMOS-Project)"}
C {launcher.sym} 180 -730 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {lab_wire.sym} 520 -330 0 0 {name=p3 sig_type=std_logic lab=vpref}
C {lab_pin.sym} 700 -330 0 1 {name=p4 lab=IPTAT}
C {lab_pin.sym} 700 -310 0 1 {name=p8 lab=IZTC}
C {lab_pin.sym} 700 -350 0 1 {name=p9 lab=ICTAT}
C {lab_pin.sym} 700 -390 0 1 {name=p10 lab=VZTC}
C {capa.sym} 1270 -530 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1270 -490 1 1 {name=p11 lab=VSS}
C {symbols/nfet_05v0.sym} 1640 -370 0 0 {name=Mztc_2
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
C {lab_wire.sym} 1660 -320 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1740 -370 0 0 {name=Mctat_2
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
C {lab_wire.sym} 1760 -320 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1840 -370 0 0 {name=Mptat_2
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
C {lab_wire.sym} 1860 -320 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {libs/core_biasgen/biasgen/biasgen.sym} 820 -780 0 0 {name=xI_biasgen}
C {capa.sym} 1160 -490 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1160 -450 1 1 {name=p15 lab=VSS}
C {lab_pin.sym} 900 -800 0 1 {name=p16 lab=VDD}
C {lab_pin.sym} 800 -740 0 0 {name=p17 lab=VBG}
C {lab_pin.sym} 800 -700 0 0 {name=p19 lab=IPTAT}
C {lab_pin.sym} 800 -660 0 0 {name=p21 lab=IZTC}
C {lab_pin.sym} 900 -480 1 1 {name=p25 lab=VSS}
C {lab_pin.sym} 800 -680 0 0 {name=p27 lab=ICTAT}
C {symbols/nfet_05v0.sym} 1340 -370 0 0 {name=Mztc_10
L=2u
W=1u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {lab_wire.sym} 1360 -320 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1440 -370 0 0 {name=Mctat_10
L=2u
W=1u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {lab_wire.sym} 1460 -320 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1540 -370 0 0 {name=Mptat_10
L=2u
W=1u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {lab_wire.sym} 1560 -320 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {symbols/pfet_05v0.sym} 1360 -860 0 0 {name=Mpptat_10
L=1u
W=1u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 1460 -860 0 0 {name=Mpctat_10
L=1u
W=1u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 1560 -860 0 0 {name=Mpztc_10
L=1u
W=1u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {lab_wire.sym} 1430 -920 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {capa.sym} 920 -360 0 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 920 -320 1 1 {name=p40 lab=VSS}
C {lab_pin.sym} 1040 -760 0 1 {name=p18 lab=IPTAT_2u_src}
C {lab_pin.sym} 1040 -560 0 1 {name=p20 lab=VREF_1V}
C {lab_pin.sym} 1040 -520 0 1 {name=p23 lab=VREF_0P5V}
C {lab_pin.sym} 1040 -540 0 1 {name=p26 lab=VREF_0P9V}
C {lab_pin.sym} 1040 -740 0 1 {name=p28 lab=IPTAT_10u_src}
C {lab_pin.sym} 1040 -720 0 1 {name=p29 lab=IPTAT_10u_snk}
C {lab_pin.sym} 1040 -700 0 1 {name=p30 lab=ICTAT_2u_src}
C {lab_pin.sym} 1040 -680 0 1 {name=p31 lab=ICTAT_10u_src}
C {lab_pin.sym} 1040 -660 0 1 {name=p32 lab=ICTAT_10u_snk}
C {lab_pin.sym} 1040 -640 0 1 {name=p33 lab=IZTC_2u_src}
C {lab_pin.sym} 1040 -620 0 1 {name=p34 lab=IZTC_10u_src}
C {lab_pin.sym} 1040 -600 0 1 {name=p35 lab=IZTC_10u_snk}
C {lab_pin.sym} 800 -520 0 0 {name=p24 lab=VDD}
