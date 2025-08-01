v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1590 -920 2390 -520 {flags=graph
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
N 820 -390 820 -340 {lab=VSS}
N 820 -370 890 -370 {lab=VSS}
N 890 -390 890 -370 {lab=VSS}
N 820 -500 820 -450 {lab=VDD}
N 890 -500 890 -450 {lab=vp}
N 1200 -450 1280 -450 {lab=vout}
N 1280 -450 1280 -430 {lab=vout}
N 1230 -570 1230 -450 {lab=vout}
N 750 -390 750 -370 {lab=VSS}
N 750 -370 820 -370 {lab=VSS}
N 750 -490 750 -450 {lab=ibias}
N 990 -450 1060 -450 {lab=#net1}
N 990 -570 990 -450 {lab=#net1}
N 1170 -810 1250 -810 {lab=vout_q}
N 1250 -810 1250 -790 {lab=vout_q}
N 950 -810 1030 -810 {lab=vout_q}
N 950 -910 950 -810 {lab=vout_q}
N 950 -910 1210 -910 {lab=vout_q}
N 1210 -910 1210 -810 {lab=vout_q}
N 670 -390 670 -370 {lab=VSS}
N 670 -490 670 -450 {lab=ibias_q}
N 670 -370 750 -370 {lab=VSS}
N 990 -630 990 -570 {lab=#net1}
N 990 -630 1010 -630 {lab=#net1}
N 1230 -630 1230 -570 {lab=vout}
N 1200 -630 1230 -630 {lab=vout}
N 1070 -630 1140 -630 {lab=#net2}
N 1090 -630 1090 -610 {lab=#net2}
C {gnd.sym} 820 -280 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1280 -450 0 1 {name=p4 lab=vout}
C {vsource.sym} 820 -420 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 890 -420 0 0 {name=V2 
value="1.65 AC 1"}
C {vsource.sym} 820 -310 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 890 -370 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 820 -480 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 890 -480 0 0 {name=p9  lab=vp}
C {capa.sym} 1280 -400 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1280 -370 1 1 {name=p11 lab=VSS}
C {devices/code_shown.sym} 20 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 30 -650 0 0 {name=NGSPICE only_toplevel=true
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
C {isource.sym} 750 -420 0 0 {name=I0 value=2u}
C {lab_pin.sym} 750 -470 2 1 {name=p12 lab=ibias}
C {libs/core_analog/opamp_two_stage/opamp_two_stage.sym} 1060 -390 0 0 {name=x1}
C {lab_pin.sym} 1120 -510 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 1060 -470 0 0 {name=p2 lab=ibias}
C {lab_pin.sym} 1060 -430 0 0 {name=p5 lab=vp}
C {lab_pin.sym} 1120 -390 0 1 {name=p6 lab=VSS}
C {lab_pin.sym} 1250 -810 0 1 {name=p3 lab=vout_q}
C {capa.sym} 1250 -760 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1250 -730 1 1 {name=p13 lab=VSS}
C {libs/core_analog/opamp_two_stage/opamp_two_stage.sym} 1030 -750 0 0 {name=x2}
C {lab_pin.sym} 1090 -870 0 1 {name=p14 lab=VDD}
C {lab_pin.sym} 1030 -830 0 0 {name=p15 lab=ibias_q}
C {lab_pin.sym} 1030 -790 0 0 {name=p16 lab=vp}
C {lab_pin.sym} 1090 -750 0 1 {name=p17 lab=VSS}
C {isource.sym} 670 -420 0 0 {name=I1 value=2u}
C {lab_pin.sym} 670 -470 2 1 {name=p18 lab=ibias_q}
C {vsource.sym} 1040 -630 3 0 {name=V4 
value="0 AC \{1-B\}"}
C {bsource.sym} 1090 -580 0 0 {name=B1 VAR=V FUNC="'V(vout_q)'" m=1}
C {lab_pin.sym} 1090 -550 3 0 {name=p19 lab=VSS}
C {vsource.sym} 1170 -630 1 1 {name=V3 
value="0 AC \{B\}"}
C {launcher.sym} 1660 -980 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_stb_v2.raw tran"
}
C {launcher.sym} 110 -750 0 0 {name=h1
descr="Reference openloop analysis" 
url=https://youtu.be/BLXNkmubQzA?si=SPMKC-v-QuUZXauS}
C {title.sym} 160 -40 0 0 {name=l3 author="Luighi Viton"}
