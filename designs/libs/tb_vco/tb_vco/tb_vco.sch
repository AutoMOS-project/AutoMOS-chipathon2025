v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -460 -150 -460 -120 {lab=EN}
N -360 -150 -360 -120 {lab=VIN}
N -270 -150 -270 -120 {lab=IBIAS}
N 20 -100 50 -100 {lab=VIN}
N 20 -60 50 -60 {lab=IBIAS}
N 20 -40 50 -40 {lab=EN}
N 230 -100 270 -100 {lab=VOUT}
C {code_shown.sym} 150 160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} -570 -90 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -570 -60 0 0 {name=l1 lab=GND}
C {vdd.sym} -570 -120 0 0 {name=l5 lab=VDD}
C {vdd.sym} 130 -160 0 0 {name=l2 lab=VDD}
C {vsource.sym} -460 -90 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -460 -60 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -460 -150 0 0 {name=p8 sig_type=std_logic lab=EN}
C {vsource.sym} -360 -90 0 0 {name=V3 value=2 savecurrent=false}
C {gnd.sym} -360 -60 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -360 -150 0 0 {name=p9 sig_type=std_logic lab=VIN}
C {isource.sym} -270 -90 0 0 {name=I0 value=10u}
C {gnd.sym} -270 -60 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -270 -150 0 0 {name=p10 sig_type=std_logic lab=IBIAS}
C {devices/code_shown.sym} -380 140 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
tran  100p 500n
plot v(VOUT)
TRIG v(VOUT) VAL=0.5 RISE=1
.meas tran t2 TRIG v(VOUT) VAL=0.5 RISE=2
.meas tran period PARAM='t2 - t1'
.meas tran freq PARAM='1 / period'
print t1 t2 period freq
.endc
"}
C {lab_pin.sym} 20 -100 2 1 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 20 -60 2 1 {name=p3 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 20 -40 2 1 {name=p4 sig_type=std_logic lab=EN}
C {lab_pin.sym} 270 -100 0 1 {name=p1 sig_type=std_logic lab=VOUT}
C {gnd.sym} 130 0 0 1 {name=l9 lab=GND}
C {gnd.sym} 150 0 0 0 {name=l10 lab=GND}
C {libs/core_vco/vco/vco.sym} 70 -140 0 0 {name=x1}
