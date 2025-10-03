v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -30 60 30 {lab=BC}
N 60 30 100 30 {lab=BC}
N 100 0 100 30 {lab=BC}
N 100 -100 100 -60 {lab=E}
C {symbols/pnp_05p00x00p42.sym} 80 -30 0 0 {name=Q1
model=pnp_05p00x00p42
spiceprefix=X
m=1}
C {lab_pin.sym} 100 -60 0 1 {name=p3 lab=E}
C {iopin.sym} 100 -100 0 0 {name=p4 lab=E}
C {iopin.sym} 100 30 0 0 {name=p5 lab=BC}
