v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1620 -720 2420 -320 {flags=graph,unlocked
y1=1.795
y2=1.804
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
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
B 2 1620 -1200 2420 -800 {flags=graph,unlocked
y1=0
y2=1e-3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
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
y1=1.8
y2=1.816
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
B 2 750 -1680 1550 -1280 {flags=graph,unlocked
y1=2
y2=3.3
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
N 890 -710 890 -680 {lab=GND}
N 450 -920 450 -880 {lab=VDD}
N 890 -910 890 -870 {lab=VDD}
N 450 -820 450 -780 {lab=GND}
N 620 -920 620 -880 {lab=VDD}
N 620 -820 620 -770 {lab=#net1}
N 620 -770 800 -770 {lab=#net1}
N 730 -830 730 -730 {lab=vref}
N 730 -830 800 -830 {lab=vref}
N 1240 -630 1240 -610 {lab=GND}
N 1240 -710 1240 -690 {lab=#net2}
N 1240 -790 1240 -770 {lab=out}
N 1140 -790 1240 -790 {lab=out}
N 730 -670 730 -620 {lab=GND}
N 1140 -630 1140 -610 {lab=GND}
N 1140 -790 1140 -770 {lab=out}
N 1140 -770 1140 -730 {lab=out}
N 1140 -670 1140 -630 {lab=GND}
N 970 -790 1140 -790 {lab=out}
N 1050 -630 1050 -610 {lab=GND}
N 1050 -710 1050 -690 {lab=#net3}
N 1050 -790 1050 -770 {lab=out}
N 910 -710 910 -700 {lab=#net4}
N 800 -810 800 -790 {lab=#net5}
N 530 -920 530 -880 {lab=EN}
N 530 -820 530 -780 {lab=GND}
N 760 -750 800 -750 {lab=EN}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=7 pages=8}
C {gnd.sym} 890 -680 0 0 {name=l3 lab=GND}
C {res.sym} 1140 -700 0 0 {name=RL
value=\{RL_val\}
footprint=1206
device=resistor
m=1}
C {vsource.sym} 450 -850 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 450 -780 0 0 {name=l4 lab=GND}
C {vsource.sym} 730 -700 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 620 -850 0 0 {name=I0 value=10u}
C {gnd.sym} 730 -620 0 0 {name=l5 lab=GND}
C {gnd.sym} 1140 -610 0 0 {name=l6 lab=GND}
C {capa.sym} 1240 -660 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1240 -740 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1240 -610 0 0 {name=l7 lab=GND}
C {vdd.sym} 450 -920 0 0 {name=l8 lab=VDD}
C {vdd.sym} 890 -910 0 0 {name=l9 lab=VDD}
C {vdd.sym} 620 -920 0 0 {name=l10 lab=VDD}
C {lab_wire.sym} 780 -830 0 0 {name=p1 sig_type=std_logic lab=vref}
C {lab_wire.sym} 1190 -790 0 0 {name=p2 sig_type=std_logic lab=out}
C {simulator_commands.sym} 240 -930 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white   

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
alter @V1[PULSE] = [ 2 3.3 $&td1 $&tfr1 $&tfr1 $&ton1 $&tper 0 ]
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

** LDO ENABLE SIMULATION
alter @V1[PULSE] = [ 3.3 3.3 0 1u 1u 498u 1m 0 ]
alter RL = \{RL_val\}
alter @IL[PULSE] = [ 0 0 0 1u 1u 498u 1m 0 ]
alter @V4[PULSE] = [ 0 2 499u 1u 1u 498u 500u 0 ]
tran 0.5u 1m

** Plots
setplot tran4
let vin = v(vdd)
let vout = v(out)
let ENABLE = v(EN)
plot vin vout ENABLE

write tb_ldo_tran4.raw

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
C {isource.sym} 1050 -740 0 0 {name=IL value=0}
C {gnd.sym} 1050 -610 0 0 {name=l11 lab=GND}
C {vsource.sym} 1050 -660 0 0 {name=V3 value=0 savecurrent=false}
C {launcher.sym} 300 -190 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ldo_tran1.raw; xschem raw_read $netlist_dir/tb_ldo_tran2.raw
}
C {libs/core_ldo/ldo/ldo.sym} 950 -790 0 0 {name=x1}
C {noconn.sym} 910 -700 3 0 {name=l13}
C {vsource.sym} 530 -850 0 0 {name=V4 value=2 savecurrent=false}
C {gnd.sym} 530 -780 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 530 -910 3 0 {name=p3 sig_type=std_logic lab=EN}
C {lab_wire.sym} 780 -750 0 0 {name=p4 sig_type=std_logic lab=EN}
