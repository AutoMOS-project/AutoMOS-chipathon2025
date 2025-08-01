v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 -10 190 -10 {lab=Y}
N -20 -30 30 -30 {lab=A}
N -20 -0 30 -0 {lab=B}
N -190 150 -190 180 {lab=A}
N -190 310 -190 340 {lab=B}
C {vsource.sym} -190 -10 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -190 20 0 0 {name=l1 lab=GND}
C {gnd.sym} 80 50 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -20 -30 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} -20 0 0 0 {name=p4 sig_type=std_logic lab=B}
C {lab_wire.sym} 190 -10 0 0 {name=p5 sig_type=std_logic lab=Y}
C {vsource.sym} -190 210 0 0 {name=V2 value="PWL(0n 0 10n 0 20n 3.3 30n 3.3 40n 0)" savecurrent=false}
C {gnd.sym} -190 240 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -190 150 0 0 {name=p6 sig_type=std_logic lab=A}
C {vsource.sym} -190 370 0 0 {name=V3 value="PWL(0n 0 10n 3.3 30n 3.3 40n 0)" savecurrent=false}
C {gnd.sym} -190 400 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -190 310 0 0 {name=p7 sig_type=std_logic lab=B}
C {vdd.sym} 80 -70 0 0 {name=l2 lab=VDD}
C {vdd.sym} -190 -40 0 0 {name=l5 lab=VDD}
C {code_shown.sym} 120 150 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 100p 50n
plot A B Y
.endc
"}
C {code_shown.sym} 60 330 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {libs/core_vco/vco_and/vco_and.sym} 90 -10 0 0 {name=x1}
