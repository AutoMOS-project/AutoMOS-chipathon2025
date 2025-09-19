# Tcl script to run LVS on test_decoder

if {[catch {set PDK_ROOT $::env(PDK_ROOT)}]} {set PDK_ROOT /usr/share/pdk}
if {[catch {set PDK $::env(PDK)}]} {set PDK gf180mcuD}

set pdklib ${PDK_ROOT}/${PDK}
set techlibs ${pdklib}/libs.tech
set reflibs ${pdklib}/libs.ref

#set setupfile ${techlibs}/netgen/gf180mcuD_setup.tcl
set setupfile /foss/designs/libs/layout_test_decoder/gf180mcuD_setup.tcl
set sclib ${reflibs}/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice

set circuit1 [readnet spice test_decoder_layout.spice]
set circuit2 [readnet spice $sclib]

readnet spice test_decoder.spice $circuit2

lvs "$circuit1 test_decoder" "$circuit2 test_decoder"         $setupfile test_decoder_comp.out
