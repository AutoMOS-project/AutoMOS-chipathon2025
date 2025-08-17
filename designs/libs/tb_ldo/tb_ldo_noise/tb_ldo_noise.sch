v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -720 2420 -320 {flags=graph
y1=0
y2=20e-6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="LDO Output Noise
onoise_spectrum"
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
sim_type=noise
autoload=1
rawfile=$netlist_dir/tb_ldo_noise.raw
x1=0
x2=10}
B 2 1620 -1200 2420 -800 {flags=graph
y1=0
y2=1.2e-3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="LDO Input Noise
inoise_spectrum"
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
x1=0
x2=10
rawfile=$netlist_dir/tb_ldo_noise.raw}
N 910 -750 910 -720 {lab=GND}
N 480 -960 480 -920 {lab=VDD}
N 910 -950 910 -910 {lab=VDD}
N 480 -860 480 -820 {lab=GND}
N 640 -960 640 -920 {lab=VDD}
N 640 -860 640 -810 {lab=#net1}
N 640 -810 820 -810 {lab=#net1}
N 750 -870 750 -770 {lab=vref}
N 750 -870 820 -870 {lab=vref}
N 990 -830 1060 -830 {lab=out}
N 1160 -670 1160 -650 {lab=GND}
N 1160 -750 1160 -730 {lab=#net2}
N 1160 -830 1160 -810 {lab=out}
N 1060 -830 1160 -830 {lab=out}
N 750 -710 750 -660 {lab=GND}
N 1060 -670 1060 -650 {lab=GND}
N 1060 -710 1060 -670 {lab=GND}
N 1060 -800 1060 -770 {lab=out}
N 1060 -830 1060 -800 {lab=out}
N 820 -850 820 -830 {lab=#net3}
N 930 -750 930 -740 {lab=#net4}
N 780 -790 820 -790 {lab=EN}
N 560 -960 560 -920 {lab=EN}
N 560 -860 560 -820 {lab=GND}
N 560 -980 560 -960 {lab=EN}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=8 pages=8}
C {gnd.sym} 910 -720 0 0 {name=l3 lab=GND}
C {res.sym} 1060 -740 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 480 -890 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 480 -820 0 0 {name=l4 lab=GND}
C {vsource.sym} 750 -740 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 640 -890 0 0 {name=I0 value=10u}
C {gnd.sym} 750 -660 0 0 {name=l5 lab=GND}
C {gnd.sym} 1060 -650 0 0 {name=l6 lab=GND}
C {capa.sym} 1160 -700 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1160 -780 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1160 -650 0 0 {name=l7 lab=GND}
C {vdd.sym} 480 -960 0 0 {name=l8 lab=VDD}
C {vdd.sym} 910 -950 0 0 {name=l9 lab=VDD}
C {vdd.sym} 640 -960 0 0 {name=l10 lab=VDD}
C {lab_wire.sym} 800 -870 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1110 -830 0 0 {name=p2 sig_type=std_logic lab=out}
C {simulator_commands.sym} 250 -950 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white 

** Set sources
alter @V1[AC] = 1

** Simulation
op
noise v(out) V1 dec 100 1 10G

** Plots
setplot noise1
plot onoise_spectrum
plot inoise_spectrum

** Measurements
let output_noise_at_1MHz = onoise_spectrum[600]
print output_noise_at_1MHz

write tb_ldo_noise.raw
.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -720 0 0 {name=MODELS
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
C {launcher.sym} 300 -210 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_noise.raw"
}
C {noconn.sym} 930 -740 3 0 {name=l12}
C {libs/core_ldo/ldo/ldo.sym} 970 -830 0 0 {name=x1}
C {lab_wire.sym} 800 -790 0 0 {name=p3 sig_type=std_logic lab=EN}
C {vsource.sym} 560 -890 0 0 {name=V4 value=2 savecurrent=false}
C {gnd.sym} 560 -820 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 560 -970 3 0 {name=p9 sig_type=std_logic lab=EN}
