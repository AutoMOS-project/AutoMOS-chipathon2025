v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -140 150 0 {
lab=I_bias}
N 150 -90 250 -90 {
lab=I_bias}
N 50 -170 110 -170 {
lab=V_in}
N 150 -230 150 -200 {
lab=VDD}
N 290 -230 290 -120 {
lab=VDD}
N 50 -230 290 -230 {
lab=VDD}
N 290 -60 290 0 {
lab=V_out_biasing}
N 290 -90 310 -90 {
lab=#net1}
N 150 -170 170 -170 {
lab=#net2}
C {symbols/nfet_03v3.sym} 130 -170 0 0 {name=M1
L=0.28u
W=4u
nf=2
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
C {symbols/nfet_03v3.sym} 270 -90 0 0 {name=M2
L=0.28u
W=8u
nf=4
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
C {iopin.sym} 50 -230 0 1 {name=p1 lab=VDD}
C {iopin.sym} 50 -170 0 1 {name=p2 lab=V_in}
C {iopin.sym} 150 0 3 1 {name=p3 lab=I_bias}
C {iopin.sym} 290 0 3 1 {name=p4 lab=V_out_biasing}
C {iopin.sym} 50 90 0 1 {name=p5 lab=VSS}
C {lab_pin.sym} 170 -170 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 -90 0 1 {name=p7 sig_type=std_logic lab=VSS}
