v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 760 -800 760 -640 {lab=DEMUX_in}
N 900 -800 980 -800 {lab=DEMUX_out2}
N 980 -800 980 -640 {lab=DEMUX_out2}
N 900 -640 980 -640 {lab=DEMUX_out2}
N 760 -800 840 -800 {lab=DEMUX_in}
N 760 -640 840 -640 {lab=DEMUX_in}
N 980 -720 1040 -720 {lab=DEMUX_out2}
N 760 -440 760 -280 {lab=DEMUX_in}
N 900 -440 980 -440 {lab=DEMUX_out1}
N 980 -440 980 -280 {lab=DEMUX_out1}
N 900 -280 980 -280 {lab=DEMUX_out1}
N 760 -440 840 -440 {lab=DEMUX_in}
N 760 -280 840 -280 {lab=DEMUX_in}
N 980 -360 1040 -360 {lab=DEMUX_out1}
N 870 -600 870 -480 {lab=#net1}
N 680 -540 870 -540 {lab=#net1}
N 870 -800 870 -780 {lab=VDD}
N 870 -440 870 -420 {lab=VDD}
N 820 -780 820 -420 {lab=VDD}
N 870 -660 870 -640 {lab=VSS}
N 870 -300 870 -280 {lab=VSS}
N 820 -420 870 -420 {lab=VDD}
N 820 -780 870 -780 {lab=VDD}
N 870 -300 920 -300 {lab=VSS}
N 920 -660 920 -300 {lab=VSS}
N 870 -660 920 -660 {lab=VSS}
N 870 -880 870 -840 {lab=S}
N 400 -540 440 -540 {lab=S}
N 400 -880 400 -540 {lab=S}
N 320 -880 870 -880 {lab=S}
N 870 -240 870 -200 {lab=S}
N 400 -200 870 -200 {lab=S}
N 400 -540 400 -200 {lab=S}
N 820 -920 820 -780 {lab=VDD}
N 560 -920 560 -640 {lab=VDD}
N 560 -920 820 -920 {lab=VDD}
N 560 -960 560 -920 {lab=VDD}
N 560 -160 820 -160 {lab=VSS}
N 560 -160 560 -120 {lab=VSS}
N 560 -440 560 -160 {lab=VSS}
N 320 -720 760 -720 {lab=DEMUX_in}
N 360 -720 360 -360 {lab=DEMUX_in}
N 360 -360 760 -360 {lab=DEMUX_in}
N 820 -160 920 -160 {lab=VSS}
N 920 -300 920 -160 {lab=VSS}
C {symbols/nfet_05v0.sym} 870 -620 3 0 {name=M1
L=0.60u
W=6.00u
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
C {symbols/pfet_05v0.sym} 870 -820 1 0 {name=M2
L=0.60u
W=12.00u
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
C {iopin.sym} 1040 -720 0 0 {name=p2 lab=DEMUX_out2}
C {libs/core_ldo/ldo/ldo_INV/INV.sym} 380 -240 0 0 {name=x1}
C {symbols/nfet_05v0.sym} 870 -260 3 0 {name=M3
L=0.60u
W=6.00u
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
C {symbols/pfet_05v0.sym} 870 -460 1 0 {name=M4
L=0.60u
W=12.00u
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
C {iopin.sym} 320 -720 0 1 {name=p3 lab=DEMUX_in}
C {iopin.sym} 1040 -360 0 0 {name=p4 lab=DEMUX_out1}
C {ipin.sym} 320 -880 0 0 {name=p5 lab=S}
C {iopin.sym} 560 -960 1 1 {name=p6 lab=VDD}
C {iopin.sym} 560 -120 3 1 {name=p7 lab=VSS}
