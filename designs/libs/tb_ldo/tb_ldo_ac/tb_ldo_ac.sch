v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -1220 2420 -820 {flags=graph
y1=-140
y2=60
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="LDO Open-loop Gain
re(gain_db)"
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_ldo_ac.raw
sim_type=ac
autoload=1
legend=1
mode=Line
x1=0
x2=10}
B 2 1620 -720 2420 -320 {flags=graph
y1=-60
y2=60
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/tb_ldo_ac.raw
color="4 7"
node="OTA Open-loop Gain
re(gain_db_ota)"
autoload=1
sim_type=ac
x1=0
x2=10}
N 990 -810 990 -780 {lab=GND}
N 470 -910 470 -870 {lab=VDD}
N 990 -1010 990 -970 {lab=VDD}
N 470 -810 470 -770 {lab=GND}
N 540 -910 540 -870 {lab=VDD}
N 540 -810 540 -760 {lab=ibias}
N 1260 -730 1260 -710 {lab=GND}
N 1260 -810 1260 -790 {lab=#net1}
N 1260 -890 1260 -870 {lab=#net2}
N 1160 -890 1260 -890 {lab=#net2}
N 1160 -770 1160 -710 {lab=GND}
N 850 -870 900 -870 {lab=ibias}
N 610 -810 610 -770 {lab=GND}
N 610 -930 610 -870 {lab=vref}
N 850 -930 900 -930 {lab=vref}
N 680 -810 680 -770 {lab=GND}
N 680 -930 680 -870 {lab=in}
N 850 -910 900 -910 {lab=in}
N 830 -890 900 -890 {lab=out}
N 1160 -860 1160 -830 {lab=#net2}
N 1160 -890 1160 -860 {lab=#net2}
N 1010 -810 1010 -800 {lab=#net3}
N 1070 -890 1160 -890 {lab=#net2}
N 860 -850 900 -850 {lab=EN}
N 750 -910 750 -870 {lab=EN}
N 750 -810 750 -770 {lab=GND}
N 750 -930 750 -910 {lab=EN}
C {gnd.sym} 990 -780 0 0 {name=l2 lab=GND}
C {res.sym} 1160 -800 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 470 -840 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 470 -770 0 0 {name=l3 lab=GND}
C {vsource.sym} 610 -840 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 540 -840 0 0 {name=I0 value=10u}
C {gnd.sym} 610 -770 0 0 {name=l4 lab=GND}
C {gnd.sym} 1160 -710 0 0 {name=l5 lab=GND}
C {capa.sym} 1260 -760 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1260 -840 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1260 -710 0 0 {name=l6 lab=GND}
C {vdd.sym} 470 -910 0 0 {name=l7 lab=VDD}
C {vdd.sym} 990 -1010 0 0 {name=l8 lab=VDD}
C {vdd.sym} 540 -910 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 610 -930 3 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 540 -770 1 0 {name=p3 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 860 -870 0 1 {name=p4 sig_type=std_logic lab=ibias
}
C {lab_wire.sym} 860 -930 0 1 {name=p5 sig_type=std_logic lab=vref}
C {vsource.sym} 680 -840 0 0 {name=V3 value=0.9 savecurrent=false}
C {gnd.sym} 680 -770 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 680 -930 3 0 {name=p6 sig_type=std_logic lab=in}
C {lab_wire.sym} 860 -910 0 1 {name=p7 sig_type=std_logic lab=in}
C {noconn.sym} 830 -890 0 0 {name=l11}
C {lab_wire.sym} 860 -890 0 1 {name=p8 sig_type=std_logic lab=out
}
C {simulator_commands.sym} 250 -1030 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white   

** Set sources
alter @V3[AC] = 1

** Simulations
ac dec 100 1 10G

** Plots
setplot ac1
let gain_db = db(v(out))
let gain_db_ota = db(v(x1.vota))
plot gain_db 
plot gain_db_ota

** Measurements
meas ac DC_gain FIND gain_db AT=1Hz
let gain_3db = DC_gain-3
meas ac f_3db WHEN gain_db = $&gain_3db
meas ac f_0db WHEN gain_db = 0

write tb_ldo_ac.raw
.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -790 0 0 {name=MODELS
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
C {title-3.sym} 0 0 0 0 {name=l12 author="Julio Vilca" rev=1.0 lock=true page=4 pages=8}
C {launcher.sym} 300 -200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_ac.raw"
}
C {noconn.sym} 1010 -800 3 0 {name=l13}
C {libs/core_ldo/ldo/ldo.sym} 1050 -890 0 0 {name=x1}
C {lab_wire.sym} 880 -850 0 0 {name=p2 sig_type=std_logic lab=EN}
C {vsource.sym} 750 -840 0 0 {name=V4 value=2 savecurrent=false}
C {gnd.sym} 750 -770 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 750 -920 3 0 {name=p9 sig_type=std_logic lab=EN}
