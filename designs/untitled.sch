v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -270 350 -270 {lab=LDO_EN}
N 320 -270 320 -150 {lab=LDO_EN}
N 320 -150 350 -150 {lab=LDO_EN}
N 390 -240 390 -180 {lab=ENp}
N 390 -120 390 -80 {lab=VSS}
N 390 -330 390 -300 {lab=VDD}
N 390 -270 400 -270 {lab=VDD}
N 400 -330 400 -270 {lab=VDD}
N 390 -150 400 -150 {lab=VSS}
N 400 -150 400 -80 {lab=VSS}
N 390 -80 400 -80 {lab=VSS}
N 540 -270 570 -270 {lab=ENp}
N 540 -270 540 -150 {lab=ENp}
N 540 -150 570 -150 {lab=ENp}
N 610 -240 610 -180 {lab=ENp}
N 610 -120 610 -80 {lab=VSS}
N 610 -330 610 -300 {lab=VDD}
N 610 -210 650 -210 {lab=ENp}
N 610 -270 620 -270 {lab=VDD}
N 620 -330 620 -270 {lab=VDD}
N 610 -330 620 -330 {lab=VDD}
N 610 -150 620 -150 {lab=VSS}
N 620 -150 620 -80 {lab=VSS}
N 610 -80 620 -80 {lab=VSS}
N 390 -210 540 -210 {lab=ENp}
N 410 -80 620 -80 {lab=VSS}
N 280 -210 320 -210 {lab=LDO_EN}
N 360 -80 410 -80 {lab=VSS}
N 360 -330 620 -330 {lab=VDD}
N 500 -370 500 -210 {lab=ENp}
N 500 -370 540 -370 {lab=ENp}
C {symbols/nfet_05v0.sym} 370 -150 0 0 {name=Minvn1
L=0.60u
W=0.42u
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
C {symbols/pfet_05v0.sym} 370 -270 0 0 {name=Minvp1
L=0.50u
W=0.60u
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
C {iopin.sym} 360 -80 2 0 {name=p2 lab=VSS}
C {ipin.sym} 280 -210 0 0 {name=p3 lab=LDO_EN}
C {symbols/nfet_05v0.sym} 590 -150 0 0 {name=Minvn2
L=0.60u
W=0.42u
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
C {symbols/pfet_05v0.sym} 590 -270 0 0 {name=Minvp2
L=0.50u
W=0.60u
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
C {iopin.sym} 360 -330 2 0 {name=p4 lab=VDD}
C {opin.sym} 650 -210 0 0 {name=p7 lab=ENp}
C {opin.sym} 540 -370 0 0 {name=p1 lab=ENn}
