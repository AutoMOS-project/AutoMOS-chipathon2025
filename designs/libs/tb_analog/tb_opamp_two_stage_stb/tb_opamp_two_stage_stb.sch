v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1170 -920 1970 -520 {flags=graph
y1=-266
y2=204
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
rawfile=$netlist_dir/tb_opamp_two_stage_stb.raw
rainbow=1
hilight_wave=-1}
T {tcleval([xschem raw read $netlist_dir/[file tail [file rootname [xschem get current_name]]]_meas.raw
  set table "gm,pm,fzdb,fzph"
  foreach gm [xschem raw values gm] pm [xschem raw values pm] fzdb [xschem raw values fzdb] fzph [xschem raw values fzph] \{
    append table \\\\n [to_eng $gm] \{,\} [to_eng $pm] \{,\} [to_eng $fzdb] \{,\} [to_eng $fzph]
  \}
  xschem raw switch 0
  return [tabulate $table ,]])} 1180 -420 0 0 0.4 0.4 {floater=1 font=monospace}
N 580 -600 580 -550 {lab=VSS}
N 580 -580 650 -580 {lab=VSS}
N 650 -600 650 -580 {lab=VSS}
N 580 -710 580 -660 {lab=VDD}
N 650 -710 650 -660 {lab=vp}
N 960 -660 1040 -660 {lab=vout}
N 1040 -660 1040 -640 {lab=vout}
N 750 -780 820 -780 {lab=#net1}
N 880 -780 990 -780 {lab=vout}
N 990 -780 990 -660 {lab=vout}
N 510 -600 510 -580 {lab=VSS}
N 510 -580 580 -580 {lab=VSS}
N 510 -700 510 -660 {lab=ibias}
N 750 -620 750 -600 {lab=#net1}
N 750 -660 820 -660 {lab=#net1}
N 750 -780 750 -660 {lab=#net1}
N 750 -660 750 -620 {lab=#net1}
C {capa.sym} 750 -570 0 0 {name=C1
m=1
value=1k
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 580 -490 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1040 -660 0 1 {name=p4 lab=vout}
C {vsource.sym} 580 -630 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 650 -630 0 0 {name=V2 
value="1.65 AC 1"}
C {vsource.sym} 580 -520 0 0 {name=VSS_sense value=0 savecurrent=false}
C {lab_pin.sym} 650 -580 2 0 {name=p7 lab=VSS}
C {lab_wire.sym} 580 -690 0 0 {name=p8  lab=VDD}
C {lab_wire.sym} 650 -690 0 0 {name=p9  lab=vp}
C {lab_pin.sym} 750 -540 3 0 {name=p10 lab=VSS}
C {capa.sym} 1040 -610 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1040 -580 1 1 {name=p11 lab=VSS}
C {ind.sym} 850 -780 3 0 {name=L2
m=1
value=10G
footprint=1206
device=inductor}
C {devices/code_shown.sym} 0 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} -20 -1090 0 0 {name=NGSPICE only_toplevel=true
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
write tb_opamp_two_stage_stb.raw
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

write tb_opamp_two_stage_stb_meas.raw
.endc
"}
C {isource.sym} 510 -630 0 0 {name=I0 value=2u}
C {lab_pin.sym} 510 -680 2 1 {name=p12 lab=ibias}
C {libs/core_analog/opamp_two_stage/opamp_two_stage.sym} 820 -600 0 0 {name=x1}
C {lab_pin.sym} 880 -720 0 1 {name=p1 lab=VDD}
C {lab_pin.sym} 820 -680 0 0 {name=p2 lab=ibias}
C {lab_pin.sym} 820 -640 0 0 {name=p5 lab=vp}
C {lab_pin.sym} 880 -600 0 1 {name=p6 lab=VSS}
C {launcher.sym} 1240 -960 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_opamp.raw ac"
}
C {launcher.sym} 1250 -470 0 0 {name=h1
descr="Reference print measurements"
url=https://medium.com/@f.hormot/displaying-measurements-and-waveforms-simultaneously-in-xschem-2ae0c71ecfb0}
C {title.sym} 160 -40 0 0 {name=l3 author="Luighi Viton"}
