v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -160 210 -140 {lab=VSS}
N 100 -140 180 -140 {lab=VIN}
N 240 -140 320 -140 {lab=VOUT}
N 210 -310 210 -280 {lab=VDD}
N 100 -310 180 -310 {lab=VIN}
N 100 -310 100 -140 {lab=VIN}
N 240 -310 320 -310 {lab=VOUT}
N 320 -310 320 -140 {lab=VOUT}
N 40 -230 100 -230 {lab=VIN}
N 320 -230 380 -230 {lab=VOUT}
N 210 -380 210 -350 {lab=ENB}
N 210 -100 210 -60 {lab=EN}
N 140 -600 210 -600 {lab=VDD}
N 210 -600 210 -580 {lab=VDD}
N 140 -440 210 -440 {lab=VSS}
N 210 -460 210 -440 {lab=VSS}
C {symbols/nfet_05v0.sym} 210 -120 3 0 {name=M1
L=0.60u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 210 -330 3 1 {name=M2
L=0.50u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {iopin.sym} 40 -230 0 1 {name=p1 lab=VIN}
C {iopin.sym} 380 -230 0 0 {name=p2 lab=VOUT}
C {iopin.sym} 210 -60 2 0 {name=p4 lab=EN}
C {lab_wire.sym} 210 -160 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 210 -280 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 210 -380 0 0 {name=p3 sig_type=std_logic lab=ENB}
C {libs/core_test/test_inv/test_inv.sym} 140 -460 0 0 {name=x1}
C {lab_wire.sym} 330 -520 0 1 {name=p7 sig_type=std_logic lab=ENB}
C {lab_wire.sym} 140 -520 0 0 {name=p8 sig_type=std_logic lab=EN}
C {iopin.sym} 140 -600 0 1 {name=p9 lab=VDD}
C {iopin.sym} 140 -440 0 1 {name=p10 lab=VSS}
