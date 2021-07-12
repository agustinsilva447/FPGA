#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/agustinsilva447/Escritorio/Github/FPGA/test_hsp2/matrix_multiply/proj_matrix_multiply/solution1/.autopilot/db/a.g.bc ${1+"$@"}
