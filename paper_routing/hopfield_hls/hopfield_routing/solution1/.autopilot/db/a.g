#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/agustinsilva447/Escritorio/Github/FPGA/paper_routing/hopfield_hls/hopfield_routing/solution1/.autopilot/db/a.g.bc ${1+"$@"}