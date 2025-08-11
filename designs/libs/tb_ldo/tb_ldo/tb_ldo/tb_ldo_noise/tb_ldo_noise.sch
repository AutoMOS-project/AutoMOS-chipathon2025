v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -720 2420 -320 {flags=graph
y1=0
y2=12e-6
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
x2=10}
N 1000 -660 1000 -640 {lab=#net1}
N 1080 -660 1080 -630 {lab=GND}
N 640 -850 640 -810 {lab=VDD}
N 1080 -860 1080 -820 {lab=VDD}
N 640 -750 640 -710 {lab=GND}
N 750 -860 750 -820 {lab=VDD}
N 750 -760 750 -710 {lab=#net2}
N 750 -710 930 -710 {lab=#net2}
N 860 -770 860 -670 {lab=vref}
N 860 -770 930 -770 {lab=vref}
N 1230 -740 1300 -740 {lab=out}
N 1400 -580 1400 -560 {lab=GND}
N 1400 -660 1400 -640 {lab=#net3}
N 1400 -740 1400 -720 {lab=out}
N 1300 -740 1400 -740 {lab=out}
N 860 -610 860 -560 {lab=GND}
N 1000 -640 1000 -600 {lab=#net1}
N 1300 -580 1300 -560 {lab=GND}
N 1300 -740 1300 -720 {lab=out}
N 1300 -720 1300 -680 {lab=out}
N 1300 -620 1300 -580 {lab=GND}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=6 pages=6}
C {noconn.sym} 1000 -600 3 0 {name=l2}
C {gnd.sym} 1080 -630 0 0 {name=l3 lab=GND}
C {res.sym} 1300 -650 0 0 {name=RL
value=1.8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 640 -780 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 640 -710 0 0 {name=l4 lab=GND}
C {vsource.sym} 860 -640 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 750 -790 0 0 {name=I0 value=10u}
C {gnd.sym} 860 -560 0 0 {name=l5 lab=GND}
C {gnd.sym} 1300 -560 0 0 {name=l6 lab=GND}
C {capa.sym} 1400 -610 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1400 -690 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1400 -560 0 0 {name=l7 lab=GND}
C {vdd.sym} 640 -850 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1080 -860 0 0 {name=l9 lab=VDD}
C {vdd.sym} 750 -860 0 0 {name=l10 lab=VDD}
C {lab_wire.sym} 910 -770 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1350 -740 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo/ldo.sym} 1080 -740 0 0 {name=x1}
C {simulator_commands.sym} 250 -830 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

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
