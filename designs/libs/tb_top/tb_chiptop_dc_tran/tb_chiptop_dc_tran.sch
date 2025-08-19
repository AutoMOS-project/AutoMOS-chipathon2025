v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1830 -1100 3060 -620 {flags=graph
y1=0
y2=5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="ldo_out
xI_chiptop.xI_top.vbg
xI_chiptop.xI_top.vbg_buf
xI_chiptop.xI_top.xi_bandgap.vstart_up
vdd
xI_chiptop.xI_top.vref_0p9v"
color="4 18 12 4 7 9"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_top_dc_tran.raw
autoload=1
sim_type=dc
hilight_wave=-1}
B 2 1830 -470 3060 -10 {flags=graph
y1=-0.017
y2=5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00017604468
divx=5
subdivx=1
xlabmag=0.75
ylabmag=0.75
node="ldo_out
xI_chiptop.xI_top.vbg
xI_chiptop.xI_top.vbg_buf
xI_chiptop.xI_top.xi_bandgap.vstart_up
vdd
xI_chiptop.xI_top.vref_0p9v"
color="4 18 12 4 7 18"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_top_dc_tran.raw
autoload=1
sim_type=tran
hilight_wave=-1}
T {VTEST must be always equal 
or higher than VDD} 850 -500 0 0 0.2 0.2 {}
N 680 -640 680 -610 {lab=VSS}
N 680 -720 680 -700 {lab=VDD}
N 1050 -490 1050 -320 {lab=VSS}
N 1050 -470 1070 -470 {lab=VSS}
N 1050 -450 1070 -450 {lab=VSS}
N 1050 -430 1070 -430 {lab=VSS}
N 1050 -410 1070 -410 {lab=VSS}
N 1050 -390 1070 -390 {lab=VSS}
N 1050 -370 1070 -370 {lab=VSS}
N 1050 -550 1070 -550 {lab=VSS}
N 1050 -550 1050 -490 {lab=VSS}
N 1050 -570 1070 -570 {lab=VSS}
N 1050 -570 1050 -550 {lab=VSS}
N 1050 -670 1070 -670 {lab=VSS}
N 1050 -670 1050 -570 {lab=VSS}
N 1050 -690 1050 -670 {lab=VSS}
N 1050 -710 1070 -710 {lab=VSS}
N 1050 -710 1050 -690 {lab=VSS}
N 750 -720 750 -700 {lab=BIAS_EN}
N 810 -720 810 -700 {lab=LDO_EN}
N 870 -720 870 -700 {lab=VCO_EN}
N 750 -640 750 -630 {lab=VSS}
N 750 -630 750 -620 {lab=VSS}
N 680 -620 750 -620 {lab=VSS}
N 810 -640 810 -620 {lab=VSS}
N 750 -620 870 -620 {lab=VSS}
N 870 -640 870 -620 {lab=VSS}
N 930 -720 930 -700 {lab=VCO_IN}
N 930 -640 930 -620 {lab=VSS}
N 870 -620 930 -620 {lab=VSS}
N 1660 -590 1660 -570 {lab=GND}
N 1660 -670 1660 -650 {lab=#net1}
N 1660 -750 1660 -730 {lab=LDO_OUT}
N 1560 -750 1660 -750 {lab=LDO_OUT}
N 1560 -590 1560 -570 {lab=GND}
N 1560 -750 1560 -730 {lab=LDO_OUT}
N 1560 -730 1560 -690 {lab=LDO_OUT}
N 1560 -630 1560 -590 {lab=GND}
N 1310 -750 1560 -750 {lab=LDO_OUT}
N 1380 -330 1380 -310 {lab=GND}
N 1380 -490 1380 -470 {lab=TEST_OUT}
N 1380 -470 1380 -430 {lab=TEST_OUT}
N 1380 -370 1380 -330 {lab=GND}
N 1310 -490 1460 -490 {lab=TEST_OUT}
N 1460 -490 1460 -430 {lab=TEST_OUT}
N 1460 -370 1460 -310 {lab=GND}
N 1310 -610 1400 -610 {lab=VCO_OUT}
N 1190 -310 1230 -310 {lab=VSS}
N 1050 -730 1070 -730 {lab=VSS}
N 1050 -730 1050 -710 {lab=VSS}
N 1050 -690 1070 -690 {lab=VSS}
C {devices/code_shown.sym} 10 -320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/designs/Chipathon2025_pads/xschem/gf180mcu_fd_io.spice
.include /foss/designs/Chipathon2025_pads/xschem/gf180mcu_fd_io__asig_5p0_extracted.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 10 -1100 0 0 {name=NGSPICE only_toplevel=true
value="
*.options savecurrents
.option method=gear
*.nodeset v(x1.bandgap_fb)=0.8
.nodeset v(xI_chiptop.xI_top.vbg)=1.2
.param RL_val=1.8k
.control
** Define input signal
let VDD=5.0
let Vstep=2.0
let T=100u
let td=1u
let trf=10u
let tON=0.5*T-trf

** Define transient params
let Tstop=2*T
* let Tstop=td+trf+tON
let Tstep=0.05*T

** Set sources
alter @V1[DC] = $&VDD
alter @V1[PULSE]= [ 0 $&VDD $&td $&trf $&trf 1 1 1 ]
alter @V2[PULSE]= [ 0 $&VDD 20u 10n 10n 1 1 1 ]
alter @V3[PULSE]= [ 0 $&VDD 40u 10n 10n 1 1 1 ]
alter @V4[PULSE]= [ 0 $&VDD 50u 10n 10n 1 1 1 ]
alter @V5[PULSE]= [ 0 0.6 150u 10n 10n 1 1 1 ]

** Simulations
op
save all
write tb_top_dc_tran.raw
set appendwrite

dc v1 0 $&VDD 0.1
write tb_top_dc_tran.raw
set appendwrite

tran $&Tstep $&Tstop
write tb_top_dc_tran.raw

.endc
"}
C {launcher.sym} 750 -1240 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp_two_stage_dc.raw"
}
C {launcher.sym} 750 -1200 0 0 {name=h1
descr="Backannotate" 
tclcommand="xschem annotate_op"}
C {title.sym} 160 -40 0 0 {name=l2 author="Luighi Viton"}
C {vsource.sym} 680 -670 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} 680 -720 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 680 -630 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {vsource.sym} 680 -580 0 0 {name=VSS_sense value=0 savecurrent=false}
C {gnd.sym} 680 -550 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1190 -850 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1190 -310 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1050 -320 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {vsource.sym} 750 -670 0 0 {name=V2 value=5 savecurrent=false}
C {vsource.sym} 810 -670 0 0 {name=V3 value=5 savecurrent=false}
C {vsource.sym} 870 -670 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 1070 -810 0 0 {name=p5 sig_type=std_logic lab=BIAS_EN}
C {lab_pin.sym} 750 -720 1 0 {name=p6 sig_type=std_logic lab=BIAS_EN}
C {lab_pin.sym} 810 -720 1 0 {name=p8 sig_type=std_logic lab=LDO_EN}
C {lab_pin.sym} 870 -720 1 0 {name=p9 sig_type=std_logic lab=VCO_EN}
C {lab_pin.sym} 1070 -750 0 0 {name=p10 sig_type=std_logic lab=LDO_EN}
C {lab_pin.sym} 1070 -590 0 0 {name=p11 sig_type=std_logic lab=VCO_EN}
C {vsource.sym} 930 -670 0 0 {name=V5 value=0 savecurrent=false}
C {lab_pin.sym} 930 -720 1 0 {name=p12 sig_type=std_logic lab=VCO_IN}
C {lab_pin.sym} 1070 -610 0 0 {name=p13 sig_type=std_logic lab=VCO_IN}
C {res.sym} 1560 -660 0 0 {name=RL
value=\{RL_val\}
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1560 -570 0 0 {name=l5 lab=GND}
C {capa.sym} 1660 -620 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1660 -700 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1660 -570 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 1610 -750 0 0 {name=p14 sig_type=std_logic lab=LDO_OUT}
C {res.sym} 1380 -400 0 0 {name=RTest
value=1Meg
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1380 -310 0 0 {name=l3 lab=GND}
C {capa.sym} 1460 -400 0 0 {name=CTest
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1460 -310 0 0 {name=l4 lab=GND}
C {capa.sym} 1400 -580 0 0 {name=CVCO
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1400 -550 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1070 -490 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1420 -490 0 0 {name=p15 sig_type=std_logic lab=TEST_OUT}
C {lab_wire.sym} 1390 -610 0 0 {name=p16 sig_type=std_logic lab=VCO_OUT}
C {libs/core_top/chiptop/chiptop.sym} 1070 -310 0 0 {name=xI_chiptop}
