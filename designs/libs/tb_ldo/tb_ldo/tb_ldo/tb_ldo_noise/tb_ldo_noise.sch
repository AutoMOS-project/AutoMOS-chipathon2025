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
N 900 -660 900 -640 {lab=#net1}
N 980 -660 980 -630 {lab=GND}
N 540 -850 540 -810 {lab=VDD}
N 980 -860 980 -820 {lab=VDD}
N 540 -750 540 -710 {lab=GND}
N 650 -860 650 -820 {lab=VDD}
N 650 -760 650 -710 {lab=#net2}
N 650 -710 830 -710 {lab=#net2}
N 760 -770 760 -670 {lab=vref}
N 760 -770 830 -770 {lab=vref}
N 1130 -740 1200 -740 {lab=out}
N 1300 -580 1300 -560 {lab=GND}
N 1300 -660 1300 -640 {lab=#net3}
N 1300 -740 1300 -720 {lab=out}
N 1200 -740 1300 -740 {lab=out}
N 760 -610 760 -560 {lab=GND}
N 900 -640 900 -600 {lab=#net1}
N 1200 -580 1200 -560 {lab=GND}
N 1200 -620 1200 -580 {lab=GND}
N 1060 -660 1060 -600 {lab=#net4}
N 1200 -710 1200 -680 {lab=out}
N 1200 -740 1200 -710 {lab=out}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=8 pages=8}
C {noconn.sym} 900 -600 3 0 {name=l2}
C {gnd.sym} 980 -630 0 0 {name=l3 lab=GND}
C {res.sym} 1200 -650 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 540 -780 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 540 -710 0 0 {name=l4 lab=GND}
C {vsource.sym} 760 -640 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 650 -790 0 0 {name=I0 value=10u}
C {gnd.sym} 760 -560 0 0 {name=l5 lab=GND}
C {gnd.sym} 1200 -560 0 0 {name=l6 lab=GND}
C {capa.sym} 1300 -610 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1300 -690 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1300 -560 0 0 {name=l7 lab=GND}
C {vdd.sym} 540 -850 0 0 {name=l8 lab=VDD}
C {vdd.sym} 980 -860 0 0 {name=l9 lab=VDD}
C {vdd.sym} 650 -860 0 0 {name=l10 lab=VDD}
C {lab_wire.sym} 810 -770 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1250 -740 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo/ldo.sym} 980 -740 0 0 {name=x1}
C {simulator_commands.sym} 250 -830 0 0 {name=SIMULATIONS
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
C {simulator_commands.sym} 250 -600 0 0 {name=MODELS
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
C {noconn.sym} 1060 -600 3 0 {name=l11}
