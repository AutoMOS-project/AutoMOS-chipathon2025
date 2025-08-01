v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1260 -1230 2060 -830 {flags=graph
y1=-71
y2=110
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="Common mode; vout db20() %0
Differential mode; vout db20() %1"
color="7 4"
dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac
autoload=1
rawfile=$netlist_dir/tb_opamp_two_stage_cmrr.raw}
B 2 1260 -740 2060 -340 {flags=graph
y1=0.007
y2=98
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.1
x2=11.1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_opamp_two_stage_cmrr_result.raw
autoload=1
sim_type=table
color=11
node=cmrr}
N 610 -520 610 -470 {lab=VSS}
N 610 -500 680 -500 {lab=VSS}
N 680 -520 680 -500 {lab=VSS}
N 610 -630 610 -580 {lab=VDD}
N 680 -660 680 -610 {lab=VCM}
N 990 -580 1070 -580 {lab=vout}
N 1070 -580 1070 -560 {lab=vout}
N 540 -520 540 -500 {lab=VSS}
N 540 -500 610 -500 {lab=VSS}
N 540 -620 540 -580 {lab=ibias}
N 680 -550 680 -520 {lab=VSS}
N 430 -620 430 -580 {lab=vdiff}
N 430 -520 430 -500 {lab=VSS}
N 470 -500 540 -500 {lab=VSS}
N 540 -690 580 -690 {lab=VSS}
N 540 -730 580 -730 {lab=vdiff}
N 660 -690 700 -690 {lab=VSS}
N 660 -730 700 -730 {lab=vdiff}
N 620 -680 620 -670 {lab=VCM}
N 620 -670 620 -660 {lab=VCM}
N 620 -660 740 -660 {lab=VCM}
N 740 -680 740 -660 {lab=VCM}
N 620 -800 620 -740 {lab=vp}
N 740 -800 740 -740 {lab=vn}
N 430 -500 470 -500 {lab=VSS}
C {gnd.sym} 610 -410 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1070 -580 0 1 {name=p4 lab=vout}
C {vsource.sym} 610 -550 0 0 {name=V1 value="3.3" savecurrent=false}
C {vsource.sym} 680 -580 0 0 {name=V2 
value="1.65 AC \{ac_cm\}"}
C {vsource.sym} 610 -440 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 680 -500 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 610 -610 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 680 -640 0 0 {name=p9  lab=VCM}
C {capa.sym} 1070 -530 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1070 -500 1 1 {name=p11 lab=VSS}
C {devices/code_shown.sym} 30 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 10 -1000 0 0 {name=NGSPICE only_toplevel=true
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
write tb_opamp_two_stage_cmrr.raw
set appendwrite

alterparam ac_cm=1
reset
ac dec 100 0.1 10G
write tb_opamp_two_stage_cmrr.raw
set appendwrite

alterparam ac_cm=0
alterparam ac_diff=1
reset
ac dec 100 0.1 10G
write tb_opamp_two_stage_cmrr.raw
*unset appendwrite

*setplot new
let frequency=ac1.frequency
let cmrr_real=ac2.vout/ac1.vout
let cmrr=db(ac2.vout)-db(ac1.vout)
write tb_opamp_two_stage_cmrr_result.raw

.endc
"}
C {isource.sym} 540 -550 0 0 {name=I0 value=2u}
C {lab_pin.sym} 540 -600 2 1 {name=p12 lab=ibias}
C {libs/core_analog/opamp_two_stage/opamp_two_stage.sym} 850 -520 0 0 {name=x1}
C {lab_pin.sym} 910 -640 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 850 -600 0 0 {name=p2 lab=ibias}
C {lab_pin.sym} 850 -560 0 0 {name=p5 lab=vp}
C {lab_pin.sym} 910 -520 0 1 {name=p6 lab=VSS}
C {launcher.sym} 800 -930 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_dc.raw"
}
C {launcher.sym} 800 -890 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {vcvs.sym} 620 -710 0 0 {name=E1 value=0.5}
C {vcvs.sym} 740 -710 0 0 {name=E2 value=-0.5}
C {vsource.sym} 430 -550 0 0 {name=V3 value="0 AC \{ac_diff\}" savecurrent=false}
C {lab_pin.sym} 430 -610 0 0 {name=p3 sig_type=std_logic lab=vdiff}
C {lab_pin.sym} 570 -730 0 0 {name=p10 sig_type=std_logic lab=vdiff}
C {lab_pin.sym} 570 -690 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 690 -730 0 0 {name=p14 sig_type=std_logic lab=vdiff}
C {lab_pin.sym} 690 -690 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 850 -580 0 0 {name=p16 lab=vn}
C {lab_pin.sym} 620 -780 0 0 {name=p17 sig_type=std_logic lab=vp}
C {lab_pin.sym} 740 -780 0 0 {name=p18 sig_type=std_logic lab=vn}
C {title.sym} 160 -40 0 0 {name=l2 author="Luighi Viton"}
