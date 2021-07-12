#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/agustinsilva447/Escritorio/Github/FPGA/test_hsp/Lab6_HLS_BRAM/solution1/.autopilot/db/a.g.bc ${1+"$@"}
