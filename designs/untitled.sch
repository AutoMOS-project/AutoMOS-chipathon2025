v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 670 -430 670 -410 {lab=GND}
N 670 -530 670 -490 {lab=VDD}
N 670 -420 860 -420 {lab=GND}
N 860 -430 860 -420 {lab=GND}
N 670 -540 670 -530 {lab=VDD}
N 770 -540 820 -540 {lab=#net1}
N 820 -540 860 -540 {lab=#net1}
N 860 -540 860 -530 {lab=#net1}
N 670 -540 710 -540 {lab=VDD}
N 860 -530 860 -510 {lab=#net1}
N 860 -450 860 -430 {lab=GND}
N 800 -480 820 -480 {lab=GND}
N 800 -480 800 -420 {lab=GND}
N 860 -480 890 -480 {lab=GND}
N 890 -480 890 -440 {lab=GND}
N 860 -440 890 -440 {lab=GND}
C {vsource.sym} 670 -460 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} 670 -410 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 100 -320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} -890 100 0 0 {name=MODELS1 only_toplevel=true
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
C {devices/code_shown.sym} 120 -660 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

** Simulations
op

** Plots
show all

write untitled.raw
.endc
"}
C {res.sym} 740 -540 3 1 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 670 -540 0 0 {name=l7 lab=VDD}
C {symbols/nfet_03v3.sym} 840 -480 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
