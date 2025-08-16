v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1500 -810 2300 -410 {flags=graph
y1=-540
y2=82
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=0.75
ylabmag=0.75
dataset=0
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_bandgap_stb.raw
autoload=1
color="7 12"
node="\\"Magnitude;t db20()\\"
\\"Phase;ph(t) cph()\\""
}
N 870 -610 870 -490 {lab=vpref}
N 630 -670 630 -610 {lab=#net1}
N 630 -670 650 -670 {lab=#net1}
N 870 -670 870 -610 {lab=vpref}
N 840 -670 870 -670 {lab=vpref}
N 710 -670 780 -670 {lab=#net2}
N 730 -670 730 -650 {lab=#net2}
N 580 -370 580 -340 {lab=VSS}
N 580 -450 580 -430 {lab=VDD}
N 870 -490 900 -490 {lab=vpref}
N 630 -470 900 -470 {lab=#net1}
N 630 -610 630 -470 {lab=#net1}
N 980 -430 1000 -430 {lab=VSS}
N 1120 -530 1230 -530 {lab=VBG}
N 1230 -470 1230 -460 {lab=VSS}
N 1180 -550 1290 -550 {lab=VZTC}
N 1290 -490 1290 -480 {lab=VSS}
N 1080 -550 1180 -550 {lab=VZTC}
N 1090 -180 1090 -160 {lab=VSS}
N 1090 -210 1100 -210 {lab=VSS}
N 1100 -210 1100 -160 {lab=VSS}
N 1090 -160 1100 -160 {lab=VSS}
N 1050 -260 1050 -210 {lab=IZTC}
N 1050 -260 1090 -260 {lab=IZTC}
N 1090 -260 1090 -240 {lab=IZTC}
N 1090 -470 1090 -260 {lab=IZTC}
N 1190 -180 1190 -160 {lab=VSS}
N 1190 -210 1200 -210 {lab=VSS}
N 1200 -210 1200 -160 {lab=VSS}
N 1190 -160 1200 -160 {lab=VSS}
N 1150 -260 1150 -210 {lab=IPTAT}
N 1150 -260 1190 -260 {lab=IPTAT}
N 1190 -260 1190 -240 {lab=IPTAT}
N 1290 -180 1290 -160 {lab=VSS}
N 1290 -210 1300 -210 {lab=VSS}
N 1300 -210 1300 -160 {lab=VSS}
N 1290 -160 1300 -160 {lab=VSS}
N 1250 -260 1250 -210 {lab=ICTAT}
N 1250 -260 1290 -260 {lab=ICTAT}
N 1290 -260 1290 -240 {lab=ICTAT}
N 1080 -470 1090 -470 {lab=IZTC}
N 1080 -490 1140 -490 {lab=IPTAT}
N 1140 -490 1140 -280 {lab=IPTAT}
N 1140 -280 1190 -280 {lab=IPTAT}
N 1190 -280 1190 -260 {lab=IPTAT}
N 1080 -510 1160 -510 {lab=ICTAT}
N 1160 -510 1160 -300 {lab=ICTAT}
N 1160 -300 1290 -300 {lab=ICTAT}
N 1290 -300 1290 -260 {lab=ICTAT}
N 1080 -530 1120 -530 {lab=VBG}
N 840 -980 860 -980 {lab=VSS}
N 980 -1080 1090 -1080 {lab=VBG_q}
N 1090 -1020 1090 -1010 {lab=VSS}
N 1040 -1100 1150 -1100 {lab=VZTC_q}
N 1150 -1040 1150 -1030 {lab=VSS}
N 940 -1100 1040 -1100 {lab=VZTC_q}
N 950 -730 950 -710 {lab=VSS}
N 950 -760 960 -760 {lab=VSS}
N 960 -760 960 -710 {lab=VSS}
N 950 -710 960 -710 {lab=VSS}
N 910 -810 910 -760 {lab=IZTC_q}
N 910 -810 950 -810 {lab=IZTC_q}
N 950 -810 950 -790 {lab=IZTC_q}
N 950 -1020 950 -810 {lab=IZTC_q}
N 1050 -730 1050 -710 {lab=VSS}
N 1050 -760 1060 -760 {lab=VSS}
N 1060 -760 1060 -710 {lab=VSS}
N 1050 -710 1060 -710 {lab=VSS}
N 1010 -810 1010 -760 {lab=IPTAT_q}
N 1010 -810 1050 -810 {lab=IPTAT_q}
N 1050 -810 1050 -790 {lab=IPTAT_q}
N 1150 -730 1150 -710 {lab=VSS}
N 1150 -760 1160 -760 {lab=VSS}
N 1160 -760 1160 -710 {lab=VSS}
N 1150 -710 1160 -710 {lab=VSS}
N 1110 -810 1110 -760 {lab=ICTAT_q}
N 1110 -810 1150 -810 {lab=ICTAT_q}
N 1150 -810 1150 -790 {lab=ICTAT_q}
N 940 -1020 950 -1020 {lab=IZTC_q}
N 940 -1040 1000 -1040 {lab=IPTAT_q}
N 1000 -1040 1000 -830 {lab=IPTAT_q}
N 1000 -830 1050 -830 {lab=IPTAT_q}
N 1050 -830 1050 -810 {lab=IPTAT_q}
N 940 -1060 1020 -1060 {lab=ICTAT_q}
N 1020 -1060 1020 -850 {lab=ICTAT_q}
N 1020 -850 1150 -850 {lab=ICTAT_q}
N 1150 -850 1150 -810 {lab=ICTAT_q}
N 940 -1080 980 -1080 {lab=VBG_q}
N 760 -1040 760 -1020 {lab=vpref_q}
C {devices/code_shown.sym} 0 -270 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} 10 -630 0 0 {name=NGSPICE only_toplevel=true
value="
.param B=0
.control
save all
ac dec 100 1 10G
alterparam B=1
reset
ac dec 100 1 10G
setplot new
set curplottitle=Loopgain
let frequency=ac1.frequency
let T=(ac1.i(V3)+ ac2.i(V4))/(ac1.i(V4)+ ac2.i(V3))
let Tmag=db(T)
let Tphase=180*cph(T)/pi
*plot Tmag Tphase xlog
write tb_bandgap_stb.raw all
.endc
"}
C {vsource.sym} 680 -670 3 0 {name=V4 
value="0 AC \{1-B\}"}
C {bsource.sym} 730 -620 0 0 {name=B1 VAR=V FUNC="'V(vpref_q)'" m=1}
C {lab_pin.sym} 730 -590 3 0 {name=p19 lab=VSS}
C {vsource.sym} 810 -670 1 1 {name=V3 
value="0 AC \{B\}"}
C {launcher.sym} 1570 -870 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_stb_v2.raw tran"
}
C {launcher.sym} 90 -730 0 0 {name=h1
descr="Reference openloop analysis" 
url=https://youtu.be/BLXNkmubQzA?si=SPMKC-v-QuUZXauS}
C {vsource.sym} 580 -400 0 0 {name=V5 value="2" savecurrent=false}
C {lab_pin.sym} 580 -450 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 580 -360 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {vsource.sym} 580 -310 0 0 {name=VSS_sense1 value=0 savecurrent=false}
C {gnd.sym} 580 -280 0 0 {name=l2 lab=GND}
C {title.sym} 160 -40 0 0 {name=l6 author="Luighi Viton (AutoMOS-Project)"}
C {lab_pin.sym} 980 -590 0 1 {name=p3 lab=VDD}
C {lab_pin.sym} 1080 -530 0 1 {name=p7 lab=VBG}
C {lab_pin.sym} 980 -430 1 1 {name=p8 lab=VSS}
C {capa.sym} 1230 -500 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1230 -460 1 1 {name=p9 lab=VSS}
C {libs/core_bandgap/bandgap/bandgap.sym} 920 -570 0 0 {name=xI_bandgap}
C {lab_wire.sym} 870 -490 0 0 {name=p10 sig_type=std_logic lab=vpref}
C {lab_pin.sym} 1080 -490 0 1 {name=p11 lab=IPTAT}
C {lab_pin.sym} 1080 -470 0 1 {name=p12 lab=IZTC}
C {lab_pin.sym} 1080 -510 0 1 {name=p13 lab=ICTAT}
C {lab_pin.sym} 1080 -550 0 1 {name=p14 lab=VZTC}
C {capa.sym} 1290 -520 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1290 -480 1 1 {name=p15 lab=VSS}
C {symbols/nfet_05v0.sym} 1070 -210 0 0 {name=M1
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
C {lab_wire.sym} 1090 -160 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1170 -210 0 0 {name=M2
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
C {lab_wire.sym} 1190 -160 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1270 -210 0 0 {name=M3
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
C {lab_wire.sym} 1290 -160 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -1140 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 940 -1080 0 1 {name=p2 lab=VBG_q}
C {lab_pin.sym} 840 -980 1 1 {name=p4 lab=VSS}
C {capa.sym} 1090 -1050 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1090 -1010 1 1 {name=p5 lab=VSS}
C {libs/core_bandgap/bandgap/bandgap.sym} 780 -1120 0 0 {name=xI_bandgap1}
C {lab_pin.sym} 940 -1040 0 1 {name=p6 lab=IPTAT_q}
C {lab_pin.sym} 940 -1020 0 1 {name=p20 lab=IZTC_q}
C {lab_pin.sym} 940 -1060 0 1 {name=p21 lab=ICTAT_q}
C {lab_pin.sym} 940 -1100 0 1 {name=p24 lab=VZTC_q}
C {capa.sym} 1150 -1070 0 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1150 -1030 1 1 {name=p25 lab=VSS}
C {symbols/nfet_05v0.sym} 930 -760 0 0 {name=M4
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
C {lab_wire.sym} 950 -710 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1030 -760 0 0 {name=M5
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
C {lab_wire.sym} 1050 -710 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {symbols/nfet_05v0.sym} 1130 -760 0 0 {name=M6
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
C {lab_wire.sym} 1150 -710 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 760 -1040 0 0 {name=p29 sig_type=std_logic lab=vpref_q}
