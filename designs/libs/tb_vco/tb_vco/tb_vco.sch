v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -360 -150 -360 -120 {lab=VIN}
N -270 -150 -270 -120 {lab=IBIAS}
N 20 -100 50 -100 {lab=VIN}
N 20 -60 50 -60 {lab=IBIAS}
N 230 -100 270 -100 {lab=VOUT}
N -360 -70 -360 -60 {lab=GND}
N -450 -150 -450 -120 {lab=EN}
N -450 -70 -450 -60 {lab=GND}
N 20 -40 50 -40 {lab=EN}
C {code_shown.sym} 150 160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} -540 -90 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -540 -60 0 0 {name=l1 lab=GND}
C {vdd.sym} -540 -120 0 0 {name=l5 lab=VDD}
C {vdd.sym} 130 -160 0 0 {name=l2 lab=VDD}
C {vsource.sym} -360 -100 0 0 {name=V3 value=0.6 savecurrent=false}
C {gnd.sym} -360 -60 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -360 -150 0 0 {name=p9 sig_type=std_logic lab=VIN}
C {isource.sym} -270 -90 0 0 {name=I0 value=10u}
C {gnd.sym} -270 -60 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -270 -150 0 0 {name=p10 sig_type=std_logic lab=IBIAS}
C {devices/code_shown.sym} -770 110 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
tran 100p 1000n
meas TRAN tdiff TRIG v(VOUT) VAL=0.9 RISE=300 TARG v(VOUT) VAL=0.9 RISE=301
let freq = 1 / tdiff
print freq
.endc
"}
C {lab_pin.sym} 20 -100 2 1 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 20 -60 2 1 {name=p3 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} 270 -100 0 1 {name=p1 sig_type=std_logic lab=VOUT}
C {gnd.sym} 130 0 0 1 {name=l9 lab=GND}
C {gnd.sym} 150 0 0 0 {name=l10 lab=GND}
C {devices/code_shown.sym} -790 340 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
tran 100p 1000n 0 10p
plot VOUT
.endc
"}
C {vsource.sym} -450 -100 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -450 -60 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -450 -150 0 0 {name=p4 sig_type=std_logic lab=EN}
C {lab_pin.sym} 20 -40 0 0 {name=p5 sig_type=std_logic lab=EN}
C {libs/core_vco/vco/vco.sym} 70 -140 0 0 {name=x1}
