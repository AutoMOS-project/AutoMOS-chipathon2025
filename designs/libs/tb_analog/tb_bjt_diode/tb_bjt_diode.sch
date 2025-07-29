v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1430 -510 2230 -190 {flags=graph
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
N 1020 -190 1060 -190 {lab=GND}
N 1060 -260 1060 -190 {lab=GND}
N 1060 -420 1060 -320 {lab=vbe1}
N 640 -300 640 -280 {lab=ibias}
N 640 -300 680 -300 {lab=ibias}
N 740 -300 780 -300 {lab=vsns}
N 780 -300 780 -280 {lab=vsns}
N 780 -220 780 -200 {lab=GND}
N 640 -200 780 -200 {lab=GND}
N 640 -210 640 -200 {lab=GND}
N 640 -220 640 -210 {lab=GND}
N 900 -220 900 -200 {lab=GND}
N 780 -200 900 -200 {lab=GND}
N 900 -300 900 -280 {lab=3V3}
N 1210 -190 1250 -190 {lab=GND}
N 1250 -260 1250 -190 {lab=GND}
N 1250 -420 1250 -320 {lab=vbe2}
N 1020 -290 1020 -260 {lab=#net1}
N 1020 -200 1020 -190 {lab=GND}
N 1210 -290 1210 -260 {lab=#net2}
N 1210 -200 1210 -190 {lab=GND}
C {symbols/pnp_05p00x00p42.sym} 1040 -290 0 0 {name=Q1
model=pnp_05p00x00p42
spiceprefix=X
m=2}
C {isource.sym} 640 -250 2 0 {name=I0 value=1u}
C {res.sym} 710 -300 1 0 {name=Rsense
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 780 -250 0 0 {name=vsense value=0 savecurrent=false}
C {gnd.sym} 640 -200 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 640 -300 0 0 {name=p1 sig_type=std_logic lab=ibias}
C {lab_pin.sym} 780 -300 2 0 {name=p2 sig_type=std_logic lab=vsns}
C {vsource.sym} 900 -250 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} 900 -300 0 0 {name=p22 sig_type=std_logic lab=3V3}
C {cccs.sym} 1060 -450 0 0 {name=F1 vnam=vsense value=8}
C {gnd.sym} 1060 -480 1 0 {name=l2 lab=GND}
C {cccs.sym} 1250 -450 0 0 {name=F2 vnam=vsense value=8}
C {gnd.sym} 1250 -480 1 0 {name=l3 lab=GND}
C {symbols/pnp_05p00x00p42.sym} 1230 -290 0 0 {name=Q2
model=pnp_05p00x00p42
spiceprefix=X
m=16}
C {gnd.sym} 1060 -190 0 0 {name=l4 lab=GND}
C {gnd.sym} 1250 -190 0 0 {name=l5 lab=GND}
C {ammeter.sym} 1020 -230 2 0 {name=Vbase1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1210 -230 2 0 {name=Vbase2 savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} 0 -140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
*.lib $::180MCU_MODELS/sm141064.ngspice typical
*.lib $::180MCU_MODELS/sm141064.ngspice res_typical
*.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -410 0 0 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.control
save all
op
dc temp -40 125 1
write tb_bjt_diode.raw
.endc
"}
C {lab_wire.sym} 1060 -370 0 0 {name=p3 sig_type=std_logic lab=vbe1}
C {lab_wire.sym} 1250 -370 0 0 {name=p4 sig_type=std_logic lab=vbe2}
C {launcher.sym} 420 -580 0 0 {name=h2
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
