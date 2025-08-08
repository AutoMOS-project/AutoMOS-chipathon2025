v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 -510 190 -480 {lab=EN}
N 190 -430 190 -420 {lab=GND}
N 100 -430 100 -420 {lab=GND}
N 720 -440 720 -430 {lab=GND}
N 600 -480 620 -480 {lab=A}
N 760 -480 780 -480 {lab=Y}
N 690 -550 690 -520 {lab=EN}
N 280 -510 280 -480 {lab=A}
C {code_shown.sym} 370 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} 100 -460 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 100 -420 0 0 {name=l1 lab=GND}
C {vdd.sym} 100 -490 0 0 {name=l5 lab=VDD}
C {vsource.sym} 190 -460 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 190 -420 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 190 -510 0 0 {name=p4 sig_type=std_logic lab=EN}
C {vdd.sym} 660 -440 2 0 {name=l2 lab=VDD}
C {gnd.sym} 720 -430 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 690 -550 0 1 {name=p1 sig_type=std_logic lab=EN}
C {lab_pin.sym} 600 -480 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} 780 -480 0 1 {name=p3 sig_type=std_logic lab=Y}
C {libs/core_test/test_tristate/test_tristate.sym} 620 -440 0 0 {name=x1}
C {vsource.sym} 280 -450 0 0 {name=V4 value="PWL(0n 0 10n 0 20n 1.8 30n 1.8 40n 0)" savecurrent=false}
C {gnd.sym} 280 -420 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 280 -510 0 0 {name=p6 sig_type=std_logic lab=A}
C {code_shown.sym} 80 -280 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 100p 50n
plot A Y
.endc
"}
