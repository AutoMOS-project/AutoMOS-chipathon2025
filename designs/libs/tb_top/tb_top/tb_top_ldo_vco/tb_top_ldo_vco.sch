v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -1200 2420 -800 {flags=graph
y1=1.827
y2=1.867
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
N 990 -1260 990 -1230 {lab=VCON}
N 1090 -1260 1090 -1230 {lab=IBIAS2}
N 1180 -820 1210 -820 {lab=IBIAS2}
N 990 -1180 990 -1170 {lab=GND}
N 1170 -1260 1170 -1230 {lab=EN}
N 1170 -1180 1170 -1170 {lab=GND}
N 1180 -800 1210 -800 {lab=EN}
N 770 -910 780 -910 {lab=#net1}
N 890 -870 890 -860 {lab=#net2}
N 1310 -760 1310 -750 {lab=#net3}
N 780 -970 780 -950 {lab=#net4}
N 750 -930 780 -930 {lab=IBIAS1}
N 1210 -950 1290 -950 {lab=VLDO}
N 1290 -950 1290 -940 {lab=VLDO}
N 1290 -940 1290 -920 {lab=VLDO}
N 1180 -860 1210 -860 {lab=VCON}
N 790 -1260 790 -1230 {lab=VREF}
N 790 -1180 790 -1170 {lab=GND}
N 750 -990 780 -990 {lab=VREF}
N 1040 -790 1040 -770 {lab=GND}
N 1040 -870 1040 -850 {lab=#net5}
N 1040 -950 1040 -930 {lab=VLDO}
N 1390 -860 1480 -860 {lab=VVCO}
N 870 -1180 870 -1160 {lab=IBIAS1}
N 600 -1170 600 -1160 {lab=GND}
N 600 -1240 600 -1230 {lab=#net6}
N 600 -1240 620 -1240 {lab=#net6}
N 680 -1240 700 -1240 {lab=VDD}
N 700 -1240 700 -1230 {lab=VDD}
N 700 -1170 700 -1160 {lab=GND}
N 600 -1160 700 -1160 {lab=GND}
N 950 -950 1150 -950 {lab=VLDO}
N 1480 -860 1480 -830 {lab=VVCO}
N 1480 -770 1480 -750 {lab=GND}
N 1150 -950 1210 -950 {lab=VLDO}
C {vsource.sym} 990 -1210 0 0 {name=V3 value=1.2 savecurrent=false}
C {gnd.sym} 990 -1170 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 990 -1260 0 0 {name=p9 sig_type=std_logic lab=VCON}
C {isource.sym} 1090 -1200 0 0 {name=I2 value=10u}
C {gnd.sym} 1090 -1170 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 1090 -1260 0 0 {name=p10 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 1180 -820 2 1 {name=p3 sig_type=std_logic lab=IBIAS2}
C {gnd.sym} 1290 -760 0 1 {name=l9 lab=GND}
C {vsource.sym} 1170 -1210 0 0 {name=V4 value="PWL(0u 0 100n 0 200n 1.8 1u 1.8)" savecurrent=false}
C {gnd.sym} 1170 -1170 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1170 -1260 0 0 {name=p4 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1180 -800 0 0 {name=p5 sig_type=std_logic lab=EN}
C {libs/core_vco/vco/vco.sym} 1230 -900 0 0 {name=x1}
C {libs/core_ldo/ldo/ldo.sym} 930 -950 0 0 {name=x4}
C {lab_wire.sym} 1090 -950 0 0 {name=p2 sig_type=std_logic lab=VLDO}
C {gnd.sym} 870 -870 0 1 {name=l11 lab=GND}
C {noconn.sym} 770 -910 0 0 {name=l12}
C {noconn.sym} 890 -860 3 0 {name=l13}
C {noconn.sym} 1310 -750 3 0 {name=l10}
C {lab_wire.sym} 1450 -860 0 0 {name=p7 sig_type=std_logic lab=VVCO}
C {lab_pin.sym} 750 -930 2 1 {name=p1 sig_type=std_logic lab=IBIAS1}
C {lab_pin.sym} 1180 -860 2 1 {name=p8 sig_type=std_logic lab=VCON}
C {vsource.sym} 790 -1210 0 0 {name=V2 value=0.9 savecurrent=false}
C {gnd.sym} 790 -1170 0 0 {name=l2 lab=GND
value=0.9}
C {lab_pin.sym} 790 -1260 0 0 {name=p11 sig_type=std_logic lab=VREF
value=0.9}
C {lab_pin.sym} 750 -990 2 1 {name=p12 sig_type=std_logic lab=VREF}
C {vdd.sym} 870 -1030 0 0 {name=l8 lab=VDD}
C {capa.sym} 1040 -820 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1040 -900 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1040 -770 0 0 {name=l14 lab=GND}
C {simulator_commands.sym} 270 -1030 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white      

** Simulations Temperature and Line Regulation
dc TEMP -40 125 1  V1 2 5 0.05

** Measurements
meas dc Vldo_max MAX v(VLDO)
meas dc Vldo_min MIN v(VLDO)
let dev_max = abs(Vldo_max - 1.8)
print dev_max
let dev_min = abs(Vldo_min - 1.8)
print dev_min
let Vldo_acc_abs = max(dev_max, dev_min) 
print Vldo_acc_abs
let Vldo_acc_rel = (Vldo_acc_abs / 1.8) * 100 
print Vldo_acc_rel

** Plots
setplot dc1
let vldo=v(VLDO)
plot vldo



write tb_top_ldo_vco.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 270 -780 0 0 {name=MODELS
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
C {isource.sym} 870 -1210 0 0 {name=I1 value=10u}
C {vdd.sym} 870 -1240 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} 870 -1160 0 1 {name=p6 sig_type=std_logic lab=IBIAS1}
C {vdd.sym} 700 -1240 0 0 {name=l5 lab=VDD}
C {res.sym} 650 -1240 3 1 {name=Ri
value=1
footprint=1206
device=resistor
m=1}
C {capa.sym} 700 -1200 0 0 {name=Ci
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 600 -1200 0 1 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 600 -1160 0 0 {name=l15 lab=GND}
C {capa.sym} 1480 -800 0 0 {name=Cout
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1480 -750 0 1 {name=l1 lab=GND}
C {title-3.sym} 0 0 0 0 {name=l16 author="Julio Vilca" rev=1.0 lock=true page=1 pages=3}
C {launcher.sym} 310 -200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_top_ldo_vco.raw"
}
C {launcher.sym} 630 -200 0 0 {name=h1
descr="RUN PVT" 
tclcommand="
set spicefile $netlist_dir/tb_top_ldo_vco.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/typical/ff/\} $spicefile
exec sed -i \{s/tb_top_ldo_vco.raw/tb_top_ldo_vco_ff.raw/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_top_ldo_vco_ff.raw/tb_top_ldo_vco_ss.raw/\} $spicefile
simulate
"}
