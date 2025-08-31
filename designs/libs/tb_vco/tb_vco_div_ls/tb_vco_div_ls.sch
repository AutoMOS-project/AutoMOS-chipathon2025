v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 740 -510 770 -510 {lab=out_vco}
N 770 -510 770 -450 {lab=out_vco}
N 770 -450 840 -450 {lab=out_vco}
N 980 -450 1020 -450 {lab=#net1}
N 1020 -600 1020 -450 {lab=#net1}
N 820 -600 1020 -600 {lab=#net1}
N 820 -600 820 -520 {lab=#net1}
N 820 -520 840 -520 {lab=#net1}
N 1230 -450 1310 -450 {lab=#net2}
N 1310 -600 1310 -450 {lab=#net2}
N 1070 -600 1310 -600 {lab=#net2}
N 1070 -600 1070 -520 {lab=#net2}
N 1070 -520 1090 -520 {lab=#net2}
N 1230 -520 1360 -520 {lab=out_div}
N 1360 -520 1360 -490 {lab=out_div}
N 1360 -490 1390 -490 {lab=out_div}
N 810 -830 810 -800 {lab=VSS}
N 810 -750 810 -740 {lab=GND}
N 720 -830 720 -800 {lab=VDDL}
N 720 -750 720 -740 {lab=GND}
N 630 -750 630 -740 {lab=GND}
N 630 -830 630 -810 {lab=VDDH}
N 990 -830 990 -800 {lab=VIN}
N 1080 -830 1080 -800 {lab=IBIAS}
N 990 -750 990 -740 {lab=GND}
N 900 -830 900 -800 {lab=EN}
N 900 -750 900 -740 {lab=GND}
N 530 -510 560 -510 {lab=VIN}
N 530 -470 560 -470 {lab=IBIAS}
N 530 -450 560 -450 {lab=EN}
N 640 -410 640 -400 {lab=VSS}
N 910 -400 910 -390 {lab=VSS}
N 1160 -400 1160 -390 {lab=VSS}
N 1540 -430 1540 -420 {lab=VSS}
N 1520 -570 1520 -550 {lab=VDDH}
N 1510 -570 1520 -570 {lab=VDDH}
N 1560 -570 1560 -550 {lab=VDDL}
N 1560 -570 1570 -570 {lab=VDDL}
N 510 -750 510 -740 {lab=GND}
N 510 -830 510 -810 {lab=VDD}
N 640 -580 640 -570 {lab=VDD}
N 640 -580 650 -580 {lab=VDD}
N 910 -580 910 -570 {lab=VDD}
N 910 -580 920 -580 {lab=VDD}
N 1160 -580 1160 -570 {lab=VDD}
N 1160 -580 1170 -580 {lab=VDD}
N 1690 -490 1720 -490 {lab=out_ls}
N 1020 -450 1090 -450 {lab=#net1}
C {libs/core_vco/vco/vco.sym} 580 -550 0 0 {name=x1}
C {libs/core_vco/vco_ffd/vco_ffd.sym} 840 -400 0 0 {name=x2}
C {libs/core_vco/vco_ffd/vco_ffd.sym} 1090 -400 0 0 {name=x3}
C {libs/core_vco/vco_ls1v8_5/vco_ls1v8_5.sym} 1540 -490 0 0 {name=x4}
C {vsource.sym} 630 -780 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} 630 -740 0 0 {name=l1 lab=GND}
C {vsource.sym} 810 -780 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 810 -740 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 810 -830 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {vsource.sym} 720 -780 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 720 -740 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 720 -830 0 0 {name=p4 sig_type=std_logic lab=VDDL}
C {lab_pin.sym} 630 -830 0 0 {name=p1 sig_type=std_logic lab=VDDH}
C {vsource.sym} 990 -780 0 0 {name=V4 value=0.6 savecurrent=false}
C {gnd.sym} 990 -740 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 990 -830 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {isource.sym} 1080 -770 0 0 {name=I0 value=10u}
C {gnd.sym} 1080 -740 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 1080 -830 0 0 {name=p10 sig_type=std_logic lab=IBIAS}
C {vsource.sym} 900 -780 0 0 {name=V5 value=1.8 savecurrent=false}
C {gnd.sym} 900 -740 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 900 -830 0 0 {name=p3 sig_type=std_logic lab=EN}
C {code_shown.sym} 650 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 640 -280 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
tran 100p 500n
meas TRAN tdiff TRIG v(VOUT) VAL=0.9 RISE=500 TARG v(VOUT) VAL=0.9 RISE=501
let freq = 1 / tdiff
print freq
.endc
"}
C {devices/code_shown.sym} 1370 -250 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
tran 100p 500n 0 10p
plot out_vco out_div out_ls
.endc
"}
C {lab_pin.sym} 530 -510 2 1 {name=p5 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 530 -470 2 1 {name=p6 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 530 -450 0 0 {name=p7 sig_type=std_logic lab=EN}
C {gnd.sym} 660 -410 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 640 -400 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 910 -390 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1160 -390 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1540 -420 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1510 -570 0 0 {name=p14 sig_type=std_logic lab=VDDH}
C {lab_pin.sym} 1570 -570 0 1 {name=p15 sig_type=std_logic lab=VDDL}
C {vsource.sym} 510 -780 0 0 {name=V6 value=1.8 savecurrent=false}
C {gnd.sym} 510 -740 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 510 -830 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 650 -580 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 920 -580 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1170 -580 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 770 -480 2 0 {name=p20 sig_type=std_logic lab=out_vco}
C {lab_pin.sym} 1360 -490 3 0 {name=p21 sig_type=std_logic lab=out_div}
C {lab_pin.sym} 1720 -490 2 0 {name=p22 sig_type=std_logic lab=out_ls}
