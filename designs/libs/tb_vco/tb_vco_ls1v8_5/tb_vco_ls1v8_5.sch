v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 710 -590 1510 -190 {flags=graph
y2=5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=12
dataset=-1
unitx=1
logx=0
logy=0
y1=-0.5
hilight_wave=0
x2=9e-09}
B 2 710 -1010 1510 -610 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-09
x2=9e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=in
rawfile=$netlist_dir/tran_ls.raw}
N 320 -710 320 -680 {lab=VSS}
N 320 -630 320 -620 {lab=GND}
N 230 -710 230 -680 {lab=VDDL}
N 230 -630 230 -620 {lab=GND}
N 140 -630 140 -620 {lab=GND}
N 140 -710 140 -690 {lab=VDDH}
N 260 -960 260 -930 {lab=VDDH}
N 240 -960 260 -960 {lab=VDDH}
N 300 -960 300 -930 {lab=VDDL}
N 300 -960 320 -960 {lab=VDDL}
N 280 -810 280 -790 {lab=VSS}
N 110 -870 130 -870 {lab=in}
N 430 -870 450 -870 {lab=out}
N 410 -710 410 -680 {lab=in}
N 410 -630 410 -620 {lab=GND}
C {code_shown.sym} 140 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 130 -530 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
save all
tran 100p 500n 0 10p
plot in out
write tran_ls.raw
.endc
"}
C {vsource.sym} 140 -660 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 140 -620 0 0 {name=l1 lab=GND}
C {vsource.sym} 320 -660 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 320 -620 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 320 -710 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {vsource.sym} 230 -660 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 230 -620 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 230 -710 0 0 {name=p4 sig_type=std_logic lab=VDDL}
C {lab_pin.sym} 140 -710 0 0 {name=p1 sig_type=std_logic lab=VDDH}
C {libs/core_vco/vco_ls1v8_5/vco_ls1v8_5.sym} 280 -870 0 0 {name=x1}
C {lab_pin.sym} 240 -960 0 0 {name=p2 sig_type=std_logic lab=VDDH}
C {lab_pin.sym} 320 -960 0 1 {name=p3 sig_type=std_logic lab=VDDL}
C {lab_pin.sym} 280 -790 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 -870 0 0 {name=p6 sig_type=std_logic lab=in}
C {lab_pin.sym} 450 -870 0 1 {name=p7 sig_type=std_logic lab=out}
C {vsource.sym} 410 -660 0 0 {name=V4 value="PULSE(0 1.8 0 10p 10p 0.833n 1.667n)" savecurrent=false

}
C {gnd.sym} 410 -620 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 410 -710 0 0 {name=p8 sig_type=std_logic lab=in}
C {launcher.sym} 190 -250 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tran_ls.raw tran"}
