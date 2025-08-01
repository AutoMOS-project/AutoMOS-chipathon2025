v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1070 -880 1870 -580 {flags=graph
y1=-1.4e-08
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=v_cap_nmos_03v3
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
rawfile=$netlist_dir/tb_capacitor.raw}
B 2 1070 -580 1870 -280 {flags=graph
y1=-1.4e-08
y2=1.4e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(@rcap_nmos_03v3[i])
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
rawfile=$netlist_dir/tb_capacitor.raw}
B 2 1070 -1180 1870 -880 {flags=graph
y1=2.4e-17
y2=4e-15
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="cap_nmos_03v3 capacitance (typical); i(@rcap_nmos_03v3[i]) v_cap_nmos_03v3 deriv0() / abs()"
color=4
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
rawfile=$netlist_dir/tb_capacitor.raw
dataset=-1}
B 2 2020 -1190 2820 -790 {flags=graph
y1=3.5e-17
y2=4e-15
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.1
x2=3.2667945
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="cap_nmos_03v3 capacitance (typical); i(@rcap_nmos_03v3[i]) v_cap_nmos_03v3 deriv0() / abs()"
color=4
dataset=-1
unitx=1
logx=0
logy=0
sweep=v_cap_nmos_03v3
rainbow=0}
B 2 2020 -740 2820 -340 {flags=graph
y1=1e-13
y2=1.1e-13
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.1
x2=3.2667945
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"cap_mim_1f0 capacitance (typical); i(@rcap_mim_1f0[i]) v_cap_mim_1f0 deriv0() / abs()"
color=4
dataset=-1
unitx=1
logx=0
logy=0
sweep=v_cap_mim_1f0
rainbow=0
rawfile=$netlist_dir/tb_capacitor_ff.raw
autoload=1}
N 560 -860 560 -840 {lab=GND}
N 560 -940 560 -920 {lab=VDD}
N 880 -880 880 -860 {lab=v_cap_nmos_03v3}
N 880 -960 880 -940 {lab=VDD}
N 890 -550 890 -530 {lab=v_cap_mim_1f0}
N 890 -630 890 -610 {lab=VDD}
C {gnd.sym} 560 -840 0 0 {name=l1 lab=GND}
C {vsource.sym} 560 -890 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} 560 -940 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 10 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 -900 0 0 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.control
save all
** Define input signal
let VDD=3.3
let Vstep=3.3
let T=20u
let td=0
let trf=1u
let tON=0.5*T-trf


** Define transient params
let Tstop=td+trf
let Tstep=0.001*Tstop

** Set sources
alter @V1[DC] = $&VDD
alter @V1[PULSE]= [ 0 $&Vstep $&td $&trf $&trf $&tON $&T 1 ]

** parameters .step temperature
compose temp_sweep values -40 25 125

foreach temp_cur $&temp_sweep
set temp=$temp_cur
op
tran $&Tstep $&Tstop
write tb_capacitor.raw
set appendwrite
end
.endc
"}
C {gnd.sym} 880 -800 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 880 -870 0 0 {name=p3 sig_type=std_logic lab=v_cap_nmos_03v3}
C {symbols/cap_nmos_03v3.sym} 880 -830 0 0 {name=C1
W=1e-6
L=1e-6
model=cap_nmos_03v3
spiceprefix=X
m=1}
C {res.sym} 880 -910 0 0 {name=Rcap_nmos_03v3
value=100k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 880 -960 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 890 -470 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 890 -540 0 0 {name=p1 sig_type=std_logic lab=v_cap_mim_1f0}
C {res.sym} 890 -580 0 0 {name=Rcap_mim_1f0
value=100k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 890 -630 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {symbols/cap_mim_1f0fF.sym} 890 -500 0 0 {name=C3
W=10e-6
L=10e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {launcher.sym} 70 -1010 0 0 {name=h2
descr="Run PVT"
tclcommand="
set spicefile $netlist_dir/tb_capacitor.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/typical/ff/\} $spicefile
exec sed -i \{s/tb_capacitor.raw/tb_capacitor_ff.raw/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_capacitor_ff.raw/tb_capacitor_ss.raw/\} $spicefile
simulate
"}
C {title.sym} 160 -40 0 0 {name=l6 author="Luighi Viton"}
