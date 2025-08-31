v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1580 -570 2380 -170 {flags=graph
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=f_2
color=12
dataset=-1
unitx=1
logx=0
logy=0
y1=0
hilight_wave=0
rawfile=$netlist_dir/tran_ffd.raw
x2=40n}
B 2 1580 -990 2380 -590 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=40n
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=CLK
rawfile=$netlist_dir/tran_ffd.raw}
B 2 2430 -990 3230 -590 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=7
node=f_4
rawfile=$netlist_dir/tran_ffd.raw
x2=40n}
N 210 -700 210 -670 {lab=VSS}
N 210 -620 210 -610 {lab=GND}
N 140 -620 140 -610 {lab=GND}
N 140 -700 140 -680 {lab=VDD}
N 280 -700 280 -670 {lab=CLK}
N 280 -620 280 -610 {lab=GND}
N 240 -1020 240 -990 {lab=VDD}
N 240 -820 240 -790 {lab=VSS}
N 310 -940 340 -940 {lab=f_2}
N 310 -870 340 -870 {lab=#net1}
N 140 -940 170 -940 {lab=#net1}
N 140 -870 170 -870 {lab=CLK}
N 340 -870 440 -870 {lab=#net1}
N 120 -1050 440 -1050 {lab=#net1}
N 120 -1050 120 -940 {lab=#net1}
N 120 -940 140 -940 {lab=#net1}
N 620 -1020 620 -990 {lab=VDD}
N 620 -820 620 -790 {lab=VSS}
N 690 -940 720 -940 {lab=f_4}
N 690 -870 720 -870 {lab=#net2}
N 520 -940 550 -940 {lab=#net2}
N 520 -870 550 -870 {lab=#net1}
N 720 -870 820 -870 {lab=#net2}
N 490 -870 520 -870 {lab=#net1}
N 820 -1050 820 -870 {lab=#net2}
N 520 -1050 820 -1050 {lab=#net2}
N 520 -1050 520 -940 {lab=#net2}
N 440 -1050 440 -870 {lab=#net1}
N 440 -870 490 -870 {lab=#net1}
C {code_shown.sym} 140 -360 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 130 -520 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
save all
tran 100p 500n 0 10p
write tran_ffd.raw
.endc
"}
C {vsource.sym} 140 -650 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 140 -610 0 0 {name=l1 lab=GND}
C {vsource.sym} 210 -650 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 210 -610 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 210 -700 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 -700 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} 280 -650 0 0 {name=V4 value="PULSE(0 1.8 0 10p 10p 2.5n 5n)" savecurrent=false

}
C {gnd.sym} 280 -610 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 280 -700 0 0 {name=p8 sig_type=std_logic lab=CLK}
C {launcher.sym} 190 -240 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tran_ffd.raw tran"}
C {libs/core_vco/vco_ffd/vco_ffd.sym} 170 -820 0 0 {name=x1}
C {lab_pin.sym} 140 -870 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 240 -1020 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -790 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {libs/core_vco/vco_ffd/vco_ffd.sym} 550 -820 0 0 {name=x2}
C {lab_pin.sym} 620 -1020 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 620 -790 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 720 -940 0 1 {name=p12 sig_type=std_logic lab=f_4}
C {lab_pin.sym} 340 -940 2 0 {name=p7 sig_type=std_logic lab=f_2}
