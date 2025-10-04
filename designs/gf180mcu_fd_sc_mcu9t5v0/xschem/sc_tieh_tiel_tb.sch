v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -290 70 -260 {lab=VDD}
N 70 -200 70 -170 {lab=VSS}
N 200 -310 200 -290 {lab=VDD}
N 220 -310 220 -290 {lab=VDD}
N 200 -310 220 -310 {lab=VDD}
N 200 -170 200 -150 {lab=VSS}
N 220 -170 220 -150 {lab=VSS}
N 200 -150 220 -150 {lab=VSS}
N 390 -170 390 -150 {lab=VSS}
N 410 -170 410 -150 {lab=VSS}
N 390 -150 410 -150 {lab=VSS}
N 390 -310 390 -290 {lab=VDD}
N 410 -310 410 -290 {lab=VDD}
N 390 -310 410 -310 {lab=VDD}
N 590 -310 590 -290 {lab=VDD}
N 590 -170 590 -150 {lab=VSS}
C {gf180mcu_fd_sc_mcu9t5v0/xschem/symbols/sc_tieh.sym} 160 -170 0 0 {name=SC1}
C {gf180mcu_fd_sc_mcu9t5v0/xschem/symbols/sc_tiel.sym} 350 -170 0 0 {name=SC2
model=gf180mcu_fd_sc_mcu9t5v0__tiel
spiceprefix=X
}
C {devices/code_shown.sym} 60 -540 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include "/foss/designs/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice"
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
"}
C {devices/code_shown.sym} 770 -380 0 0 {name=s1
only_toplevel=false
value="

.control
tran 1n 1u
plot V(TIEH) V(TIEL)+6 V(tie_h)+12 V(tie_l)+18
.endc
"}
C {title.sym} 160 -40 0 0 {name=l1 author="Luighi Viton"}
C {vsource.sym} 70 -230 0 0 {name=V1 value=5 savecurrent=false}
C {lab_wire.sym} 70 -290 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 70 -170 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 200 -310 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 200 -150 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 390 -310 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 390 -150 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 70 -140 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 70 -110 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 280 -250 0 1 {name=p8 sig_type=std_logic lab=TIEH}
C {lab_wire.sym} 470 -210 0 1 {name=p9 sig_type=std_logic lab=TIEL}
C {gf180mcu_fd_sc_mcu9t5v0/xschem/symbols/sc_tieh_tiel.sym} 550 -170 0 0 {name=SC3
model=gf180mcu_fd_sc_mcu9t5v0__tiel
spiceprefix=X
}
C {lab_wire.sym} 590 -310 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 590 -150 2 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 670 -250 0 1 {name=p11 sig_type=std_logic lab=tie_h}
C {lab_wire.sym} 670 -210 0 1 {name=p12 sig_type=std_logic lab=tie_l}
