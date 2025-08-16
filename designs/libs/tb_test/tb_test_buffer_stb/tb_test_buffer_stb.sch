v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1740 -920 2540 -520 {flags=graph
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
xlabmag=0.75
ylabmag=0.75
dataset=0
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_test_buffer_stb.raw
autoload=1
color="7 12"
node="\\"Magnitude;t db20()\\"
\\"Phase;ph(t) cph()\\""
}
N 810 -450 810 -400 {lab=VSS}
N 810 -430 880 -430 {lab=VSS}
N 880 -450 880 -430 {lab=VSS}
N 810 -560 810 -510 {lab=VDD}
N 880 -560 880 -510 {lab=vp}
N 740 -450 740 -430 {lab=VSS}
N 740 -430 810 -430 {lab=VSS}
N 740 -550 740 -510 {lab=ibias}
N 660 -450 660 -430 {lab=VSS}
N 660 -550 660 -510 {lab=ibias_q}
N 660 -430 740 -430 {lab=VSS}
N 1320 -500 1320 -450 {lab=VOUT}
N 1320 -540 1320 -500 {lab=VOUT}
N 1310 -540 1320 -540 {lab=VOUT}
N 800 -710 820 -710 {lab=ENB}
N 1380 -670 1400 -670 {lab=#net1}
N 1460 -670 1530 -670 {lab=#net2}
N 1480 -670 1480 -650 {lab=#net2}
N 1320 -540 1600 -540 {lab=VOUT}
N 1600 -670 1600 -540 {lab=VOUT}
N 1590 -670 1600 -670 {lab=VOUT}
N 980 -560 980 -510 {lab=EN}
N 980 -450 980 -430 {lab=VSS}
N 880 -430 980 -430 {lab=VSS}
N 1320 -450 1320 -400 {lab=VOUT}
N 1390 -440 1390 -400 {lab=VOUT}
N 1320 -440 1390 -440 {lab=VOUT}
N 1320 -340 1320 -300 {lab=VSS}
N 1320 -300 1390 -300 {lab=VSS}
N 1390 -340 1390 -300 {lab=VSS}
N 1230 -480 1250 -480 {lab=VSS}
N 1100 -560 1170 -560 {lab=#net1}
N 1100 -660 1100 -560 {lab=#net1}
N 1100 -670 1380 -670 {lab=#net1}
N 1100 -670 1100 -660 {lab=#net1}
N 1310 -980 1320 -980 {lab=VOUT_q}
N 1430 -980 1430 -940 {lab=VOUT_q}
N 1360 -980 1430 -980 {lab=VOUT_q}
N 1360 -880 1360 -840 {lab=VSS}
N 1360 -840 1430 -840 {lab=VSS}
N 1430 -880 1430 -840 {lab=VSS}
N 1230 -920 1250 -920 {lab=VSS}
N 1100 -1000 1170 -1000 {lab=VOUT_q}
N 1100 -1100 1100 -1000 {lab=VOUT_q}
N 1100 -1110 1320 -1110 {lab=VOUT_q}
N 1100 -1110 1100 -1100 {lab=VOUT_q}
N 1320 -1110 1320 -980 {lab=VOUT_q}
N 1360 -980 1360 -940 {lab=VOUT_q}
N 1320 -980 1360 -980 {lab=VOUT_q}
C {gnd.sym} 810 -340 0 0 {name=l1 lab=GND}
C {vsource.sym} 810 -480 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 880 -480 0 0 {name=V2 
value="1.2 AC 1"}
C {vsource.sym} 810 -370 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 980 -430 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 810 -540 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 880 -540 0 0 {name=p9  lab=vp}
C {devices/code_shown.sym} 10 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 20 -710 0 0 {name=NGSPICE only_toplevel=true
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
write tb_test_buffer_stb.raw all
.endc
"}
C {isource.sym} 740 -480 0 0 {name=I0 value=10u}
C {lab_pin.sym} 740 -530 2 1 {name=p12 lab=ibias}
C {isource.sym} 660 -480 0 0 {name=I1 value=10u}
C {lab_pin.sym} 660 -530 2 1 {name=p18 lab=ibias_q}
C {launcher.sym} 1810 -980 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_stb_v2.raw tran"
}
C {launcher.sym} 100 -810 0 0 {name=h1
descr="Reference openloop analysis" 
url=https://youtu.be/BLXNkmubQzA?si=SPMKC-v-QuUZXauS}
C {title.sym} 160 -40 0 0 {name=l6 author="Luighi Viton (AutoMOS-Project)"}
C {lab_pin.sym} 1230 -600 0 1 {name=p32 lab=VDD}
C {lab_pin.sym} 1170 -600 0 0 {name=p33 lab=EN}
C {lab_pin.sym} 1170 -580 0 0 {name=p34 lab=ENB}
C {lab_pin.sym} 1210 -480 1 1 {name=p36 lab=ibias}
C {lab_pin.sym} 1320 -490 0 1 {name=p38 lab=VOUT}
C {lab_pin.sym} 1230 -480 1 1 {name=p39 lab=VSS}
C {libs/core_biasgen/biasgen_inverter/biasgen_inverter.sym} 680 -670 0 0 {name=xINV}
C {lab_wire.sym} 820 -710 0 1 {name=p44 sig_type=std_logic lab=ENB}
C {lab_wire.sym} 730 -750 0 1 {name=p55 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 730 -670 2 0 {name=p56 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1170 -520 0 0 {name=p10 lab=vp}
C {vsource.sym} 1430 -670 3 0 {name=V4 
value="0 AC \{1-B\}"}
C {bsource.sym} 1480 -620 0 0 {name=B2 VAR=V FUNC="'V(VOUT_q)'" m=1}
C {lab_pin.sym} 1480 -590 3 0 {name=p23 lab=VSS}
C {vsource.sym} 1560 -670 1 1 {name=V3 
value="0 AC \{B\}"}
C {lab_wire.sym} 680 -710 0 0 {name=p1 sig_type=std_logic lab=EN}
C {vsource.sym} 980 -480 0 0 {name=V5 value=5 savecurrent=false}
C {lab_wire.sym} 980 -540 0 0 {name=p2  lab=EN}
C {capa.sym} 1390 -370 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1320 -370 0 0 {name=R1
value=1Meg
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1390 -300 2 0 {name=p3 lab=VSS}
C {libs/core_test/test_buffer/test_buffer.sym} 1170 -480 0 0 {name=x1}
C {lab_pin.sym} 1230 -1040 0 1 {name=p4 lab=VDD}
C {lab_pin.sym} 1170 -1040 0 0 {name=p5 lab=EN}
C {lab_pin.sym} 1170 -1020 0 0 {name=p6 lab=ENB}
C {lab_pin.sym} 1210 -920 1 1 {name=p11 lab=ibias_q}
C {lab_pin.sym} 1430 -980 0 1 {name=p13 lab=VOUT_q}
C {lab_pin.sym} 1230 -920 1 1 {name=p14 lab=VSS}
C {lab_pin.sym} 1170 -960 0 0 {name=p15 lab=vp}
C {capa.sym} 1430 -910 0 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1360 -910 0 0 {name=R2
value=1Meg
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1430 -840 2 0 {name=p17 lab=VSS}
C {libs/core_test/test_buffer/test_buffer.sym} 1170 -920 0 0 {name=x2}
