v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Desription

PMOS mirror used in the input of the 
I_bias. This component is used in
Biasing_network_with_local_mirrors } 2880 -2390 0 0 0.4 0.4 {}
N 390 -1190 390 -1130 {
lab=I_BIAS}
N 550 -1320 550 -1250 {
lab=VDD}
N 350 -1340 550 -1340 {
lab=VDD}
N 550 -1340 550 -1320 {
lab=VDD}
N 470 -1340 470 -1310 {
lab=VDD}
N 550 -1190 550 -1130 {
lab=I_out}
N 430 -1220 510 -1220 {
lab=I_BIAS}
N 390 -1340 390 -1250 {
lab=VDD}
N 370 -1220 390 -1220 {
lab=VDD}
N 470 -1250 470 -1220 {
lab=I_BIAS}
N 470 -1220 470 -1160 {
lab=I_BIAS}
N 390 -1160 470 -1160 {
lab=I_BIAS}
N 550 -1220 570 -1220 {
lab=VDD}
C {title-2.sym} 0 0 0 0 {name=l9 author="Time Transcenders" lock=true rev=1.0 page=1}
C {code.sym} 60 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
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
C {iopin.sym} 390 -1130 3 1 {name=p2 lab=I_BIAS}
C {iopin.sym} 350 -1340 0 1 {name=p3 lab=VDD}
C {iopin.sym} 550 -1130 3 1 {name=p1 lab=I_out}
C {symbols/pfet_03v3.sym} 410 -1220 0 1 {name=M_ref
L=l_ref
W=w_ref
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 530 -1220 0 0 {name=M_mir
L=l_mir
W=w_mir
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / w_mir'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 370 -1220 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 -1220 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {symbols/cap_mim_2f0fF.sym} 470 -1280 0 0 {name=C1
W=5e-6
L=5e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
