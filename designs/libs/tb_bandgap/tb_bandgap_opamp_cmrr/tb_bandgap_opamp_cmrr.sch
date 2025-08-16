v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1230 -1120 2030 -720 {flags=graph
y1=-59
y2=46
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=10
divx=5
subdivx=8
xlabmag=0.75
ylabmag=0.75
node="Common mode; vout db20() %0
Differential mode; vout db20() %1"
color="7 4"
dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac
autoload=1
rawfile=$netlist_dir/tb_bandgap_opamp_cmrr.raw}
B 2 1230 -630 2030 -230 {flags=graph
y1=0.046
y2=56
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=10
divx=5
subdivx=8
xlabmag=0.75
ylabmag=0.75
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_bandgap_opamp_cmrr_result.raw
autoload=1
sim_type=ac
color=6
node=cmrr}
N 580 -410 580 -360 {lab=VSS}
N 580 -390 650 -390 {lab=VSS}
N 650 -410 650 -390 {lab=VSS}
N 580 -520 580 -470 {lab=VDD}
N 650 -550 650 -500 {lab=VCM}
N 960 -470 1040 -470 {lab=vout}
N 1040 -470 1040 -450 {lab=vout}
N 510 -410 510 -390 {lab=VSS}
N 510 -390 580 -390 {lab=VSS}
N 510 -510 510 -470 {lab=ibias}
N 650 -440 650 -410 {lab=VSS}
N 400 -510 400 -470 {lab=vdiff}
N 400 -410 400 -390 {lab=VSS}
N 440 -390 510 -390 {lab=VSS}
N 510 -580 550 -580 {lab=VSS}
N 510 -620 550 -620 {lab=vdiff}
N 630 -580 670 -580 {lab=VSS}
N 630 -620 670 -620 {lab=vdiff}
N 590 -570 590 -560 {lab=VCM}
N 590 -560 590 -550 {lab=VCM}
N 590 -550 710 -550 {lab=VCM}
N 710 -570 710 -550 {lab=VCM}
N 590 -690 590 -630 {lab=vp}
N 710 -690 710 -630 {lab=vn}
N 400 -390 440 -390 {lab=VSS}
C {gnd.sym} 580 -300 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1040 -470 0 1 {name=p4 lab=vout}
C {vsource.sym} 580 -440 0 0 {name=V1 value="2" savecurrent=false}
C {vsource.sym} 650 -470 0 0 {name=V2 
value="1.2 AC \{ac_cm\}"}
C {vsource.sym} 580 -330 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 650 -390 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 580 -500 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 650 -530 0 0 {name=p9  lab=VCM}
C {capa.sym} 1040 -420 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1040 -390 1 1 {name=p11 lab=VSS}
C {devices/code_shown.sym} 0 -240 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} 0 -1010 0 0 {name=NGSPICE only_toplevel=true
value="
.param ac_cm=0
.param ac_diff=0
.control
** Define input signal
let VDD=3.3

** Set sources
alter @V1[DC] = $&VDD

** Simulations
op
save all
write tb_bandgap_opamp_cmrr.raw
set appendwrite

alterparam ac_cm=1
reset
ac dec 100 0.1 10G
write tb_bandgap_opamp_cmrr.raw
set appendwrite

alterparam ac_cm=0
alterparam ac_diff=1
reset
ac dec 100 0.1 10G
write tb_bandgap_opamp_cmrr.raw
*unset appendwrite

*setplot new
let frequency=ac1.frequency
let cmrr_real=ac2.vout/ac1.vout
let cmrr=db(ac2.vout)-db(ac1.vout)
write tb_bandgap_opamp_cmrr_result.raw

.endc
"}
C {isource.sym} 510 -440 0 0 {name=I0 value=2u}
C {lab_pin.sym} 510 -490 2 1 {name=p12 lab=ibias}
C {libs/core_analog/opamp_two_stage/opamp_two_stage.sym} 820 -410 0 0 {name=x1}
C {lab_pin.sym} 880 -530 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 820 -490 0 0 {name=p2 lab=ibias}
C {lab_pin.sym} 820 -450 0 0 {name=p5 lab=vp}
C {lab_pin.sym} 880 -410 0 1 {name=p6 lab=VSS}
C {launcher.sym} 770 -820 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_dc.raw"
}
C {launcher.sym} 770 -780 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {vcvs.sym} 590 -600 0 0 {name=E1 value=0.5}
C {vcvs.sym} 710 -600 0 0 {name=E2 value=-0.5}
C {vsource.sym} 400 -440 0 0 {name=V3 value="0 AC \{ac_diff\}" savecurrent=false}
C {lab_pin.sym} 400 -500 0 0 {name=p3 sig_type=std_logic lab=vdiff}
C {lab_pin.sym} 540 -620 0 0 {name=p10 sig_type=std_logic lab=vdiff}
C {lab_pin.sym} 540 -580 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -620 0 0 {name=p14 sig_type=std_logic lab=vdiff}
C {lab_pin.sym} 660 -580 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 820 -470 0 0 {name=p16 lab=vn}
C {lab_pin.sym} 590 -670 0 0 {name=p17 sig_type=std_logic lab=vp}
C {lab_pin.sym} 710 -670 0 0 {name=p18 sig_type=std_logic lab=vn}
C {title.sym} 160 -40 0 0 {name=l3 author="Luighi Viton"}
