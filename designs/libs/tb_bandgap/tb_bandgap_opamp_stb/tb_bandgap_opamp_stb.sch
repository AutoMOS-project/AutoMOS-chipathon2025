v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1180 -780 1980 -380 {flags=graph
y1=-360
y2=87
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"Magnitude; vout db20()\\"
\\"Phase;ph(vout) cph()\\""
color="12 7"
unitx=1
logx=1
logy=0
autoload=1
sim_type=ac
rawfile=$netlist_dir/tb_bandgap_opamp_stb.raw
rainbow=1
hilight_wave=-1}
T {tcleval([xschem raw read $netlist_dir/[file tail [file rootname [xschem get current_name]]]_meas.raw
  set table "gm,pm,fzdb,fzph"
  foreach gm [xschem raw values gm] pm [xschem raw values pm] fzdb [xschem raw values fzdb] fzph [xschem raw values fzph] \{
    append table \\\\n [to_eng $gm] \{,\} [to_eng $pm] \{,\} [to_eng $fzdb] \{,\} [to_eng $fzph]
  \}
  xschem raw switch 0
  return [tabulate $table ,]])} 2010 -780 0 0 0.4 0.4 {floater=1 font=monospace}
N 590 -460 590 -410 {lab=VSS}
N 590 -440 660 -440 {lab=VSS}
N 660 -460 660 -440 {lab=VSS}
N 590 -570 590 -520 {lab=VDD}
N 660 -570 660 -520 {lab=vp}
N 970 -520 1050 -520 {lab=vout}
N 1050 -520 1050 -500 {lab=vout}
N 760 -640 830 -640 {lab=#net1}
N 890 -640 1000 -640 {lab=vout}
N 1000 -640 1000 -520 {lab=vout}
N 520 -460 520 -440 {lab=VSS}
N 520 -440 590 -440 {lab=VSS}
N 520 -560 520 -520 {lab=ibias}
N 760 -480 760 -460 {lab=#net1}
N 760 -520 830 -520 {lab=#net1}
N 760 -640 760 -520 {lab=#net1}
N 760 -520 760 -480 {lab=#net1}
C {capa.sym} 760 -430 0 0 {name=C1
m=1
value=1k
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 590 -350 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1050 -520 0 1 {name=p4 lab=vout}
C {vsource.sym} 590 -490 0 0 {name=V1 value=2 savecurrent=false}
C {vsource.sym} 660 -490 0 0 {name=V2 
value="1.2 AC 1"}
C {vsource.sym} 590 -380 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 660 -440 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 590 -550 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 660 -550 0 0 {name=p9  lab=vp}
C {lab_pin.sym} 760 -400 3 0 {name=p10 lab=VSS}
C {capa.sym} 1050 -470 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1050 -440 1 1 {name=p11 lab=VSS}
C {ind.sym} 860 -640 3 0 {name=L2
m=1
value=10G
footprint=1206
device=inductor}
C {devices/code_shown.sym} 10 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} -10 -950 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

** Create a new plot to save measurements
setplot new
set measplot=$curplot
let pm=vector(1)
let gm=vector(1)
let fzdb=vector(1)
let fzph=vector(1)

ac dec 100 1 10G
write tb_bandgap_opamp_stb.raw
unset appendwrite

** Measurements
let dbout=db(vout)
let phout=180*cph(vout)/pi
let sphout=phout+180
let mdbout=-dbout

meas ac fzdb when dbout=0
meas ac fzph when phout=-180
meas ac gm find mdbout at=fzph
meas ac pm find sphout at=fzdb

** Save to previous plot
let \{$measplot\}.pm=pm
let \{$measplot\}.gm=gm
let \{$measplot\}.fzdb=fzdb
let \{$measplot\}.fzph=fzph

setplot $measplot
settype decibel gm
settype phase pm
settype frequency fzdb
settype frequency fzph

write tb_bandgap_opamp_stb_meas.raw
.endc
"}
C {isource.sym} 520 -490 0 0 {name=I0 value=2u}
C {lab_pin.sym} 520 -540 2 1 {name=p12 lab=ibias}
C {lab_pin.sym} 890 -580 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 830 -540 0 0 {name=p2 lab=ibias}
C {lab_pin.sym} 830 -500 0 0 {name=p5 lab=vp}
C {lab_pin.sym} 890 -460 0 1 {name=p6 lab=VSS}
C {launcher.sym} 1250 -820 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp.raw ac"
}
C {launcher.sym} 2080 -830 0 0 {name=h1
descr="Reference print measurements"
url=https://medium.com/@f.hormot/displaying-measurements-and-waveforms-simultaneously-in-xschem-2ae0c71ecfb0}
C {libs/core_bandgap/bandgap_opamp/bandgap_opamp.sym} 830 -460 0 0 {name=x1}
C {launcher.sym} 780 -810 0 0 {name=h2
descr="Backannotate" 
tclcommand="xschem annotate_op"}
