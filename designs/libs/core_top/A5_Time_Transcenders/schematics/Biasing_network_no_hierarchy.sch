v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Desription

The biasing circuit for the Gilbert cell,
providing constant 50uA current at both its
outputs} 2880 -2390 0 0 0.4 0.4 {}
N 590 -1010 590 -980 {
lab=VSS}
N 590 -980 1150 -980 {
lab=VSS}
N 560 -980 590 -980 {
lab=VSS}
N 840 -1010 840 -980 {
lab=VSS}
N 1000 -1010 1000 -980 {
lab=VSS}
N 1150 -1010 1150 -980 {
lab=VSS}
N 840 -1040 860 -1040 {
lab=VSS}
N 860 -1040 860 -980 {
lab=VSS}
N 1000 -1040 1020 -1040 {
lab=VSS}
N 1020 -1040 1020 -980 {
lab=VSS}
N 1150 -1040 1170 -1040 {
lab=VSS}
N 1170 -1040 1170 -980 {
lab=VSS}
N 1150 -980 1170 -980 {
lab=VSS}
N 630 -1100 630 -1040 {
lab=I_BIAS}
N 590 -1100 630 -1100 {
lab=I_BIAS}
N 590 -1200 590 -1070 {
lab=I_BIAS}
N 780 -1040 800 -1040 {
lab=I_BIAS}
N 940 -1040 960 -1040 {
lab=I_BIAS}
N 1090 -1040 1110 -1040 {
lab=I_BIAS}
N 840 -1130 840 -1070 {
lab=I_out_1}
N 1000 -1130 1000 -1070 {
lab=I_out_2}
N 1150 -1130 1150 -1070 {
lab=I_out_3}
N 630 -1040 650 -1040 {
lab=I_BIAS}
C {title-2.sym} 0 0 0 0 {name=l9 author="Time Transcenders" lock=true rev=1.0 page=1}
C {code.sym} 50 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical

"
}
C {code.sym} 2705 -2395 0 0 {name=SPICE only_toplevel=true 
value="
* let sets vectors to a plot, while set sets a variable, globally accessible in .control
.control

    * Set frequency and amplitude variables to proper values from within the control sequence
    save all

    op
    show

    write Biasing_network_sim.raw

    set appendwrite

    * Transient analysis to observe mixing operation
    tran 1p 10n


    write Biasing_network_sim.raw

.endc
"}
C {symbols/nfet_03v3.sym} 610 -1040 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 820 -1040 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 980 -1040 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 1130 -1040 0 0 {name=M4
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
C {iopin.sym} 560 -980 0 1 {name=p1 lab=VSS}
C {iopin.sym} 590 -1200 1 1 {name=p2 lab=I_BIAS}
C {lab_pin.sym} 780 -1040 1 0 {name=p4 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} 940 -1040 1 0 {name=p5 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} 1090 -1040 1 0 {name=p6 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} 650 -1040 3 1 {name=p3 sig_type=std_logic lab=I_BIAS}
C {opin.sym} 840 -1130 3 0 {name=p7 lab=I_out_1}
C {opin.sym} 1000 -1130 3 0 {name=p8 lab=I_out_2}
C {opin.sym} 1150 -1130 3 0 {name=p9 lab=I_out_3}
