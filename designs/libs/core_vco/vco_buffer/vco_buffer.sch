v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -500 470 -500 {lab=#net1}
N 440 -500 440 -380 {lab=#net1}
N 440 -380 470 -380 {lab=#net1}
N 510 -530 510 -500 {lab=VDD}
N 510 -470 510 -410 {lab=#net2}
N 510 -380 510 -350 {lab=VSS}
N 660 -500 690 -500 {lab=#net2}
N 660 -500 660 -380 {lab=#net2}
N 660 -380 690 -380 {lab=#net2}
N 730 -530 730 -500 {lab=VDD}
N 730 -470 730 -410 {lab=#net3}
N 730 -380 730 -350 {lab=VSS}
N 510 -440 660 -440 {lab=#net2}
N 510 -350 510 -310 {lab=VSS}
N 730 -350 730 -310 {lab=VSS}
N 510 -590 510 -530 {lab=VDD}
N 730 -590 730 -530 {lab=VDD}
N 850 -720 850 -590 {lab=VDD}
N 860 -310 860 -190 {lab=VSS}
N 350 -440 440 -440 {lab=#net1}
N 510 -310 860 -310 {lab=VSS}
N 510 -590 850 -590 {lab=VDD}
N 730 -440 910 -440 {lab=#net3}
N 910 -500 940 -500 {lab=#net3}
N 910 -500 910 -380 {lab=#net3}
N 910 -380 940 -380 {lab=#net3}
N 980 -530 980 -500 {lab=VDD}
N 980 -470 980 -410 {lab=#net4}
N 980 -380 980 -350 {lab=VSS}
N 1130 -500 1160 -500 {lab=#net4}
N 1130 -500 1130 -380 {lab=#net4}
N 1130 -380 1160 -380 {lab=#net4}
N 1200 -530 1200 -500 {lab=VDD}
N 1200 -470 1200 -410 {lab=#net5}
N 1200 -380 1200 -350 {lab=VSS}
N 980 -440 1130 -440 {lab=#net4}
N 980 -350 980 -310 {lab=VSS}
N 1200 -350 1200 -310 {lab=VSS}
N 980 -590 980 -530 {lab=VDD}
N 1200 -590 1200 -530 {lab=VDD}
N 850 -590 1200 -590 {lab=VDD}
N 860 -310 1200 -310 {lab=VSS}
N 1200 -440 1380 -440 {lab=out}
N 1380 -500 1410 -500 {lab=#net6}
N 1380 -500 1380 -380 {lab=#net6}
N 1380 -380 1410 -380 {lab=#net6}
N 1450 -530 1450 -500 {lab=VDD}
N 1450 -470 1450 -410 {lab=#net7}
N 1450 -380 1450 -350 {lab=VSS}
N 1600 -500 1630 -500 {lab=#net7}
N 1600 -500 1600 -380 {lab=#net7}
N 1600 -380 1630 -380 {lab=#net7}
N 1670 -530 1670 -500 {lab=VDD}
N 1670 -470 1670 -410 {lab=#net8}
N 1670 -380 1670 -350 {lab=VSS}
N 1450 -440 1600 -440 {lab=#net7}
N 1450 -350 1450 -310 {lab=VSS}
N 1670 -350 1670 -310 {lab=VSS}
N 1450 -590 1450 -530 {lab=VDD}
N 1670 -590 1670 -530 {lab=VDD}
N 1200 -590 1670 -590 {lab=VDD}
N 1200 -310 1670 -310 {lab=VSS}
N 280 -500 310 -500 {lab=#net9}
N 280 -500 280 -380 {lab=#net9}
N 280 -380 310 -380 {lab=#net9}
N 350 -530 350 -500 {lab=VDD}
N 350 -470 350 -410 {lab=#net1}
N 350 -380 350 -350 {lab=VSS}
N 350 -350 350 -310 {lab=VSS}
N 350 -590 350 -530 {lab=VDD}
N 110 -500 140 -500 {lab=in}
N 110 -500 110 -380 {lab=in}
N 110 -380 140 -380 {lab=in}
N 180 -530 180 -500 {lab=VDD}
N 180 -470 180 -410 {lab=#net9}
N 180 -380 180 -350 {lab=VSS}
N 180 -350 180 -310 {lab=VSS}
N 180 -590 180 -530 {lab=VDD}
N 180 -590 350 -590 {lab=VDD}
N 180 -310 350 -310 {lab=VSS}
N 180 -440 280 -440 {lab=#net9}
N 350 -590 510 -590 {lab=VDD}
N 350 -310 510 -310 {lab=VSS}
C {symbols/pfet_03v3.sym} 490 -500 0 0 {name=M16
L=0.3u
W=1u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 490 -380 0 0 {name=M17
L=0.3u
W=1u
nf=1
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
C {ipin.sym} 110 -440 0 0 {name=p1 lab=in
}
C {iopin.sym} 850 -720 0 0 {name=p3 lab=VDD}
C {iopin.sym} 860 -190 0 0 {name=p4 lab=VSS}
C {symbols/nfet_03v3.sym} 710 -380 0 0 {name=M2
L=0.3u
W=1u
nf=1
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
C {symbols/nfet_03v3.sym} 960 -380 0 0 {name=M4
L=0.3u
W=1u
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
C {symbols/nfet_03v3.sym} 1180 -380 0 0 {name=M6
L=0.3u
W=1u
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
C {opin.sym} 1670 -440 2 1 {name=p5 lab=out}
C {symbols/pfet_03v3.sym} 710 -500 0 0 {name=M1
L=0.3u
W=1u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 960 -500 0 0 {name=M3
L=0.3u
W=1u
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1180 -500 0 0 {name=M5
L=0.3u
W=1u
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1430 -380 0 0 {name=M7
L=0.3u
W=1u
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
C {symbols/pfet_03v3.sym} 1430 -500 0 0 {name=M9
L=0.3u
W=1u
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1650 -500 0 0 {name=M8
L=0.3u
W=1u
nf=8
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1650 -380 0 0 {name=M10
L=0.3u
W=1u
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
C {symbols/nfet_03v3.sym} 330 -380 0 0 {name=M12
L=0.3u
W=0.5u
nf=1
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
C {symbols/pfet_03v3.sym} 160 -500 0 0 {name=M13
L=0.3u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 160 -380 0 0 {name=M14
L=0.3u
W=0.5u
nf=1
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
C {symbols/pfet_03v3.sym} 330 -500 0 0 {name=M11
L=0.3u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
