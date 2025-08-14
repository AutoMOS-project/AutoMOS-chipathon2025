v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 -320 480 -240 {lab=INV_out}
N 410 -350 440 -350 {lab=INV_in}
N 410 -350 410 -210 {lab=INV_in}
N 410 -210 440 -210 {lab=INV_in}
N 480 -350 500 -350 {lab=VDD}
N 500 -400 500 -350 {lab=VDD}
N 480 -400 500 -400 {lab=VDD}
N 480 -210 500 -210 {lab=VSS}
N 500 -210 500 -160 {lab=VSS}
N 490 -160 500 -160 {lab=VSS}
N 480 -160 490 -160 {lab=VSS}
N 350 -280 410 -280 {lab=INV_in}
N 480 -280 560 -280 {lab=INV_out}
N 480 -440 480 -380 {lab=VDD}
N 480 -180 480 -120 {lab=VSS}
C {symbols/pfet_05v0.sym} 460 -350 0 0 {name=M1
L=0.60u
W=3.00u
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
C {symbols/nfet_05v0.sym} 460 -210 0 0 {name=M2
L=0.60u
W=1.00u
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
C {iopin.sym} 350 -280 0 1 {name=p1 lab=INV_in}
C {iopin.sym} 560 -280 0 0 {name=p2 lab=INV_out}
C {iopin.sym} 480 -440 1 1 {name=p3 lab=VDD}
C {iopin.sym} 480 -120 3 1 {name=p4 lab=VSS}
