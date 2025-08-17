v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1480 -1060 2280 -660 {flags=graph
y1=1.795
y2=1.835
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout(FF); vout % $netlist_dir/tb_ldo_ff.raw
vout(TT); vout % $netlist_dir/tb_ldo.raw
vout(SS); vout % $netlist_dir/tb_ldo_ss.raw"
color="7 11 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo.raw
x2=125
sim_type=dc
autoload=1}
N 920 -760 920 -730 {lab=GND}
N 510 -960 510 -920 {lab=VDD}
N 920 -960 920 -920 {lab=VDD}
N 510 -860 510 -820 {lab=GND}
N 680 -960 680 -920 {lab=VDD}
N 760 -880 760 -780 {lab=vref}
N 760 -880 830 -880 {lab=vref}
N 1000 -840 1070 -840 {lab=out}
N 1170 -680 1170 -660 {lab=GND}
N 1170 -760 1170 -740 {lab=#net1}
N 1170 -840 1170 -820 {lab=out}
N 1070 -840 1170 -840 {lab=out}
N 760 -720 760 -670 {lab=GND}
N 1070 -680 1070 -660 {lab=GND}
N 1070 -840 1070 -820 {lab=out}
N 1070 -820 1070 -780 {lab=out}
N 1070 -720 1070 -680 {lab=GND}
N 940 -760 940 -750 {lab=#net2}
N 680 -820 830 -820 {lab=#net3}
N 680 -860 680 -820 {lab=#net3}
N 830 -860 830 -840 {lab=#net4}
N 590 -960 590 -920 {lab=EN}
N 590 -860 590 -820 {lab=GND}
N 790 -800 830 -800 {lab=EN}
C {gnd.sym} 920 -730 0 0 {name=l2 lab=GND}
C {vsource.sym} 510 -890 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 510 -820 0 0 {name=l3 lab=GND}
C {vsource.sym} 760 -750 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 680 -890 0 0 {name=I0 value=10u}
C {gnd.sym} 760 -670 0 0 {name=l4 lab=GND}
C {gnd.sym} 1070 -660 0 0 {name=l5 lab=GND}
C {capa.sym} 1170 -710 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1170 -790 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1170 -660 0 0 {name=l6 lab=GND}
C {vdd.sym} 510 -960 0 0 {name=l7 lab=VDD}
C {vdd.sym} 920 -960 0 0 {name=l8 lab=VDD}
C {vdd.sym} 680 -960 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 810 -880 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1120 -840 0 0 {name=p2 sig_type=std_logic lab=out}
C {simulator_commands.sym} 250 -1000 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white

** Simulations Temperature and Line Regulation
dc TEMP -40 125 1  V1 2 5 0.25

** Measurements
meas dc Vout_max MAX v(out)
meas dc Vout_min MIN v(out)
let dev_max = abs(Vout_max - 1.8)
print dev_max
let dev_min = abs(Vout_min - 1.8)
print dev_min
let Vout_acc_abs = max(dev_max, dev_min) 
print Vout_acc_abs
let Vout_acc_rel = (Vout_acc_abs / 1.8) * 100 
print Vout_acc_rel

** Plots
setplot dc1
let vout=v(out)
plot vout

write tb_ldo.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -750 0 0 {name=MODELS
simulator=ngspice
only_toplevel=false
format="tcleval( @value )" 
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
* ngspice commands
"}
C {launcher.sym} 310 -200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_dc1.raw; xschem raw_read $netlist_dir/tb_ldo_dc2.raw; xschem raw_read $netlist_dir/tb_ldo_dc3.raw; xschem raw_read $netlist_dir/tb_ldo_dc4.raw"
}
C {noconn.sym} 940 -750 3 0 {name=l11}
C {launcher.sym} 630 -200 0 0 {name=h1
descr="RUN PVT" 
tclcommand="
set spicefile $netlist_dir/tb_ldo.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/typical/ff/\} $spicefile
exec sed -i \{s/tb_ldo.raw/tb_ldo_ff.raw/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_ldo_ff.raw/tb_ldo_ss.raw/\} $spicefile
simulate
"}
C {isource.sym} 1070 -750 0 0 {name=IL value=1m}
C {libs/core_ldo/ldo/ldo.sym} 980 -840 0 0 {name=x1}
C {vsource.sym} 590 -890 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 590 -820 0 0 {name=l19 lab=GND}
C {lab_wire.sym} 590 -950 3 0 {name=p5 sig_type=std_logic lab=EN}
C {lab_wire.sym} 810 -800 0 0 {name=p7 sig_type=std_logic lab=EN}
