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
N 860 -750 860 -720 {lab=GND}
N 500 -960 500 -920 {lab=VDD}
N 860 -950 860 -910 {lab=VDD}
N 500 -860 500 -820 {lab=GND}
N 590 -960 590 -920 {lab=VDD}
N 590 -860 590 -810 {lab=#net1}
N 590 -810 770 -810 {lab=#net1}
N 700 -870 700 -770 {lab=vref}
N 700 -870 770 -870 {lab=vref}
N 940 -830 1010 -830 {lab=out}
N 1110 -670 1110 -650 {lab=GND}
N 1110 -750 1110 -730 {lab=#net2}
N 1110 -830 1110 -810 {lab=out}
N 1010 -830 1110 -830 {lab=out}
N 700 -710 700 -660 {lab=GND}
N 1010 -670 1010 -650 {lab=GND}
N 1010 -710 1010 -670 {lab=GND}
N 1010 -800 1010 -770 {lab=out}
N 1010 -830 1010 -800 {lab=out}
N 770 -850 770 -830 {lab=#net3}
N 880 -750 880 -740 {lab=#net4}
N 760 -790 770 -790 {lab=#net5}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=8 pages=8}
C {noconn.sym} 760 -790 0 0 {name=l2}
C {gnd.sym} 860 -720 0 0 {name=l3 lab=GND}
C {res.sym} 1010 -740 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 500 -890 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 500 -820 0 0 {name=l4 lab=GND}
C {vsource.sym} 700 -740 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 590 -890 0 0 {name=I0 value=10u}
C {gnd.sym} 700 -660 0 0 {name=l5 lab=GND}
C {gnd.sym} 1010 -650 0 0 {name=l6 lab=GND}
C {capa.sym} 1110 -700 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1110 -780 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1110 -650 0 0 {name=l7 lab=GND}
C {vdd.sym} 500 -960 0 0 {name=l8 lab=VDD}
C {vdd.sym} 860 -950 0 0 {name=l9 lab=VDD}
C {vdd.sym} 590 -960 0 0 {name=l10 lab=VDD}
C {lab_wire.sym} 750 -870 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1060 -830 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo/ldo.sym} 920 -830 0 0 {name=x1}
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
C {noconn.sym} 880 -740 3 0 {name=l12}
