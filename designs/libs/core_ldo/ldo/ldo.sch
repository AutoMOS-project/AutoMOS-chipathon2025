v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 700 -1000 760 -1000 {lab=VREF}
N 840 -840 840 -780 {lab=IBIAS}
N 1280 -740 1280 -680 {lab=#net1}
N 1280 -600 1280 -560 {lab=VSS}
N 1280 -840 1280 -800 {lab=VOUT}
N 1040 -960 1040 -840 {lab=SUB}
N 1040 -840 1080 -840 {lab=SUB}
N 1240 -840 1280 -840 {lab=VOUT}
N 1280 -930 1280 -840 {lab=VOUT}
N 1040 -960 1240 -960 {lab=SUB}
N 720 -920 760 -920 {lab=#net1}
N 720 -920 720 -710 {lab=#net1}
N 1280 -960 1300 -960 {lab=VDD}
N 1300 -1010 1300 -960 {lab=VDD}
N 1280 -1010 1300 -1010 {lab=VDD}
N 880 -1160 880 -1080 {lab=VDD}
N 1280 -1100 1280 -990 {lab=VDD}
N 880 -840 880 -520 {lab=VSS}
N 1280 -880 1360 -880 {lab=VOUT}
N 1140 -840 1180 -840 {lab=#net2}
N 1100 -1060 1100 -960 {lab=SUB}
N 1100 -1060 1150 -1060 {lab=SUB}
N 1150 -1060 1150 -1040 {lab=SUB}
N 1000 -960 1020 -960 {lab=SUB}
N 880 -1120 1260 -1120 {lab=VDD}
N 1280 -1120 1280 -1100 {lab=VDD}
N 1020 -960 1040 -960 {lab=SUB}
N 720 -710 720 -700 {lab=#net1}
N 720 -700 790 -700 {lab=#net1}
N 790 -700 1280 -700 {lab=#net1}
N 1280 -680 1280 -660 {lab=#net1}
N 1260 -1120 1280 -1120 {lab=VDD}
N 880 -560 1280 -560 {lab=VSS}
N 1160 -840 1160 -800 {lab=#net2}
N 1160 -800 1210 -800 {lab=#net2}
N 1210 -820 1210 -800 {lab=#net2}
N 1300 -770 1320 -770 {lab=VOUT}
N 1320 -820 1320 -770 {lab=VOUT}
N 1280 -820 1320 -820 {lab=VOUT}
N 1300 -630 1320 -630 {lab=#net1}
N 1320 -680 1320 -630 {lab=#net1}
N 1280 -680 1320 -680 {lab=#net1}
C {iopin.sym} 880 -1160 3 0 {name=p1 lab=VDD}
C {iopin.sym} 880 -520 1 0 {name=p2 lab=VSS}
C {iopin.sym} 1360 -880 0 0 {name=p3 lab=VOUT}
C {iopin.sym} 1150 -1040 1 0 {name=p4 lab=SUB}
C {iopin.sym} 700 -1000 2 0 {name=p5 lab=VREF}
C {iopin.sym} 840 -780 1 0 {name=p6 lab=IBIAS}
C {symbols/pfet_05v0.sym} 1260 -960 0 0 {name=M11
L=0.50u
W=100.00u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {libs/core_ldo/ldo/OTA.sym} 860 -960 0 0 {name=x1
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {symbols/cap_mim_2f0fF.sym} 1110 -840 3 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1500}
C {symbols/ppolyf_u_2k.sym} 1280 -770 0 1 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_2k
spiceprefix=X
m=25}
C {symbols/ppolyf_u_2k.sym} 1280 -630 0 1 {name=R2
W=1e-6
L=1e-6
model=ppolyf_u_2k
spiceprefix=X
m=25}
C {symbols/ppolyf_u_2k.sym} 1210 -840 3 0 {name=R3
W=1e-6
L=1e-6
model=ppolyf_u_2k
spiceprefix=X
m=25}
