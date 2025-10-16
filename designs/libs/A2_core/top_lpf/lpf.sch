v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1080 -530 -980 -530 {lab=Vin1}
N -980 -590 -980 -460 {lab=Vin1}
N -920 -590 -920 -460 {lab=#net1}
N -950 -590 -950 -540 {lab=VSS}
N -950 -500 -950 -460 {lab=VDD}
N -950 -680 -950 -630 {lab=_CLK}
N -950 -420 -950 -360 {lab=CLK}
N -920 -530 -870 -530 {lab=#net1}
N -920 -280 -920 -150 {lab=#net2}
N -980 -280 -980 -150 {lab=Vin2}
N -950 -200 -950 -150 {lab=VSS}
N -950 -280 -950 -240 {lab=VDD}
N -950 -110 -950 -60 {lab=_CLK}
N -950 -360 -950 -320 {lab=CLK}
N -1080 -220 -980 -220 {lab=Vin2}
N -920 -220 -870 -220 {lab=#net2}
N -870 -530 -750 -530 {lab=#net1}
N -870 -220 -750 -220 {lab=#net2}
N -750 -220 -600 -220 {lab=#net2}
N -750 -530 -600 -530 {lab=#net1}
N -480 -590 -480 -460 {lab=#net1}
N -420 -590 -420 -460 {lab=Vout1}
N -450 -590 -450 -540 {lab=VSS}
N -450 -500 -450 -460 {lab=VDD}
N -450 -680 -450 -630 {lab=CLK1}
N -450 -420 -450 -360 {lab=_CLK1}
N -420 -530 -370 -530 {lab=Vout1}
N -420 -280 -420 -150 {lab=Vout2}
N -480 -280 -480 -150 {lab=#net2}
N -450 -200 -450 -150 {lab=VSS}
N -450 -280 -450 -240 {lab=VDD}
N -450 -110 -450 -60 {lab=CLK1}
N -450 -360 -450 -320 {lab=_CLK1}
N -600 -530 -480 -530 {lab=#net1}
N -600 -220 -480 -220 {lab=#net2}
N -370 -530 -300 -530 {lab=Vout1}
N -420 -220 -380 -220 {lab=Vout2}
N -150 -530 -60 -530 {lab=Vout1}
N -100 -220 -60 -220 {lab=Vout2}
N -380 -220 -300 -220 {lab=Vout2}
N -150 -220 -100 -220 {lab=Vout2}
N -240 -530 -150 -530 {lab=Vout1}
N -300 -220 -280 -220 {lab=Vout2}
N -220 -220 -150 -220 {lab=Vout2}
N -300 -530 -240 -530 {lab=Vout1}
N -280 -220 -220 -220 {lab=Vout2}
N -750 -530 -750 -490 {lab=#net1}
N -750 -490 -750 -480 {lab=#net1}
N -750 -420 -750 -400 {lab=#net3}
N -750 -340 -750 -320 {lab=#net4}
N -750 -260 -750 -220 {lab=#net2}
N -610 -530 -610 -490 {lab=#net1}
N -610 -490 -610 -480 {lab=#net1}
N -610 -420 -610 -400 {lab=#net5}
N -610 -340 -610 -320 {lab=#net6}
N -610 -260 -610 -220 {lab=#net2}
N -310 -530 -310 -490 {lab=Vout1}
N -310 -490 -310 -480 {lab=Vout1}
N -310 -420 -310 -400 {lab=#net7}
N -310 -340 -310 -320 {lab=#net8}
N -310 -260 -310 -220 {lab=Vout2}
C {symbols/nfet_03v3.sym} -950 -610 1 0 {name=M3
L=0.5u
W=10u
nf=6
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
C {symbols/pfet_03v3.sym} -950 -440 3 0 {name=M4
L=0.5u
W=10u
nf=6
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
C {ipin.sym} -950 -540 0 0 {name=p6 sig_type=std_logic lab=VSS
nf=1
L=0.3u
m=1
W=4u}
C {ipin.sym} -950 -500 0 0 {name=p7 sig_type=std_logic lab=VDD
nf=1
L=0.3u
m=1
W=4u}
C {ipin.sym} -950 -680 0 0 {name=p8 sig_type=std_logic lab=_CLK}
C {ipin.sym} -950 -390 0 0 {name=p9 sig_type=std_logic lab=CLK
L=0.3u
nf=1
m=5
W=4u}
C {symbols/nfet_03v3.sym} -950 -130 3 0 {name=M7
L=0.5u
W=10u
nf=6
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
C {symbols/pfet_03v3.sym} -950 -300 1 0 {name=M8
L=0.5u
W=10u
nf=6
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
C {lab_wire.sym} -950 -190 2 0 {name=p14 sig_type=std_logic lab=VSS
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -950 -260 2 0 {name=p15 sig_type=std_logic lab=VDD
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -950 -80 2 0 {name=p16 sig_type=std_logic lab=_CLK
W=4u}
C {ipin.sym} -1080 -530 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {ipin.sym} -1080 -220 0 0 {name=p17 sig_type=std_logic lab=Vin2}
C {symbols/nfet_03v3.sym} -450 -610 1 0 {name=M19
L=0.5u
W=10u
nf=6
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
C {symbols/pfet_03v3.sym} -450 -440 3 0 {name=M20
L=0.5u
W=10u
nf=6
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
C {lab_wire.sym} -450 -550 0 0 {name=p26 sig_type=std_logic lab=VSS
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -450 -480 0 0 {name=p27 sig_type=std_logic lab=VDD
nf=1
L=0.3u
m=1
W=4u}
C {ipin.sym} -450 -680 0 0 {name=p28 sig_type=std_logic lab=CLK1
W=4u}
C {ipin.sym} -450 -390 0 0 {name=p29 sig_type=std_logic lab=_CLK1
L=0.3u
nf=1
m=5
W=4u}
C {symbols/nfet_03v3.sym} -450 -130 3 0 {name=M23
L=0.5u
W=10u
nf=6
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
C {symbols/pfet_03v3.sym} -450 -300 1 0 {name=M24
L=0.5u
W=10u
nf=6
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
C {lab_wire.sym} -450 -190 2 0 {name=p34 sig_type=std_logic lab=VSS
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -450 -260 2 0 {name=p35 sig_type=std_logic lab=VDD
nf=1
L=0.3u
m=1
W=4u}
C {lab_wire.sym} -450 -80 2 0 {name=p36 sig_type=std_logic lab=CLK1
W=4u}
C {opin.sym} -60 -530 1 0 {name=p30 sig_type=std_logic lab=Vout1}
C {opin.sym} -60 -220 3 0 {name=p37 sig_type=std_logic lab=Vout2}
C {symbols/cap_mim_1f0fF.sym} -750 -370 0 0 {name=C2
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {devices/code_shown.sym} -830 -790 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {symbols/cap_mim_1f0fF.sym} -750 -450 0 0 {name=C4
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} -750 -290 0 0 {name=C1
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} -610 -370 0 0 {name=C3
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} -610 -450 0 0 {name=C5
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} -610 -290 0 0 {name=C6
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} -310 -370 0 0 {name=C7
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} -310 -450 0 0 {name=C8
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} -310 -290 0 0 {name=C9
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
