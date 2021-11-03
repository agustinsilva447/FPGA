mkdir -p build
ghdl -a --workdir=build comb.vhdl comb_tb.vhdl
ghdl -e --workdir=build comb_tb
ghdl -r --workdir=build comb_tb --vcd=build/comb.vcd

