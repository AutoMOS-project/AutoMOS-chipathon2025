v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -460 -150 -460 -120 {lab=EN}
N -360 -150 -360 -120 {lab=VIN}
N -270 -150 -270 -120 {lab=IBIAS}
C {libs/core_vco/vco/vco.sym} 70 -140 0 0 {name=I_vco}
C {lab_pin.sym} 130 -160 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 50 -60 0 0 {name=p2 lab=IBIAS}
C {lab_pin.sym} 230 -100 0 1 {name=p3 lab=VOUT}
C {lab_pin.sym} 50 -40 0 0 {name=p4 lab=EN}
C {lab_pin.sym} 150 0 1 1 {name=p5 lab=SUB}
C {lab_pin.sym} 130 0 1 1 {name=p6 lab=VSS}
C {lab_pin.sym} 50 -100 0 0 {name=p7 lab=VIN}
C {code_shown.sym} 150 160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 150 270 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 100p 50n
plot A B Y
.endc
"}
C {vsource.sym} -570 -90 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -570 -60 0 0 {name=l1 lab=GND}
C {vdd.sym} -570 -120 0 0 {name=l5 lab=VDD}
C {vdd.sym} 130 -160 0 0 {name=l2 lab=VDD}
C {vsource.sym} -460 -90 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -460 -60 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -460 -150 0 0 {name=p8 sig_type=std_logic lab=EN}
C {vsource.sym} -360 -90 0 0 {name=V3 value=0.5 savecurrent=false}
C {gnd.sym} -360 -60 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -360 -150 0 0 {name=p9 sig_type=std_logic lab=VIN}
C {isource.sym} -270 -90 0 0 {name=I0 value=1m}
C {gnd.sym} -270 -60 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -270 -150 0 0 {name=p10 sig_type=std_logic lab=IBIAS}
