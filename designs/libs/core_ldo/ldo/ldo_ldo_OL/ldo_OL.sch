v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 380 -760 440 -760 {lab=VREF}
N 520 -600 520 -540 {lab=IBIAS}
N 920 -600 960 -600 {lab=VOUT}
N 960 -690 960 -600 {lab=VOUT}
N 720 -720 920 -720 {lab=Vota}
N 400 -680 440 -680 {lab=Vx}
N 400 -680 400 -470 {lab=Vx}
N 960 -720 980 -720 {lab=VDD}
N 980 -770 980 -720 {lab=VDD}
N 960 -770 980 -770 {lab=VDD}
N 560 -920 560 -840 {lab=VDD}
N 960 -860 960 -750 {lab=VDD}
N 560 -600 560 -280 {lab=VSS}
N 960 -640 1040 -640 {lab=VOUT}
N 820 -600 860 -600 {lab=#net1}
N 370 -300 370 -280 {lab=SUB}
N 680 -720 700 -720 {lab=Vota}
N 560 -880 940 -880 {lab=VDD}
N 960 -880 960 -860 {lab=VDD}
N 700 -720 720 -720 {lab=Vota}
N 400 -470 400 -460 {lab=Vx}
N 940 -880 960 -880 {lab=VDD}
N 560 -320 960 -320 {lab=VSS}
N 890 -580 890 -560 {lab=VDD}
N 920 -530 940 -530 {lab=VDD}
N 920 -390 940 -390 {lab=VDD}
N 960 -360 960 -320 {lab=VSS}
N 960 -500 960 -420 {lab=Vy}
N 960 -600 960 -560 {lab=VOUT}
N 890 -560 890 -390 {lab=VDD}
N 890 -390 920 -390 {lab=VDD}
N 890 -530 920 -530 {lab=VDD}
N 960 -460 1020 -460 {lab=Vy}
N 720 -600 760 -600 {lab=Vota}
N 720 -720 720 -600 {lab=Vota}
C {iopin.sym} 560 -920 3 0 {name=p1 lab=VDD}
C {iopin.sym} 560 -280 1 0 {name=p2 lab=VSS}
C {iopin.sym} 1040 -640 0 0 {name=p3 lab=VOUT}
C {iopin.sym} 370 -280 1 0 {name=p4 lab=SUB}
C {iopin.sym} 380 -760 2 0 {name=p5 lab=VREF}
C {iopin.sym} 520 -540 1 0 {name=p6 lab=IBIAS}
C {symbols/pfet_05v0.sym} 940 -720 0 0 {name=M11
L=0.50u
W=100.00u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {noconn.sym} 370 -300 1 0 {name=l1}
C {libs/core_ldo/ldo/ldo_OTA/OTA.sym} 540 -720 0 0 {name=x1}
C {lab_wire.sym} 890 -490 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 840 -720 0 0 {name=p8 sig_type=std_logic lab=Vota}
C {iopin.sym} 400 -460 1 0 {name=p9 lab=Vx}
C {iopin.sym} 1020 -460 2 1 {name=p10 lab=Vy}
C {symbols/ppolyf_u_1k.sym} 960 -530 0 0 {name=R1
W=1e-6
L=10e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 960 -390 0 0 {name=R2
W=1e-6
L=50e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 890 -600 3 0 {name=Rc
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 790 -600 3 0 {name=Cc
W=10e-6
L=10e-6
model=cap_mim_1f0fF
spiceprefix=X
m=10}
