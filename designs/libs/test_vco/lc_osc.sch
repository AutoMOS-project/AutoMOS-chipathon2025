v {xschem version=3.4.5 file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 390 -680 390 -370 {
lab=vout_n}
N 640 -680 640 -370 {
lab=vout_p}
N 390 -520 490 -520 {
lab=vout_n}
N 350 -520 390 -520 {
lab=vout_n}
N 550 -520 640 -520 {
lab=vout_p}
N 640 -520 680 -520 {
lab=vout_p}
N 540 -480 540 -450 {
lab=vctrl}
N 430 -340 470 -340 {
lab=vout_p}
N 470 -410 470 -340 {
lab=vout_p}
N 470 -410 640 -410 {
lab=vout_p}
N 570 -340 600 -340 {
lab=vout_n}
N 570 -390 570 -340 {
lab=vout_n}
N 390 -390 570 -390 {
lab=vout_n}
N 390 -310 390 -270 {
lab=#net1}
N 390 -270 640 -270 {
lab=#net1}
N 640 -310 640 -270 {
lab=#net1}
N 530 -270 530 -200 {
lab=#net1}
N 230 -170 490 -170 {
lab=ibias}
N 190 -140 190 -100 {
lab=VSS}
N 530 -140 530 -100 {
lab=VSS}
N 190 -220 260 -220 {
lab=ibias}
N 260 -220 260 -170 {
lab=ibias}
N 390 -770 640 -770 {
lab=VDD}
N 390 -770 390 -740 {
lab=VDD}
N 640 -770 640 -740 {
lab=VDD}
N 530 -800 530 -770 {
lab=VDD}
N 190 -100 530 -100 {
lab=VSS}
N 370 -100 370 -50 {
lab=VSS}
N 380 -340 390 -340 {
lab=#net1}
N 380 -340 380 -290 {
lab=#net1}
N 640 -340 650 -340 {
lab=#net1}
N 650 -340 650 -290 {
lab=#net1}
N 530 -170 540 -170 {
lab=VSS}
N 540 -170 540 -120 {
lab=VSS}
N 530 -120 540 -120 {
lab=VSS}
N 180 -170 190 -170 {
lab=VSS}
N 180 -170 180 -120 {
lab=VSS}
N 180 -120 190 -120 {
lab=VSS}
N 190 -260 190 -220 {
lab=ibias}
N 190 -220 190 -200 {
lab=ibias}
N 380 -290 390 -290 {
lab=#net1}
N 640 -290 650 -290 {
lab=#net1}
C {devices/ind.sym} 390 -710 0 0 {name=L2
m=1
value=500p
footprint=1206
device=inductor}
C {devices/ind.sym} 640 -710 0 0 {name=L3
m=1
value=500p
footprint=1206
device=inductor}
C {devices/ipin.sym} 540 -450 0 0 {name=p3 lab=vctrl}
C {devices/iopin.sym} 370 -50 0 0 {name=p8 lab=VSS}
C {devices/iopin.sym} 530 -800 0 1 {name=p1 lab=VDD}
C {devices/opin.sym} 680 -520 0 0 {name=p5 lab=vout_p}
C {devices/opin.sym} 350 -520 0 1 {name=p6 lab=vout_n}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 210 -170 0 1 {name=M4
L=0.5
W=50
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 510 -170 0 0 {name=M3
L=0.5
W=50
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 410 -340 0 1 {name=M1
L=0.5
W=50
nf=1
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 620 -340 0 0 {name=M2
L=0.5
W=50
nf=1
mult=40
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 190 -260 0 1 {name=p2 lab=ibias}
C {sky130_fd_pr/cap_var_hvt.sym} 520 -520 3 0 {name=C1 model=cap_var_hvt W=50 L=20 VM=1 spiceprefix=X}
