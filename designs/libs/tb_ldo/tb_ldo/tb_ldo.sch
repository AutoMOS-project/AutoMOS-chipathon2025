v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1220 -500 1220 -480 {lab=ota}
N 1300 -500 1300 -470 {lab=GND}
N 860 -700 860 -660 {lab=VDD}
N 1300 -700 1300 -660 {lab=VDD}
N 860 -600 860 -560 {lab=GND}
N 970 -700 970 -660 {lab=VDD}
N 970 -600 970 -550 {lab=#net1}
N 970 -550 1150 -550 {lab=#net1}
N 1080 -610 1080 -510 {lab=vref}
N 1080 -610 1150 -610 {lab=vref}
N 1520 -580 1520 -520 {lab=out}
N 1450 -580 1520 -580 {lab=out}
N 1620 -420 1620 -400 {lab=GND}
N 1620 -500 1620 -480 {lab=#net2}
N 1620 -580 1620 -560 {lab=out}
N 1520 -580 1620 -580 {lab=out}
N 1520 -460 1520 -400 {lab=GND}
N 1080 -450 1080 -400 {lab=GND}
N 1220 -480 1220 -440 {lab=ota}
C {noconn.sym} 1220 -440 3 0 {name=l1}
C {gnd.sym} 1300 -470 0 0 {name=l2 lab=GND}
C {res.sym} 1520 -490 0 0 {name=RL
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 860 -630 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 860 -560 0 0 {name=l3 lab=GND}
C {vsource.sym} 1080 -480 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 970 -630 0 0 {name=I0 value=2u}
C {gnd.sym} 1080 -400 0 0 {name=l4 lab=GND}
C {gnd.sym} 1520 -400 0 0 {name=l5 lab=GND}
C {capa.sym} 1620 -450 0 0 {name=CL
m=1
value=0.1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1620 -530 0 0 {name=Resr
value=0.2
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1620 -400 0 0 {name=l6 lab=GND}
C {vdd.sym} 860 -700 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1300 -700 0 0 {name=l8 lab=VDD}
C {vdd.sym} 970 -700 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 1130 -610 0 0 {name=p1 sig_type=std_logic lab=vref}
C {devices/code_shown.sym} 40 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 30 -990 0 0 {name=NGSPICE only_toplevel=true
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
**alter @V3[AC] = 1
alter @V1[PULSE] = [ 0 2 0 $&tfr $&tfr $&ton $&tper 0 ]

** Simulations
op
dc V1 0 5 0.001
tran $&tstep $&tstop
**ac dec 100 1 10G

** Plots
setplot dc1
let vout=v(out)
let vota=v(ota)
let vin=v(Vdd)
plot vout ota vin

setplot tran1
let vout=v(out)
let vin=v(Vdd)
plot vout vin


write tb_ldo.raw
.endc
"}
C {lab_wire.sym} 1570 -580 0 0 {name=p2 sig_type=std_logic lab=out}
C {libs/core_ldo/ldo/ldo.sym} 1300 -580 0 0 {name=x2
}
C {lab_wire.sym} 1220 -460 0 0 {name=p3 sig_type=std_logic lab=ota}
