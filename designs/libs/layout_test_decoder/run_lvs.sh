#!/bin/bash
#

#-------------------------------------------
# Check input
#-------------------------------------------
if [ $# -lt 1 ]; then
    echo "Usage: $0 /path/to/layout_xxxx"
    exit 1
fi

TARGET_DIR="$1"
FOLDER_NAME=$(basename "$TARGET_DIR")
CIRCUIT_NAME=${FOLDER_NAME#layout_}
SCRIPT_DIR=$(dirname "$(realpath "$0")")

echo "Target folder: $TARGET_DIR"
echo "Running LVS for circuit: $CIRCUIT_NAME"

#-------------------------------------------
# Set up environment
#-------------------------------------------
echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuD} > /dev/null

echo "PDK_ROOT is $PDK_ROOT"
echo "PDK is $PDK"

cd "$TARGET_DIR" || { echo "Error: cannot cd into $TARGET_DIR"; exit 1; }

rm -rf extfiles
#-------------------------------------------
# Extract layout for LVS from magic
#-------------------------------------------
magic -dnull -noconsole -rcfile $PDK_ROOT/$PDK/libs.tech/magic/$PDK.magicrc << EOF
gds flatglob cap_mim
gds flatglob pfet*
gds flatglob nfet*
gds read $CIRCUIT_NAME
load $CIRCUIT_NAME
select top cell
extract path extfiles
extract all
ext2spice lvs
ext2spice merge conservative
ext2spice -p extfiles -o ${CIRCUIT_NAME}_layout.spice
quit -noprompt
EOF

#-------------------------------------------
# Run netgen for LVS
#-------------------------------------------
cat > run_lvs.tcl << EOF
# Tcl script to run LVS on $CIRCUIT_NAME

if {[catch {set PDK_ROOT \$::env(PDK_ROOT)}]} {set PDK_ROOT /usr/share/pdk}
if {[catch {set PDK \$::env(PDK)}]} {set PDK gf180mcuD}

set pdklib \${PDK_ROOT}/\${PDK}
set techlibs \${pdklib}/libs.tech
set reflibs \${pdklib}/libs.ref

#set setupfile \${techlibs}/netgen/${PDK}_setup.tcl
set setupfile ${SCRIPT_DIR}/${PDK}_setup.tcl
set sclib \${reflibs}/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice

set circuit1 [readnet spice ${CIRCUIT_NAME}_layout.spice]
set circuit2 [readnet spice \$sclib]

readnet spice ${CIRCUIT_NAME}.spice \$circuit2

lvs "\$circuit1 ${CIRCUIT_NAME}" "\$circuit2 ${CIRCUIT_NAME}" \
        \$setupfile ${CIRCUIT_NAME}_comp.out
EOF

netgen -batch source run_lvs.tcl | tee netgen.log

#-------------------------------------------
# Clean up
#-------------------------------------------
# rm -r extfiles
# rm run_lvs.tcl

echo "Circuit 1 == layout ; Circuit 2 == schematic"
echo "Done with LVS for $CIRCUIT_NAME!"
exit 0


