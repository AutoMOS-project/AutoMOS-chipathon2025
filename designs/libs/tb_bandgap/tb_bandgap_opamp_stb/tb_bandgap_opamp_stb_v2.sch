v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1580 -850 2380 -450 {flags=graph
y1=-360
y2=110
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=0
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_opamp_two_stage_stb_v2.raw
autoload=1
color="7 12"
node="\\"Magnitude;t db20()\\"
\\"Phase;ph(t) cph()\\""
}
N 810 -320 810 -270 {lab=VSS}
N 810 -300 880 -300 {lab=VSS}
N 880 -320 880 -300 {lab=VSS}
N 810 -430 810 -380 {lab=VDD}
N 880 -430 880 -380 {lab=vp}
N 1190 -380 1270 -380 {lab=vout}
N 1270 -380 1270 -360 {lab=vout}
N 1220 -500 1220 -380 {lab=vout}
N 740 -320 740 -300 {lab=VSS}
N 740 -300 810 -300 {lab=VSS}
N 740 -420 740 -380 {lab=ibias}
N 980 -380 1050 -380 {lab=#net1}
N 980 -500 980 -380 {lab=#net1}
N 1160 -740 1240 -740 {lab=vout_q}
N 1240 -740 1240 -720 {lab=vout_q}
N 940 -740 1020 -740 {lab=vout_q}
N 940 -840 940 -740 {lab=vout_q}
N 940 -840 1200 -840 {lab=vout_q}
N 1200 -840 1200 -740 {lab=vout_q}
N 660 -320 660 -300 {lab=VSS}
N 660 -420 660 -380 {lab=ibias_q}
N 660 -300 740 -300 {lab=VSS}
N 980 -560 980 -500 {lab=#net1}
N 980 -560 1000 -560 {lab=#net1}
N 1220 -560 1220 -500 {lab=vout}
N 1190 -560 1220 -560 {lab=vout}
N 1060 -560 1130 -560 {lab=#net2}
N 1080 -560 1080 -540 {lab=#net2}
C {gnd.sym} 810 -210 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1270 -380 0 1 {name=p4 lab=vout}
C {vsource.sym} 810 -350 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 880 -350 0 0 {name=V2 
value="1.65 AC 1"}
C {vsource.sym} 810 -240 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 880 -300 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 810 -410 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 880 -410 0 0 {name=p9  lab=vp}
C {capa.sym} 1270 -330 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1270 -300 1 1 {name=p11 lab=VSS}
C {devices/code_shown.sym} 10 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 20 -580 0 0 {name=NGSPICE only_toplevel=true
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
write tb_opamp_two_stage_stb_v2.raw all
.endc
"}
C {isource.sym} 740 -350 0 0 {name=I0 value=2u}
C {lab_pin.sym} 740 -400 2 1 {name=p12 lab=ibias}
C {libs/core_analog/opamp_two_stage/opamp_two_stage.sym} 1050 -320 0 0 {name=x1}
C {lab_pin.sym} 1110 -440 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 1050 -400 0 0 {name=p2 lab=ibias}
C {lab_pin.sym} 1050 -360 0 0 {name=p5 lab=vp}
C {lab_pin.sym} 1110 -320 0 1 {name=p6 lab=VSS}
C {lab_pin.sym} 1240 -740 0 1 {name=p3 lab=vout_q}
C {capa.sym} 1240 -690 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1240 -660 1 1 {name=p13 lab=VSS}
C {libs/core_analog/opamp_two_stage/opamp_two_stage.sym} 1020 -680 0 0 {name=x2}
C {lab_pin.sym} 1080 -800 0 1 {name=p14 lab=VDD}
C {lab_pin.sym} 1020 -760 0 0 {name=p15 lab=ibias_q}
C {lab_pin.sym} 1020 -720 0 0 {name=p16 lab=vp}
C {lab_pin.sym} 1080 -680 0 1 {name=p17 lab=VSS}
C {isource.sym} 660 -350 0 0 {name=I1 value=2u}
C {lab_pin.sym} 660 -400 2 1 {name=p18 lab=ibias_q}
C {vsource.sym} 1030 -560 3 0 {name=V4 
value="0 AC \{1-B\}"}
C {bsource.sym} 1080 -510 0 0 {name=B1 VAR=V FUNC="'V(vout_q)'" m=1}
C {lab_pin.sym} 1080 -480 3 0 {name=p19 lab=VSS}
C {vsource.sym} 1160 -560 1 1 {name=V3 
value="0 AC \{B\}"}
C {launcher.sym} 1650 -910 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_stb_v2.raw tran"
}
C {launcher.sym} 100 -680 0 0 {name=h1
descr="Reference openloop analysis" 
url=https://youtu.be/BLXNkmubQzA?si=SPMKC-v-QuUZXauS}
