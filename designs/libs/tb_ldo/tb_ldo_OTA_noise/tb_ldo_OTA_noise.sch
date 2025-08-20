v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -720 2420 -320 {flags=graph
y1=0
y2=1.6e-3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="OTA Output Noise
onoise_spectrum"
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
sim_type=noise
autoload=1
rawfile=$netlist_dir/tb_ldo_OTA_noise.raw
x1=0
x2=10}
B 2 1620 -1200 2420 -800 {flags=graph
y1=0
y2=350e-3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="OTA Input Noise
inoise_spectrum"
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
x1=0
x2=10
rawfile=$netlist_dir/tb_ldo_OTA_noise.raw
sim_type=noise
autoload=1}
N 1130 -740 1130 -710 {lab=GND}
N 640 -890 640 -850 {lab=VDD}
N 1130 -1020 1130 -980 {lab=VDD}
N 640 -790 640 -750 {lab=GND}
N 1020 -680 1020 -640 {lab=VDD}
N 770 -880 770 -780 {lab=vref}
N 770 -880 840 -880 {lab=vref}
N 1400 -700 1400 -680 {lab=GND}
N 1400 -860 1400 -840 {lab=out}
N 1300 -860 1400 -860 {lab=out}
N 770 -720 770 -670 {lab=GND}
N 1400 -840 1400 -800 {lab=out}
N 1400 -740 1400 -700 {lab=GND}
N 1020 -550 1090 -550 {lab=#net1}
N 860 -760 860 -710 {lab=GND}
N 860 -840 860 -820 {lab=in}
N 1020 -580 1020 -550 {lab=#net1}
N 1090 -740 1090 -550 {lab=#net1}
N 1250 -860 1300 -860 {lab=out}
N 840 -880 1010 -880 {lab=vref}
N 860 -840 1010 -840 {lab=in}
N 970 -920 1010 -920 {lab=VDD}
N 970 -800 1010 -800 {lab=GND}
C {simulator_commands.sym} 250 -970 0 0 {name=SIMULATIONS
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

write tb_ldo_OTA_noise.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -740 0 0 {name=MODELS
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
tclcommand="xschem raw_read $netlist_dir/tb_ldo_OTA_noise.raw"
}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=6 pages=6}
C {gnd.sym} 1130 -710 0 0 {name=l11 lab=GND}
C {vsource.sym} 640 -820 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 640 -750 0 0 {name=l12 lab=GND}
C {vsource.sym} 770 -750 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 1020 -610 0 0 {name=I1 value=10u}
C {gnd.sym} 770 -670 0 0 {name=l13 lab=GND}
C {capa.sym} 1400 -770 0 0 {name=CL1
m=1
value=0.52p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1400 -680 0 0 {name=l14 lab=GND}
C {vdd.sym} 640 -890 0 0 {name=l15 lab=VDD}
C {vdd.sym} 1130 -1020 0 0 {name=l16 lab=VDD}
C {vdd.sym} 1020 -680 0 0 {name=l17 lab=VDD}
C {lab_wire.sym} 820 -880 0 0 {name=p3 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1350 -860 0 0 {name=p4 sig_type=std_logic lab=out}
C {vsource.sym} 860 -790 0 0 {name=V3 value=0.9 savecurrent=false}
C {gnd.sym} 860 -710 0 0 {name=l18 lab=GND}
C {lab_wire.sym} 960 -840 0 0 {name=p5 sig_type=std_logic lab=in}
C {libs/core_ldo/ldo_OTA/ldo_OTA.sym} 1110 -860 0 0 {name=x1}
C {vdd.sym} 970 -920 0 0 {name=l10 lab=VDD}
C {gnd.sym} 970 -800 0 0 {name=l2 lab=GND}
