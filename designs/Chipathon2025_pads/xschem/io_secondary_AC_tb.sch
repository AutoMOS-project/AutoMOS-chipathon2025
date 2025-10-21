v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1530 -480 2330 -80 {flags=graph
y1=-3.3
y2=-1.8e-07
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=3
x2=11
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="asig
pad"
color="6 4"
dataset=-1
unitx=1
logx=1
logy=1
sim_type=ac
rawfile=$netlist_dir/io_secondary_AC.raw
sweep=frequency
rainbow=1}
B 2 1530 -910 2330 -510 {flags=graph,unlocked
y1=-180
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=3
x2=11
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="ph(asig)
ph(pad)"
color="6 4"
dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac
rawfile=$netlist_dir/io_secondary_AC.raw
sweep=frequency
rainbow=1}
N 60 -100 60 -60 {lab=GND}
N 160 -100 160 -60 {lab=GND}
N 260 -100 260 -60 {lab=GND}
N 360 -100 360 -60 {lab=GND}
N 60 -200 60 -160 {lab=DVDD}
N 160 -200 160 -160 {lab=VDD}
N 260 -200 260 -160 {lab=DVSS}
N 360 -200 360 -160 {lab=VSS}
N 60 -60 360 -60 {lab=GND}
N 210 -60 210 -40 {lab=GND}
N 500 -60 500 -40 {
lab=GND}
N 500 -270 500 -210 {
lab=PAD}
N 500 -150 500 -120 {
lab=#net1}
N 500 -440 500 -270 {lab=PAD}
N 470 -440 500 -440 {lab=PAD}
N 10 -440 40 -440 {lab=to_gate}
N 240 -440 270 -440 {lab=asig}
C {vsource.sym} 60 -130 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 160 -130 0 0 {name=V2 value=5 savecurrent=false}
C {vsource.sym} 260 -130 0 0 {name=V3 value=0 savecurrent=false}
C {vsource.sym} 360 -130 0 0 {name=V4 value=0 savecurrent=false}
C {lab_wire.sym} 60 -200 0 0 {name=p1 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 160 -200 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 210 -40 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 260 -200 0 0 {name=p3 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} 360 -200 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 500 -90 0 0 {name=V5 value="DC 3 AC 1"}
C {devices/lab_wire.sym} 500 -250 0 0 {name=p5 sig_type=std_logic lab=PAD}
C {devices/gnd.sym} 500 -40 0 0 {name=l2 lab=GND}
C {devices/res.sym} 500 -180 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/code_shown.sym} 610 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
"}
C {devices/code_shown.sym} 620 -220 0 0 {name=s1
only_toplevel=false
value="
.control
   save all
   ac dec 100 1k 100G

   write io_secondary_AC.raw
* run
* display
* plot PAD ASIG
* plot vdb(asig) vdb(to_gate)
.endc
"}
C {Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 470 -360 0 1 {name=IO1
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {Chipathon2025_pads/xschem/symbols/io_secondary_5p0/io_secondary_5p0.sym} 40 -360 0 0 {name=IO2
spiceprefix=X
}
C {lab_wire.sym} 390 -520 0 1 {name=p6 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 390 -360 0 1 {name=p7 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} 350 -520 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -360 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -360 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -520 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 10 -440 0 0 {name=p12 sig_type=std_logic lab=to_gate}
C {devices/lab_wire.sym} 260 -440 0 0 {name=p13 sig_type=std_logic lab=asig}
C {devices/code_shown.sym} 0 -650 0 0 {name=DUT only_toplevel=true
format="tcleval( @value )"
value="
.include "/home/vasil/Downloads/AutoMOS-chipathon2025/designs/Chipathon2025_pads/xschem/gf180mcu_fd_io__asig_5p0_extracted.spice"
"}
C {launcher.sym} 1590 -50 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/io_secondary_AC.raw"
}
