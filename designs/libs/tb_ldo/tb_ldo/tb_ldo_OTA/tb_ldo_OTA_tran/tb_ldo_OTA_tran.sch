v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -720 2420 -320 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="OTA Output voltage
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo_OTA_tran.raw
sim_type=tran
autoload=1}
B 2 1620 -1200 2420 -800 {flags=graph
y1=1.49
y2=1.51
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="OTA Positive input voltage
vin"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo_OTA_tran.raw
sim_type=tran
autoload=1}
N 1110 -670 1110 -640 {lab=GND}
N 620 -820 620 -780 {lab=VDD}
N 1110 -950 1110 -910 {lab=VDD}
N 620 -720 620 -680 {lab=GND}
N 1000 -610 1000 -570 {lab=VDD}
N 750 -830 750 -730 {lab=vref}
N 750 -830 820 -830 {lab=vref}
N 1380 -630 1380 -610 {lab=GND}
N 1380 -790 1380 -770 {lab=out}
N 1280 -790 1380 -790 {lab=out}
N 750 -670 750 -620 {lab=GND}
N 1380 -770 1380 -730 {lab=out}
N 1380 -670 1380 -630 {lab=GND}
N 1000 -480 1070 -480 {lab=#net1}
N 840 -670 840 -620 {lab=GND}
N 840 -750 840 -730 {lab=in}
N 1000 -510 1000 -480 {lab=#net1}
N 1070 -670 1070 -480 {lab=#net1}
N 1230 -790 1280 -790 {lab=out}
N 820 -830 990 -830 {lab=vref}
N 840 -750 990 -750 {lab=in}
C {gnd.sym} 1110 -640 0 0 {name=l2 lab=GND}
C {vsource.sym} 620 -750 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 620 -680 0 0 {name=l3 lab=GND}
C {vsource.sym} 750 -700 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 1000 -540 0 0 {name=I0 value=10u}
C {gnd.sym} 750 -620 0 0 {name=l4 lab=GND}
C {capa.sym} 1380 -700 0 0 {name=CL
m=1
value=0.52p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1380 -610 0 0 {name=l6 lab=GND}
C {vdd.sym} 620 -820 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1110 -950 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1000 -610 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 800 -830 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1330 -790 0 0 {name=p2 sig_type=std_logic lab=out}
C {vsource.sym} 840 -700 0 0 {name=V3 value=1.5 savecurrent=false}
C {gnd.sym} 840 -620 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 940 -750 0 0 {name=p3 sig_type=std_logic lab=in}
C {libs/core_ldo/ldo/ldo_OTA/OTA.sym} 1090 -790 0 0 {name=x1}
C {simulator_commands.sym} 250 -650 0 0 {name=MODELS
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
C {simulator_commands.sym} 250 -890 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

** Define input signal
let fsig = 1k
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

** Define transient params
let tstop = 2*tper
let tstep = 0.001*tper

** Set sources
alter @V3[PULSE] = [ 1.51 1.49 0 $&tfr $&tfr $&ton $&tper 0]

** Simulations
tran $&tstep $&tstop

** Plots
setplot tran1
let vout = v(out)
let vin = v(in)
plot vin
plot vout

write tb_ldo_OTA_tran.raw

.endc
* ngspice commands
"}
C {title-3.sym} 0 0 0 0 {name=l11 author="Julio Vilca" rev=1.0 lock=true page=5 pages=6}
C {launcher.sym} 320 -210 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_OTA_tran.raw"
}
