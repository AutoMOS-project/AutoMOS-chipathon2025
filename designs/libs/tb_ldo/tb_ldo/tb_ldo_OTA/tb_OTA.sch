v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1300 -480 1300 -450 {lab=GND}
N 810 -630 810 -590 {lab=VDD}
N 1300 -760 1300 -720 {lab=VDD}
N 810 -530 810 -490 {lab=GND}
N 1190 -420 1190 -380 {lab=VDD}
N 940 -640 940 -540 {lab=vref}
N 940 -640 1010 -640 {lab=vref}
N 1570 -440 1570 -420 {lab=GND}
N 1570 -600 1570 -580 {lab=out}
N 1470 -600 1570 -600 {lab=out}
N 940 -480 940 -430 {lab=GND}
N 1570 -580 1570 -540 {lab=out}
N 1570 -480 1570 -440 {lab=GND}
N 1190 -290 1260 -290 {lab=#net1}
N 1030 -480 1030 -430 {lab=GND}
N 1030 -560 1030 -540 {lab=in}
N 1190 -320 1190 -290 {lab=#net1}
N 1260 -480 1260 -290 {lab=#net1}
N 1420 -600 1470 -600 {lab=out}
N 1010 -640 1180 -640 {lab=vref}
N 1030 -560 1180 -560 {lab=in}
C {gnd.sym} 1300 -450 0 0 {name=l2 lab=GND}
C {vsource.sym} 810 -560 0 0 {name=V1 value=2 savecurrent=false}
C {gnd.sym} 810 -490 0 0 {name=l3 lab=GND}
C {vsource.sym} 940 -510 0 0 {name=V2 value=0.9 savecurrent=false}
C {isource.sym} 1190 -350 0 0 {name=I0 value=2u}
C {gnd.sym} 940 -430 0 0 {name=l4 lab=GND}
C {capa.sym} 1570 -510 0 0 {name=CL
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1570 -420 0 0 {name=l6 lab=GND}
C {vdd.sym} 810 -630 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1300 -760 0 0 {name=l8 lab=VDD}
C {vdd.sym} 1190 -420 0 0 {name=l9 lab=VDD}
C {lab_wire.sym} 990 -640 0 0 {name=p1 sig_type=std_logic lab=vref}
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
C {devices/code_shown.sym} 20 -1320 0 0 {name=NGSPICE only_toplevel=true
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
alter @V3[AC] = 1
alter @V3[PULSE] = [ 0 2 0 $&tfr $&tfr $&ton $&tper 0 ]

** Simulations
op
dc V3 0.7 1.1 0.001
tran $&tstep $&tstop
ac dec 100 1 10G

** Plots
setplot dc1
let vout=v(out)
plot vout

setplot tran1
let vout=v(out)
let vin=v(in)
plot vout vin

setplot ac1
let gain_db = db(v(out))
plot gain_db
let phase_deg = cph(v(out))*180/pi
plot phase_deg

meas ac DC_gain FIND gain_db AT=1Hz
let gain_3db = DC_gain-3
meas ac f_3db WHEN gain_db=$&gain_3db
meas ac f_0db WHEN gain_db=0
meas ac phase_0db FIND phase_deg WHEN gain_db=0
let phase_margin = 180 + phase_0db
print DC_gain
print f_3db 
print f_0db
print phase_margin


write tb_OTA.raw
.endc
"}
C {lab_wire.sym} 1520 -600 0 0 {name=p2 sig_type=std_logic lab=out}
C {vsource.sym} 1030 -510 0 0 {name=V3 value=0.9 savecurrent=false}
C {gnd.sym} 1030 -430 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 1130 -560 0 0 {name=p3 sig_type=std_logic lab=in}
C {libs/core_ldo/ldo/ldo_OTA/OTA.sym} 1280 -600 0 0 {name=x1}
