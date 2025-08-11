v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -720 2420 -320 {flags=graph
y1=1.797
y2=1.803
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0587912e-22
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
dataset=-1
rawfile=$netlist_dir/tb_ldo_tran2.raw
color="4 7"
node="LDO Transient response to ILOAD ramp
vout"}
B 2 1620 -1200 2420 -800 {flags=graph
y1=0
y2=1e-3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0587912e-22
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo_tran2.raw
autoload=1
sim_type=tran
color="4 7"
node="ILOAD ramp
i(iload)"}
B 2 1620 -1680 2420 -1280 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ldo_tran1.raw
sim_type=tran
color="4 7"
node="LDO Transient response to VDD ramp
vout"}
B 2 750 -1680 1550 -1280 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="VDD ramp
vdd"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_ldo_tran1.raw
autoload=1}
N 950 -730 950 -710 {lab=#net1}
N 1030 -730 1030 -700 {lab=GND}
N 590 -930 590 -890 {lab=VDD}
N 1030 -930 1030 -890 {lab=VDD}
N 590 -830 590 -790 {lab=GND}
N 700 -930 700 -890 {lab=VDD}
N 700 -830 700 -780 {lab=#net2}
N 700 -780 880 -780 {lab=#net2}
N 810 -840 810 -740 {lab=vref}
N 810 -840 880 -840 {lab=vref}
N 1450 -650 1450 -630 {lab=GND}
N 1450 -730 1450 -710 {lab=#net3}
N 1450 -810 1450 -790 {lab=out}
N 1350 -810 1450 -810 {lab=out}
N 810 -680 810 -630 {lab=GND}
N 950 -710 950 -670 {lab=#net1}
N 1350 -650 1350 -630 {lab=GND}
N 1350 -810 1350 -790 {lab=out}
N 1350 -790 1350 -750 {lab=out}
N 1350 -690 1350 -650 {lab=GND}
N 1180 -810 1350 -810 {lab=out}
N 1260 -650 1260 -630 {lab=GND}
N 1260 -730 1260 -710 {lab=#net4}
N 1260 -810 1260 -790 {lab=out}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=5 pages=6}
C {noconn.sym} 950 -670 3 0 {name=l2}
C {gnd.sym} 1030 -700 0 0 {name=l3 lab=GND}
C {res.sym} 1350 -720 0 0 {name=RL
value=\{RL_val\}
footprint=1206
device=resistor
m=1}
C {vsource.sym} 590 -860 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 590 -790 0 0 {name=l4 lab=GND}
C {vsource.sym} 810 -710 0 0 {name=V2 value=1.5 savecurrent=false}
C {isource.sym} 700 -860 0 0 {name=I0 value=10u}
C {gnd.sym} 810 -630 0 0 {name=l5 lab=GND}
C {gnd.sym} 1350 -630 0 0 {name=l6 lab=GND}
C {capa.sym} 1450 -680 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1450 -760 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1450 -630 0 0 {name=l7 lab=GND}
C {vdd.sym} 590 -930 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1030 -930 0 0 {name=l9 lab=VDD}
C {vdd.sym} 700 -930 0 0 {name=l10 lab=VDD}
C {lab_wire.sym} 860 -840 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1400 -810 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo/ldo.sym} 1030 -810 0 0 {name=x1}
C {simulator_commands.sym} 250 -930 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

** Define params
.param RL_val = 1.8k

** Define input signal
let fsig = 1k
let tper = 1/fsig
let tfr1 = 10u
let ton1 = 0.5*tper-2*tfr1
let td1 = 10u
let tfr2 = 1u
let ton2 = 0.5*tper-2*tfr2
let td2 = 2u

** Define transient params
let tstop1 = 50u
let tstep1 = 0.01u
let tstop2 = 10u
let tstep2 = 100n

** Transient response to Vdd ramp simulation
alter @V1[PULSE] = [ 0 2 $&td1 $&tfr1 $&tfr1 $&ton1 $&tper 0 ]
alter RL = \{RL_val\}
alter @IL[PULSE] = [ 0 0 $&td1 $&tfr1 $&tfr1 $&ton1 $&tper 0 ]
tran $&tstep1 $&tstop1

** Plots
setplot tran1
let vout = v(out)
let vin = v(vdd)
plot vout 
plot vin

write tb_ldo_tran1.raw

** Transient response to Iload ramp simulation
alter @V1[PULSE] = [ 2 2 $&td2 $&tfr2 $&tfr2 $&ton2 $&tper2 0 ]
alter RL = 1e15
alter @IL[PULSE] = [ 0 1m $&td2 $&tfr2 $&tfr2 $&ton2 $&tper 0 ]
tran $&tstep2 $&tstop2

** Plots
setplot tran2
let vout = v(out)
let iload = v3#branch
plot iload
plot vout

write tb_ldo_tran2.raw

** LDO Functional transient simulation
alter @V1[PULSE] = [ 3.3 2 0 1u 1u 248u 500u 0 ]
alter RL = \{RL_val\}
alter @IL[PULSE] = [ 0 0 0 1u 1u 248u 500u 0 ]
tran 0.5u 500u

** Plots
setplot tran3
let vin = v(vdd)
let vota = v(x1.vota)
let vout = v(out)
plot vin vout vota

write tb_ldo_tran3.raw

.endc
* ngspice commands
"}
C {simulator_commands.sym} 250 -690 0 0 {name=MODELS
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
C {isource.sym} 1260 -760 0 0 {name=IL value=0}
C {gnd.sym} 1260 -630 0 0 {name=l11 lab=GND}
C {vsource.sym} 1260 -680 0 0 {name=V3 value=0 savecurrent=false}
C {launcher.sym} 300 -190 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_tran1.raw; xschem raw_read $netlist_dir/tb_ldo_tran2.raw
}
