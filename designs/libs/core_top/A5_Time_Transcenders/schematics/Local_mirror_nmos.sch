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
N 600 -980 780 -980 {
lab=VSS}
N 800 -1070 800 -980 {
lab=VSS}
N 760 -1100 780 -1100 {
lab=I_BIAS}
N 800 -1190 800 -1130 {
lab=I_out}
N 660 -1160 660 -1130 {
lab=I_BIAS}
N 660 -1070 660 -980 {
lab=VSS}
N 700 -1100 780 -1100 {
lab=I_BIAS}
N 660 -1160 710 -1160 {
lab=I_BIAS}
N 660 -1190 660 -1160 {
lab=I_BIAS}
N 730 -1010 730 -980 {
lab=VSS}
N 730 -1100 730 -1070 {
lab=I_BIAS}
N 730 -1160 730 -1100 {
lab=I_BIAS}
N 710 -1160 730 -1160 {
lab=I_BIAS}
N 780 -980 800 -980 {
lab=VSS}
N 800 -1100 820 -1100 {
lab=VSS}
N 640 -1100 660 -1100 {
lab=VSS}
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
C {symbols/nfet_03v3.sym} 780 -1100 0 0 {name=M2
L=l_mir
W=w_mir
nf=nf_mir
m=1
ad="'int((nf_mir+1)/2) * W/nf_mir * 0.18u'"
pd="'2*int((nf_mir+1)/2) * (W/nf_mir + 0.18u)'"
as="'int((nf_mir+2)/2) * W/nf_mir * 0.18u'"
ps="'2*int((nf_mir+2)/2) * (W/nf_mir + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 600 -980 0 1 {name=p1 lab=VSS}
C {iopin.sym} 800 -1190 3 0 {name=p7 lab=I_out}
C {symbols/nfet_03v3.sym} 680 -1100 0 1 {name=M6
L=l_ref
W=w_ref
nf=nf_ref
m=1
ad="'int((W+1)/2) * W/nf_ref * 0.18u'"
pd="'2*int((nf_ref+1)/2) * (W/nf_ref + 0.18u)'"
as="'int((nf_ref+2)/2) * W/nf_ref * 0.18u'"
ps="'2*int((nf_ref+2)/2) * (W/nf_ref + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 660 -1190 1 1 {name=p2 lab=I_BIAS}
C {lab_pin.sym} 820 -1100 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 640 -1100 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {symbols/cap_mim_2f0fF.sym} 730 -1040 2 1 {name=C1
W=5e-6
L=5e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
