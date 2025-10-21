v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1220 -940 1310 -940 {lab=Vrefp}
N 1220 -340 1320 -340 {lab=Vrefn}
N 960 -340 1020 -340 {lab=Vrefn_2nd}
N 960 -570 960 -340 {lab=Vrefn_2nd}
N 910 -570 960 -570 {lab=Vrefn_2nd}
N 910 -590 1090 -590 {lab=Irefn_20uA}
N 910 -610 1090 -610 {lab=Irefn_50uA}
N 910 -630 1090 -630 {lab=Irefn_2uA}
N 910 -650 1090 -650 {lab=Irefp_2uA}
N 910 -670 1090 -670 {lab=Irefp_20uA}
N 910 -690 1090 -690 {lab=Irefp_50uA}
N 960 -940 960 -710 {lab=Vrefp_2nd}
N 910 -710 960 -710 {lab=Vrefp_2nd}
N 960 -940 1020 -940 {lab=Vrefp_2nd}
N 460 -720 590 -720 {lab=Vref_2nd}
N 220 -720 260 -720 {lab=Vref12}
N 220 -440 260 -440 {lab=Vcomp}
N 460 -440 710 -440 {lab=Vcomp_2nd}
N 710 -520 710 -440 {lab=Vcomp_2nd}
N 380 -640 380 -610 {lab=VSS}
N 380 -550 380 -520 {lab=VDD3V3}
N 1100 -450 1100 -420 {lab=VDD3V3}
N 1100 -860 1100 -830 {lab=VSS}
N 200 -240 1100 -240 {lab=VSS}
N 1100 -260 1100 -240 {lab=VSS}
N 740 -520 740 -240 {lab=VSS}
N 380 -360 380 -240 {lab=VSS}
N 210 -1040 1100 -1040 {lab=VDD3V3}
N 1100 -1040 1100 -1020 {lab=VDD3V3}
N 710 -1040 710 -760 {lab=VDD3V3}
N 380 -1040 380 -800 {lab=VDD3V3}
C {ipin.sym} 220 -720 0 0 {name=p22 lab=Vref12}
C {iopin.sym} 210 -1040 2 0 {name=p23 lab=VDD3V3}
C {iopin.sym} 200 -240 2 0 {name=p24 lab=VSS}
C {iopin.sym} 1310 -940 0 0 {name=p25 lab=Vrefp}
C {iopin.sym} 1320 -340 0 0 {name=p27 lab=Vrefn}
C {iopin.sym} 1090 -610 0 0 {name=p15 lab=Irefn_50uA}
C {iopin.sym} 1090 -630 0 0 {name=p21 lab=Irefn_2uA}
C {iopin.sym} 1090 -650 0 0 {name=p26 lab=Irefp_2uA}
C {iopin.sym} 1090 -690 0 0 {name=p28 lab=Irefp_50uA}
C {iopin.sym} 1090 -590 0 0 {name=p14 lab=Irefn_20uA}
C {iopin.sym} 1090 -670 0 0 {name=p16 lab=Irefp_20uA}
C {iopin.sym} 220 -440 2 0 {name=p1 lab=Vcomp}
C {Chipathon2025_pads/xschem/symbols/io_secondary_5p0/io_secondary_5p0.sym} 1020 -860 0 0 {name=IO1
spiceprefix=X
}
C {Chipathon2025_pads/xschem/symbols/io_secondary_5p0/io_secondary_5p0.sym} 1020 -260 0 0 {name=IO2
spiceprefix=X
}
C {Chipathon2025_pads/xschem/symbols/io_secondary_5p0/io_secondary_5p0.sym} 460 -640 0 1 {name=IO3
spiceprefix=X
}
C {Chipathon2025_pads/xschem/symbols/io_secondary_5p0/io_secondary_5p0.sym} 460 -360 0 1 {name=IO4
spiceprefix=X
}
C {title.sym} 210 -60 0 0 {name=l1 author="Alex Mantilla"}
C {lab_wire.sym} 380 -540 0 0 {name=p2 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 380 -620 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1100 -840 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1100 -440 0 0 {name=p5 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 590 -440 0 0 {name=p6 sig_type=std_logic lab=Vcomp_2nd}
C {lab_wire.sym} 560 -720 0 0 {name=p7 sig_type=std_logic lab=Vref_2nd}
C {lab_wire.sym} 960 -860 0 0 {name=p8 sig_type=std_logic lab=Vrefp_2nd}
C {lab_wire.sym} 960 -470 0 0 {name=p9 sig_type=std_logic lab=Vrefn_2nd}
C {libs/Axx_core/curr_ref_gen/curr_ref_gen.sym} 740 -640 0 0 {name=x1}
