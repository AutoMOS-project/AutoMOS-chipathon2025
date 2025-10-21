v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -430 160 -430 {lab=VDD}
N 140 -310 160 -310 {lab=VSS}
N 140 -250 160 -250 {lab=VDD}
N 140 -130 160 -130 {lab=VSS}
N 220 -390 250 -390 {lab=tieH}
N 220 -170 260 -170 {lab=tieL}
C {gf180mcu_fd_sc_mcu9t5v0/xschem/symbols/sc_tieh.sym} 100 -310 0 0 {name=SC1
model=gf180mcu_fd_sc_mcu9t5v0__tieh
spiceprefix=X
}
C {gf180mcu_fd_sc_mcu9t5v0/xschem/symbols/sc_tiel.sym} 100 -130 0 0 {name=SC2
model=gf180mcu_fd_sc_mcu9t5v0__tiel
spiceprefix=X
}
C {lab_wire.sym} 140 -430 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 140 -250 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 140 -310 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -130 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {iopin.sym} 60 -430 0 1 {name=p5 lab=VDD}
C {iopin.sym} 70 -130 0 1 {name=p6 lab=VSS}
C {opin.sym} 250 -390 0 0 {name=p7 lab=tieH}
C {opin.sym} 260 -170 0 0 {name=p8 lab=tieL}
