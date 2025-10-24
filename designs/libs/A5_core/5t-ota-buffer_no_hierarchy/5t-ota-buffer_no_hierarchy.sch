v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Desription

A simple 5T-OTA, to serve as a buffer 
for the IF signal to the output measurement
equipment.} 2880 -2390 0 0 0.4 0.4 {}
N 1020 -1210 1020 -1150 {
lab=#net1}
N 1240 -1210 1240 -1150 {
lab=Vout}
N 1280 -1120 1360 -1120 {
lab=V_in_minus}
N 1020 -1330 1020 -1270 {
lab=VDD}
N 1240 -1330 1240 -1270 {
lab=VDD}
N 1020 -1330 1240 -1330 {
lab=VDD}
N 840 -1330 1020 -1330 {
lab=VDD}
N 1020 -1090 1020 -1020 {
lab=I_bias}
N 1240 -1090 1240 -1020 {
lab=I_bias}
N 1020 -1020 1240 -1020 {
lab=I_bias}
N 1130 -1020 1130 -970 {
lab=I_bias}
N 1240 -1180 1360 -1180 {
lab=Vout}
N 1360 -1120 1360 -1060 {
lab=V_in_minus}
N 850 -1060 860 -1060 {
lab=V_in_minus}
N 1130 -970 1130 -940 {
lab=I_bias}
N 1060 -1240 1200 -1240 {
lab=#net1}
N 1020 -1180 1100 -1180 {
lab=#net1}
N 1100 -1240 1100 -1180 {
lab=#net1}
N 1240 -1240 1270 -1240 {
lab=VDD}
N 1210 -1120 1240 -1120 {
lab=VSS}
N 1020 -1120 1050 -1120 {
lab=VSS}
N 990 -1240 1020 -1240 {
lab=VDD}
N 920 -1120 980 -1120 {
lab=V_in_plus}
N 920 -1060 1360 -1060 {
lab=V_in_minus}
N 850 -1120 920 -1120 {
lab=V_in_plus}
N 860 -1060 920 -1060 {
lab=V_in_minus}
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
C {symbols/nfet_03v3.sym} 1000 -1120 0 0 {name=M3
L=0.28u
W=1u
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
C {symbols/nfet_03v3.sym} 1260 -1120 0 1 {name=M4
L=0.28u
W=1u
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
C {ipin.sym} 840 -1330 0 0 {name=p1 lab=VDD}
C {ipin.sym} 850 -1120 0 0 {name=p2 lab=V_in_plus
}
C {ipin.sym} 850 -1060 0 0 {name=p3 lab=V_in_minus
}
C {opin.sym} 1360 -1180 0 0 {name=p4 lab=Vout}
C {iopin.sym} 1130 -940 1 0 {name=p5 lab=I_bias}
C {symbols/pfet_03v3.sym} 1040 -1240 0 1 {name=M1
L=0.28u
W=0.3u
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
C {symbols/pfet_03v3.sym} 1220 -1240 0 0 {name=M2
L=0.28u
W=0.3u
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
C {lab_pin.sym} 990 -1240 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {ipin.sym} 850 -940 0 0 {name=p7 lab=VSS}
C {lab_pin.sym} 1210 -1120 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -1120 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1270 -1240 0 1 {name=p10 sig_type=std_logic lab=VDD}
