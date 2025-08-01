v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1200 -680 2000 -360 {flags=graph
y1=0.51
y2=0.87
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
x2=125
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=dc
color="7 7 4 4 12 12"
node="\\"Vbe2 (SS);vbe2 % $netlist_dir/tb_bjt_diode_ss.raw\\"
\\"Vbe1 (SS);vbe1 % $netlist_dir/tb_bjt_diode_ss.raw\\"
\\"Vbe2 (TT);vbe2 % $netlist_dir/tb_bjt_diode.raw\\"
\\"Vbe1 (TT);vbe1 % $netlist_dir/tb_bjt_diode.raw\\"
\\"Vbe2 (FF);vbe2 % $netlist_dir/tb_bjt_diode_ff.raw\\"
\\"Vbe1 (FF);vbe1 % $netlist_dir/tb_bjt_diode_ff.raw\\""
rawfile=$netlist_dir/tb_bjt_diode.raw}
N 790 -360 830 -360 {lab=GND}
N 830 -430 830 -360 {lab=GND}
N 830 -590 830 -490 {lab=vbe1}
N 410 -470 410 -450 {lab=ibias}
N 410 -470 450 -470 {lab=ibias}
N 510 -470 550 -470 {lab=vsns}
N 550 -470 550 -450 {lab=vsns}
N 550 -390 550 -370 {lab=GND}
N 410 -370 550 -370 {lab=GND}
N 410 -380 410 -370 {lab=GND}
N 410 -390 410 -380 {lab=GND}
N 670 -390 670 -370 {lab=GND}
N 550 -370 670 -370 {lab=GND}
N 670 -470 670 -450 {lab=3V3}
N 980 -360 1020 -360 {lab=GND}
N 1020 -430 1020 -360 {lab=GND}
N 1020 -590 1020 -490 {lab=vbe2}
N 790 -460 790 -430 {lab=#net1}
N 790 -370 790 -360 {lab=GND}
N 980 -460 980 -430 {lab=#net2}
N 980 -370 980 -360 {lab=GND}
C {symbols/pnp_05p00x00p42.sym} 810 -460 0 0 {name=Q1
model=pnp_05p00x00p42
spiceprefix=X
m=2}
C {isource.sym} 410 -420 2 0 {name=I0 value=1u}
C {res.sym} 480 -470 1 0 {name=Rsense
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 550 -420 0 0 {name=vsense value=0 savecurrent=false}
C {gnd.sym} 410 -370 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 410 -470 0 0 {name=p1 sig_type=std_logic lab=ibias}
C {lab_pin.sym} 550 -470 2 0 {name=p2 sig_type=std_logic lab=vsns}
C {vsource.sym} 670 -420 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} 670 -470 0 0 {name=p22 sig_type=std_logic lab=3V3}
C {cccs.sym} 830 -620 0 0 {name=F1 vnam=vsense value=8}
C {gnd.sym} 830 -650 1 0 {name=l2 lab=GND}
C {cccs.sym} 1020 -620 0 0 {name=F2 vnam=vsense value=8}
C {gnd.sym} 1020 -650 1 0 {name=l3 lab=GND}
C {symbols/pnp_05p00x00p42.sym} 1000 -460 0 0 {name=Q2
model=pnp_05p00x00p42
spiceprefix=X
m=16}
C {gnd.sym} 830 -360 0 0 {name=l4 lab=GND}
C {gnd.sym} 1020 -360 0 0 {name=l5 lab=GND}
C {ammeter.sym} 790 -400 2 0 {name=Vbase1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 980 -400 2 0 {name=Vbase2 savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} 0 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
*.lib $::180MCU_MODELS/sm141064.ngspice typical
*.lib $::180MCU_MODELS/sm141064.ngspice res_typical
*.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -510 0 0 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.control
save all
op
dc temp -40 125 1
write tb_bjt_diode.raw
.endc
"}
C {lab_wire.sym} 830 -540 0 0 {name=p3 sig_type=std_logic lab=vbe1}
C {lab_wire.sym} 1020 -540 0 0 {name=p4 sig_type=std_logic lab=vbe2}
C {launcher.sym} 110 -680 0 0 {name=h2
descr="Run PVT"
tclcommand="
set spicefile $netlist_dir/tb_bjt_diode.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/typical/ff/\} $spicefile
exec sed -i \{s/tb_bjt_diode.raw/tb_bjt_diode_ff.raw/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_bjt_diode_ff.raw/tb_bjt_diode_ss.raw/\} $spicefile
simulate
"}
C {title.sym} 160 -40 0 0 {name=l6 author="Luighi Viton"}
