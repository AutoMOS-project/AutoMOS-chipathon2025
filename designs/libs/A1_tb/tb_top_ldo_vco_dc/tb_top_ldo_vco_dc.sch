v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -940 2420 -540 {flags=graph
y1=1.80
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="LDO Output voltage
vldo"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_top_ldo_vco_dc.raw
autoload=1
sim_type=dc
y2=1.825
x1=2
x2=5}
N 1020 -1010 1020 -980 {lab=IBIAS2}
N 1070 -550 1100 -550 {lab=IBIAS2}
N 930 -930 930 -920 {lab=GND}
N 1100 -930 1100 -920 {lab=GND}
N 1070 -530 1100 -530 {lab=EN}
N 780 -600 780 -590 {lab=#net1}
N 1200 -490 1200 -480 {lab=#net2}
N 670 -700 670 -680 {lab=#net3}
N 640 -660 670 -660 {lab=IBIAS1}
N 1180 -680 1180 -670 {lab=VLDO}
N 1180 -670 1180 -650 {lab=VLDO}
N 1070 -590 1100 -590 {lab=VCON}
N 750 -930 750 -920 {lab=GND}
N 640 -720 670 -720 {lab=VREF}
N 930 -520 930 -500 {lab=GND}
N 930 -600 930 -580 {lab=#net4}
N 930 -680 930 -660 {lab=VLDO}
N 1280 -590 1370 -590 {lab=VVCO}
N 830 -930 830 -910 {lab=IBIAS1}
N 840 -680 930 -680 {lab=VLDO}
N 1170 -680 1180 -680 {lab=VLDO}
N 930 -680 1170 -680 {lab=VLDO}
N 560 -920 560 -910 {lab=GND}
N 560 -990 560 -980 {lab=#net5}
N 560 -990 580 -990 {lab=#net5}
N 640 -990 660 -990 {lab=VDD}
N 660 -990 660 -980 {lab=VDD}
N 660 -920 660 -910 {lab=GND}
N 560 -910 660 -910 {lab=GND}
N 1370 -590 1370 -560 {lab=VVCO}
N 1370 -500 1370 -480 {lab=GND}
N 750 -1010 750 -990 {lab=VREF}
N 930 -1010 930 -990 {lab=VCON}
N 1100 -1010 1100 -990 {lab=EN}
N 1210 -930 1210 -920 {lab=GND}
N 1210 -1010 1210 -990 {lab=LDO_EN}
N 640 -640 670 -640 {lab=LDO_EN}
C {vdd.sym} 660 -990 0 0 {name=l5 lab=VDD}
C {vsource.sym} 930 -960 0 0 {name=V3 value=0.6 savecurrent=false}
C {gnd.sym} 930 -920 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 930 -1010 0 0 {name=p9 sig_type=std_logic lab=VCON}
C {isource.sym} 1020 -950 0 0 {name=I2 value=10u}
C {gnd.sym} 1020 -920 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 1020 -1010 0 0 {name=p10 sig_type=std_logic lab=IBIAS2}
C {lab_pin.sym} 1070 -550 2 1 {name=p3 sig_type=std_logic lab=IBIAS2}
C {gnd.sym} 1180 -490 0 1 {name=l9 lab=GND}
C {vsource.sym} 1100 -960 0 0 {name=V4 value=1.8 savecurrent=false}
C {gnd.sym} 1100 -920 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1100 -1010 0 0 {name=p4 sig_type=std_logic lab=EN}
C {lab_pin.sym} 1070 -530 0 0 {name=p5 sig_type=std_logic lab=EN}
C {libs/core_vco/vco/vco.sym} 1120 -630 0 0 {name=x1}
C {libs/core_ldo/ldo/ldo.sym} 820 -680 0 0 {name=x2}
C {lab_wire.sym} 900 -680 0 0 {name=p2 sig_type=std_logic lab=VLDO}
C {gnd.sym} 760 -600 0 1 {name=l11 lab=GND}
C {noconn.sym} 780 -590 3 0 {name=l13}
C {noconn.sym} 1200 -480 3 0 {name=l10}
C {lab_wire.sym} 1340 -590 0 0 {name=p7 sig_type=std_logic lab=VVCO}
C {lab_pin.sym} 640 -660 2 1 {name=p1 sig_type=std_logic lab=IBIAS1}
C {lab_pin.sym} 1070 -590 2 1 {name=p8 sig_type=std_logic lab=VCON}
C {vsource.sym} 750 -960 0 0 {name=V2 value=0.9 savecurrent=false}
C {gnd.sym} 750 -920 0 0 {name=l2 lab=GND
value=0.9}
C {lab_pin.sym} 750 -1010 0 0 {name=p11 sig_type=std_logic lab=VREF
value=0.9}
C {lab_pin.sym} 640 -720 2 1 {name=p12 sig_type=std_logic lab=VREF}
C {vdd.sym} 760 -760 0 0 {name=l8 lab=VDD}
C {capa.sym} 930 -550 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 930 -630 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 930 -500 0 0 {name=l14 lab=GND}
C {simulator_commands.sym} 290 -870 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white      

** SIMULATIONS
dc V1 2 5 0.01  

** PLOTS
setplot dc1
let vldo = v(VLDO)
plot vldo

** MEASUREMENTS
meas dc Vldo_max MAX v(VLDO)
meas dc Vldo_min MIN v(VLDO)

write tb_top_ldo_vco_dc.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 290 -620 0 0 {name=MODELS
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
C {isource.sym} 830 -960 0 0 {name=I1 value=10u}
C {vdd.sym} 830 -990 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} 830 -910 0 1 {name=p6 sig_type=std_logic lab=IBIAS1}
C {res.sym} 610 -990 3 1 {name=Ri
value=1
footprint=1206
device=resistor
m=1}
C {capa.sym} 660 -950 0 0 {name=Ci
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 560 -950 0 1 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 560 -910 0 0 {name=l15 lab=GND}
C {capa.sym} 1370 -530 0 0 {name=Cout
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1370 -480 0 1 {name=l1 lab=GND}
C {title-3.sym} 0 0 0 0 {name=l16 author="Julio Vilca" rev=1.0 lock=true page=2 pages=3}
C {launcher.sym} 340 -150 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_top_ldo_vco_dc.raw tran"
}
C {vsource.sym} 1210 -960 0 0 {name=V6 value=3.3 savecurrent=false}
C {gnd.sym} 1210 -920 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1210 -1010 0 0 {name=p13 sig_type=std_logic lab=LDO_EN}
C {lab_pin.sym} 640 -640 0 0 {name=p14 sig_type=std_logic lab=LDO_EN}
