v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -10 230 -10 {
lab=VSS}
N 230 -70 230 -10 {
lab=VSS}
N 140 -170 340 -170 {
lab=to_gate}
N 230 -170 230 -130 {
lab=to_gate}
N 230 -230 230 -170 {
lab=to_gate}
N 400 -170 470 -170 {
lab=ASIG5V}
N 210 -360 230 -360 {
lab=VDD}
N 230 -360 230 -290 {
lab=VDD}
N 370 -360 370 -190 {
lab=VDD}
N 210 -360 370 -360 {
lab=VDD}
C {symbols/ppolyf_u.sym} 370 -170 1 0 {name=R1
W=40e-6
L=10e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {iopin.sym} 210 -360 0 1 {name=p1 lab=VDD}
C {iopin.sym} 140 -170 0 1 {name=p2 lab=to_gate}
C {iopin.sym} 210 -10 0 1 {name=p3 lab=VSS}
C {iopin.sym} 470 -170 0 0 {name=p4 lab=ASIG5V}
C {symbols/diode_nd2ps_03v3.sym} 230 -100 2 0 {name=D1
model=diode_nd2ps_03v3
r_w=10u
r_l=10u
m=4}
C {symbols/diode_nd2ps_03v3.sym} 230 -260 2 0 {name=D2
model=diode_nd2ps_03v3
r_w=10u
r_l=10u
m=4}
