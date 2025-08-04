v {xschem version=3.4.7 file_version=1.2
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
N 780 -370 860 -370 {
lab=#net1}
N 780 -460 940 -460 {
lab=VDD}
N 940 -460 940 -450 {
lab=VDD}
N 780 -290 780 -210 {
lab=GND}
N 780 -500 780 -460 {
lab=VDD}
N 780 -370 780 -350 {
lab=#net1}
N 690 -460 780 -460 {
lab=VDD}
N 690 -210 780 -210 {
lab=GND}
N 940 -280 940 -210 {
lab=GND}
N 780 -210 940 -210 {
lab=GND}
N 1020 -380 1070 -380 {
lab=out_p}
N 1020 -340 1070 -340 {
lab=out_n}
N 610 -460 690 -460 {
lab=VDD}
N 610 -460 610 -350 {
lab=VDD}
N 610 -290 610 -210 {
lab=GND}
N 610 -210 690 -210 {
lab=GND}
N 690 -460 690 -350 {
lab=VDD}
N 690 -290 690 -260 {
lab=#net2}
N 690 -260 720 -260 {
lab=#net2}
N 720 -430 720 -260 {
lab=#net2}
N 720 -430 900 -430 {
lab=#net2}
C {devices/code_shown.sym} 230 -310 0 0 {name=NGSPICE
only_toplevel=true
value="
*.option temp=27
*.option tnom=27
.control
save all
tran  100p 400n
* plot v(out_p) v(out_n)
write lc_osc_tb.raw
.endc
"}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {devices/vsource.sym} 780 -320 0 0 {name=V1 value=3.3}
C {sky130_fd_pr/corner.sym} 70 -320 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vdd.sym} 780 -500 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 780 -210 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 610 -320 0 0 {name=V2 value=3.3}
C {devices/lab_pin.sym} 1070 -380 0 1 {name=p1 sig_type=std_logic lab=out_p}
C {devices/lab_pin.sym} 1070 -340 0 1 {name=p2 sig_type=std_logic lab=out_n}
C {devices/isource.sym} 690 -320 0 0 {name=I0 value=1200m}
C {libs/test_vco/lc_osc.sym} 870 -300 0 0 {name=x1}
