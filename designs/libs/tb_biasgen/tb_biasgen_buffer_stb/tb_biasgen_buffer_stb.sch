v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 2230 -820 3030 -420 {flags=graph
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
rawfile=$netlist_dir/tb_biasgen_buffer_stb.raw
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
N 1320 -500 1320 -450 {lab=VBG_buff}
N 1320 -540 1320 -500 {lab=VBG_buff}
N 1310 -540 1320 -540 {lab=VBG_buff}
N 1380 -370 1460 -370 {lab=VREF_1V}
N 1380 -350 1460 -350 {lab=VREF_0P9V}
N 1380 -290 1460 -290 {lab=VREF_0P5V}
N 800 -710 820 -710 {lab=ENB}
N 1380 -670 1380 -610 {lab=#net1}
N 1380 -670 1400 -670 {lab=#net1}
N 1460 -670 1530 -670 {lab=#net2}
N 1480 -670 1480 -650 {lab=#net2}
N 1380 -610 1380 -560 {lab=#net1}
N 1310 -560 1380 -560 {lab=#net1}
N 1320 -540 1600 -540 {lab=VBG_buff}
N 1600 -670 1600 -540 {lab=VBG_buff}
N 1590 -670 1600 -670 {lab=VBG_buff}
N 1670 -370 1670 -360 {lab=VREF_1V}
N 1600 -350 1600 -330 {lab=VREF_0P9V}
N 1540 -290 1540 -270 {lab=VREF_0P5V}
N 1460 -370 1670 -370 {lab=VREF_1V}
N 1460 -350 1600 -350 {lab=VREF_0P9V}
N 1460 -290 1540 -290 {lab=VREF_0P5V}
N 1320 -1110 1320 -1060 {lab=VBG_buff_q}
N 1320 -1150 1320 -1110 {lab=VBG_buff_q}
N 1310 -1150 1320 -1150 {lab=VBG_buff_q}
N 1380 -980 1460 -980 {lab=VREF_1V_q}
N 1380 -960 1460 -960 {lab=VREF_0P9V_q}
N 1380 -900 1460 -900 {lab=VREF_0P5V_q}
N 1310 -1170 1320 -1170 {lab=VBG_buff_q}
N 1670 -980 1670 -970 {lab=VREF_1V_q}
N 1600 -960 1600 -940 {lab=VREF_0P9V_q}
N 1540 -900 1540 -880 {lab=VREF_0P5V_q}
N 1460 -980 1670 -980 {lab=VREF_1V_q}
N 1460 -960 1600 -960 {lab=VREF_0P9V_q}
N 1460 -900 1540 -900 {lab=VREF_0P5V_q}
N 1320 -1170 1320 -1150 {lab=VBG_buff_q}
N 980 -560 980 -510 {lab=EN}
N 980 -450 980 -430 {lab=VSS}
N 880 -430 980 -430 {lab=VSS}
C {gnd.sym} 810 -340 0 0 {name=l1 lab=GND}
C {vsource.sym} 810 -480 0 0 {name=V1 value=2 savecurrent=false}
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
write tb_biasgen_buffer_stb.raw all
.endc
"}
C {isource.sym} 740 -480 0 0 {name=I0 value=2u}
C {lab_pin.sym} 740 -530 2 1 {name=p12 lab=ibias}
C {isource.sym} 660 -480 0 0 {name=I1 value=2u}
C {lab_pin.sym} 660 -530 2 1 {name=p18 lab=ibias_q}
C {launcher.sym} 2300 -880 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_stb_v2.raw tran"
}
C {launcher.sym} 100 -810 0 0 {name=h1
descr="Reference openloop analysis" 
url=https://youtu.be/BLXNkmubQzA?si=SPMKC-v-QuUZXauS}
C {title.sym} 160 -40 0 0 {name=l6 author="Luighi Viton (AutoMOS-Project)"}
C {libs/core_biasgen/biasgen_buffer/biasgen_buffer.sym} 1060 -500 0 0 {name=xI_Buffer}
C {lab_pin.sym} 1260 -680 0 1 {name=p32 lab=VDD}
C {lab_pin.sym} 1060 -580 0 0 {name=p33 lab=EN}
C {lab_pin.sym} 1060 -560 0 0 {name=p34 lab=ENB}
C {lab_pin.sym} 1120 -480 1 1 {name=p35 lab=SUB}
C {lab_pin.sym} 1180 -480 0 1 {name=p36 lab=ibias}
C {lab_pin.sym} 1320 -520 0 1 {name=p38 lab=VBG_buff}
C {lab_pin.sym} 1100 -480 1 1 {name=p39 lab=VSS}
C {libs/core_biasgen/biasgen_resistor_divider/biasgen_resistor_divider.sym} 1280 -170 0 0 {name=xI_divider}
C {lab_pin.sym} 1300 -450 0 0 {name=p45 lab=VDD}
C {lab_pin.sym} 1320 -170 1 1 {name=p46 lab=VSS}
C {libs/core_biasgen/biasgen_inverter/biasgen_inverter.sym} 680 -670 0 0 {name=xINV}
C {lab_wire.sym} 820 -710 0 1 {name=p44 sig_type=std_logic lab=ENB}
C {lab_wire.sym} 730 -750 0 1 {name=p55 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 730 -670 2 0 {name=p56 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 -620 0 0 {name=p10 lab=vp}
C {vsource.sym} 1430 -670 3 0 {name=V4 
value="0 AC \{1-B\}"}
C {bsource.sym} 1480 -620 0 0 {name=B2 VAR=V FUNC="'V(VBG_buff_q)'" m=1}
C {lab_pin.sym} 1480 -590 3 0 {name=p23 lab=VSS}
C {vsource.sym} 1560 -670 1 1 {name=V3 
value="0 AC \{B\}"}
C {lab_wire.sym} 1380 -370 0 1 {name=p20 sig_type=std_logic lab=VREF_1V}
C {lab_wire.sym} 1380 -350 0 1 {name=p21 sig_type=std_logic lab=VREF_0P9V}
C {lab_wire.sym} 1380 -290 0 1 {name=p24 sig_type=std_logic lab=VREF_0P5V}
C {capa.sym} 1670 -330 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1670 -300 1 1 {name=p25 lab=VSS}
C {capa.sym} 1600 -300 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1600 -270 1 1 {name=p26 lab=VSS}
C {capa.sym} 1540 -240 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1540 -210 1 1 {name=p27 lab=VSS}
C {libs/core_biasgen/biasgen_buffer/biasgen_buffer.sym} 1060 -1110 0 0 {name=xI_Buffer1}
C {lab_pin.sym} 1260 -1290 0 1 {name=p28 lab=VDD}
C {lab_pin.sym} 1060 -1190 0 0 {name=p29 lab=EN}
C {lab_pin.sym} 1060 -1170 0 0 {name=p30 lab=ENB}
C {lab_pin.sym} 1120 -1090 1 1 {name=p31 lab=SUB}
C {lab_pin.sym} 1180 -1090 0 1 {name=p37 lab=ibias_q}
C {lab_pin.sym} 1320 -1130 0 1 {name=p40 lab=VBG_buff_q}
C {lab_pin.sym} 1100 -1090 1 1 {name=p41 lab=VSS}
C {libs/core_biasgen/biasgen_resistor_divider/biasgen_resistor_divider.sym} 1280 -780 0 0 {name=xI_divider1}
C {lab_pin.sym} 1300 -1060 0 0 {name=p42 lab=VDD}
C {lab_pin.sym} 1320 -780 1 1 {name=p43 lab=VSS}
C {lab_pin.sym} 1060 -1230 0 0 {name=p47 lab=vp}
C {lab_wire.sym} 1380 -980 0 1 {name=p49 sig_type=std_logic lab=VREF_1V_q}
C {lab_wire.sym} 1380 -960 0 1 {name=p50 sig_type=std_logic lab=VREF_0P9V_q}
C {lab_wire.sym} 1380 -900 0 1 {name=p51 sig_type=std_logic lab=VREF_0P5V_q}
C {capa.sym} 1670 -940 0 0 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1670 -910 1 1 {name=p52 lab=VSS}
C {capa.sym} 1600 -910 0 0 {name=C7
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1600 -880 1 1 {name=p53 lab=VSS}
C {capa.sym} 1540 -850 0 0 {name=C8
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1540 -820 1 1 {name=p54 lab=VSS}
C {lab_wire.sym} 680 -710 0 0 {name=p1 sig_type=std_logic lab=EN}
C {vsource.sym} 980 -480 0 0 {name=V5 value=2 savecurrent=false}
C {lab_wire.sym} 980 -540 0 0 {name=p2  lab=EN}
