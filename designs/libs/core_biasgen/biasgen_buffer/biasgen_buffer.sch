v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 3 480 -270 480 -250 {}
L 3 480 -250 500 -230 {}
L 3 470 -210 500 -230 {}
L 3 470 -210 500 -190 {}
L 3 480 -170 500 -190 {}
L 3 480 -170 480 -150 {}
L 3 320 -150 480 -150 {}
N 230 -420 260 -420 {lab=vn}
N 230 -420 230 -270 {lab=vn}
N 230 -270 500 -270 {lab=vn}
N 480 -370 480 -320 {lab=SUB}
N 130 -380 260 -380 {lab=vin}
N 320 -490 320 -460 {lab=VDD}
N 480 -470 480 -430 {lab=VDD}
N 320 -470 480 -470 {lab=VDD}
N 400 -400 440 -400 {lab=#net1}
N 320 -340 320 -150 {lab=VSS}
N 480 -320 480 -300 {lab=SUB}
N 480 -300 500 -300 {lab=SUB}
N 480 -400 490 -400 {lab=SUB}
N 490 -400 490 -350 {lab=SUB}
N 480 -350 490 -350 {lab=SUB}
C {libs/core_biasgen/biasgen_opamp/biasgen_opamp.sym} 260 -340 0 0 {name=x1}
C {title.sym} 160 -40 0 0 {name=l1 author="Luighi Viton"}
C {symbols/nfet_05v0.sym} 460 -400 0 0 {name=Mncs
L=1u
W=0.5u
nf=1
m=32
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {ipin.sym} 260 -460 0 0 {name=p12 lab=EN}
C {ipin.sym} 260 -440 0 0 {name=p13 lab=ENB}
C {iopin.sym} 320 -490 3 0 {name=p9 lab=VDD}
C {iopin.sym} 320 -150 1 0 {name=p1 lab=VSS}
C {iopin.sym} 300 -340 1 0 {name=p2 lab=ibias}
C {iopin.sym} 130 -380 2 0 {name=p3 lab=vin}
C {iopin.sym} 340 -340 1 0 {name=p4 lab=SUB}
C {iopin.sym} 500 -270 0 0 {name=p5 lab=vn}
C {iopin.sym} 500 -300 0 0 {name=p6 lab=vn_fb}
