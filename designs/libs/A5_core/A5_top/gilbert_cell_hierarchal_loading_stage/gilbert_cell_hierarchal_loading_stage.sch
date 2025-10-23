v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 900 -1110 900 -1060 {
lab=I_in_pos}
N 1100 -1110 1100 -1060 {
lab=I_in_neg}
N 900 -1230 900 -1170 {
lab=VDD}
N 1100 -1230 1100 -1170 {
lab=VDD}
N 810 -1230 1100 -1230 {
lab=VDD}
N 920 -1140 950 -1140 {
lab=VSS}
N 1050 -1140 1080 -1140 {
lab=VSS}
C {iopin.sym} 1100 -1060 1 0 {name=p1 lab=I_in_neg}
C {iopin.sym} 900 -1060 1 0 {name=p2 lab=I_in_pos
}
C {symbols/ppolyf_u_1k.sym} 900 -1140 0 1 {name=R_load_2
W=1e-6
L=20e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1100 -1140 0 0 {name=R_load_1
W=1e-6
L=20e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 950 -1140 1 0 {name=p3 sig_type=std_logic lab=VSS}
C {iopin.sym} 810 -1230 0 1 {name=p4 lab=VDD}
C {lab_pin.sym} 1050 -1140 1 0 {name=p5 sig_type=std_logic lab=VSS}
C {iopin.sym} 810 -1050 0 1 {name=p6 lab=VSS}
