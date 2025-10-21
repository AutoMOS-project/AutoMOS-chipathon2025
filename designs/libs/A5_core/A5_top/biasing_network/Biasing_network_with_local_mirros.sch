v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Desription

The biasing circuit for the Gilbert cell,
providing constant 50uA current at both its
outputs} 2880 -2390 0 0 0.4 0.4 {}
N 180 -1370 240 -1370 {
lab=VDD}
N 840 -1190 840 -1020 {
lab=I_out_1}
N 610 -860 640 -860 {
lab=VSS}
N 610 -1140 1400 -1140 {
lab=#net1}
N 1180 -1190 1180 -1020 {
lab=I_out_2}
N 1600 -1190 1600 -1020 {
lab=I_out_3}
N 480 -1140 610 -1140 {
lab=#net1}
N 480 -1210 480 -1140 {
lab=#net1}
N 950 -860 980 -860 {
lab=VSS}
N 1370 -860 1400 -860 {
lab=VSS}
N 640 -1140 640 -1110 {
lab=#net1}
N 640 -1050 640 -980 {
lab=#net1}
N 980 -1050 980 -980 {
lab=#net1}
N 980 -1140 980 -1110 {
lab=#net1}
N 1400 -1050 1400 -980 {
lab=#net1}
N 1400 -1140 1400 -1110 {
lab=#net1}
N 640 -1110 640 -1050 {
lab=#net1}
N 980 -1110 980 -1050 {
lab=#net1}
N 1400 -1110 1400 -1050 {
lab=#net1}
N 360 -1210 360 -1160 {
lab=I_BIAS}
N 240 -1370 280 -1370 {
lab=VDD}
N 1400 -1140 1810 -1140 {
lab=#net1}
N 1810 -1140 1810 -980 {
lab=#net1}
N 1790 -860 1810 -860 {
lab=VSS}
N 1780 -860 1790 -860 {
lab=VSS}
N 2010 -1190 2010 -1020 {
lab=I_out_4}
C {title-2.sym} 0 0 0 0 {name=l9 author="Time Transcenders" lock=true rev=1.0 page=1}
C {code.sym} 50 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical

"
}
C {code.sym} 2705 -2395 0 0 {name=SPICE only_toplevel=true 
value="
* let sets vectors to a plot, while set sets a variable, globally accessible in .control
.control

    * Set frequency and amplitude variables to proper values from within the control sequence
    save all

    op
    show

    write Biasing_network_sim.raw

    set appendwrite

    * Transient analysis to observe mixing operation
    tran 1p 10n


    write Biasing_network_sim.raw

.endc
"}
C {iopin.sym} 190 -860 0 1 {name=p1 lab=VSS}
C {iopin.sym} 360 -1160 3 1 {name=p2 lab=I_BIAS}
C {opin.sym} 840 -1190 3 0 {name=p7 lab=I_out_1}
C {opin.sym} 1180 -1190 3 0 {name=p8 lab=I_out_2}
C {opin.sym} 1600 -1190 3 0 {name=p9 lab=I_out_3}
C {iopin.sym} 180 -1370 0 1 {name=p3 lab=VDD}
C {/home/vasil/Downloads/AutoMOS-chipathon2025/designs/libs/core_top/A5_Time_Transcenders/symbol/Local_mirror_pmos.sym} 360 -1270 0 0 {name=x_PMOS_mirror
l_ref=pmos_l_ref
w_ref=pmos_w_ref
l_mir=pmos_l_mir
w_mir=pmos_w_mir}
C {/home/vasil/Downloads/AutoMOS-chipathon2025/designs/libs/core_top/A5_Time_Transcenders/symbol/Local_mirror_nmos.sym} 720 -900 0 0 {name=x_NMOS_mirror_1
l_ref=nmos_l_ref_1
w_ref=nmos_w_ref_1
nf_ref=nmos_nf_ref_1
l_mir=nmos_l_mir_1
w_mir=nmos_w_mir_1
nf_mir=nmos_nf_mir_1}
C {lab_pin.sym} 610 -860 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {/home/vasil/Downloads/AutoMOS-chipathon2025/designs/libs/core_top/A5_Time_Transcenders/symbol/Local_mirror_nmos.sym} 1060 -900 0 0 {name=x_NMOS_mirror_2
l_ref=nmos_l_ref_2
w_ref=nmos_w_ref_2
nf_ref=nmos_nf_ref_2
l_mir=nmos_l_mir_2
w_mir=nmos_w_mir_2
nf_mir=nmos_nf_mir_2}
C {/home/vasil/Downloads/AutoMOS-chipathon2025/designs/libs/core_top/A5_Time_Transcenders/symbol/Local_mirror_nmos.sym} 1480 -900 0 0 {name=x_NMOS_mirror_3
l_ref=nmos_l_ref_3
w_ref=nmos_w_ref_3
nf_ref=nmos_nf_ref_3
l_mir=nmos_l_mir_3
w_mir=nmos_w_mir_3
nf_mir=nmos_nf_mir_3}
C {lab_pin.sym} 950 -860 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1370 -860 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {/home/vasil/Downloads/AutoMOS-chipathon2025/designs/libs/core_top/A5_Time_Transcenders/symbol/Local_mirror_nmos.sym} 1890 -900 0 0 {name=x_NMOS_mirror_4
l_ref=nmos_l_ref_4
w_ref=nmos_w_ref_4
nf_ref=nmos_nf_ref_4
l_mir=nmos_l_mir_4
w_mir=nmos_w_mir_4
nf_mir=nmos_nf_mir_4}
C {lab_pin.sym} 1780 -860 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {opin.sym} 2010 -1190 3 0 {name=p11 lab=I_out_4}
