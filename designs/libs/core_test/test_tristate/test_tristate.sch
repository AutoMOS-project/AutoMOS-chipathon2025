v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 500 -370 620 -370 {lab=A}
N 500 -370 500 -180 {lab=A}
N 500 -180 620 -180 {lab=A}
N 670 -250 670 -230 {lab=VDD}
N 670 -250 690 -250 {lab=VDD}
N 670 -320 670 -300 {lab=VSS}
N 670 -300 690 -300 {lab=VSS}
N 390 -160 620 -160 {lab=#net1}
N 270 -100 670 -100 {lab=VSS}
N 670 -110 670 -100 {lab=VSS}
N 270 -240 270 -220 {lab=VDD}
N 270 -240 290 -240 {lab=VDD}
N 70 -400 620 -400 {lab=EN}
N 150 -160 200 -160 {lab=EN}
N 150 -400 150 -160 {lab=EN}
N 500 -100 500 -50 {lab=VSS}
N 500 -50 520 -50 {lab=VSS}
N 740 -380 820 -380 {lab=#net2}
N 750 -170 820 -170 {lab=#net3}
N 670 -100 860 -100 {lab=VSS}
N 860 -140 860 -100 {lab=VSS}
N 670 -460 860 -460 {lab=VDD}
N 860 -460 860 -410 {lab=VDD}
N 670 -460 670 -440 {lab=VDD}
N 760 -480 760 -460 {lab=VDD}
N 760 -480 780 -480 {lab=VDD}
N 860 -350 860 -200 {lab=Y}
N 860 -410 860 -380 {lab=VDD}
N 860 -170 860 -140 {lab=VSS}
C {libs/core_test/test_inv/test_inv.sym} 200 -100 0 0 {name=x1}
C {libs/core_test/test_nor/test_nor.sym} 620 -110 0 0 {name=x2}
C {libs/core_test/test_nand/test_nand.sym} 620 -320 0 0 {name=x3}
C {lab_pin.sym} 690 -300 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 690 -250 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 290 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {ipin.sym} 70 -400 0 0 {name=p4 lab=EN}
C {ipin.sym} 500 -280 0 0 {name=p5 lab=A}
C {iopin.sym} 780 -480 0 0 {name=p6 lab=VDD}
C {iopin.sym} 520 -50 0 0 {name=p7 lab=VSS}
C {symbols/nfet_03v3.sym} 840 -170 0 0 {name=M1
L=0.28u
W=0.3u
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
C {symbols/pfet_03v3.sym} 840 -380 0 0 {name=M2
L=0.28u
W=0.3u
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
C {opin.sym} 860 -280 0 0 {name=p8 lab=Y}
