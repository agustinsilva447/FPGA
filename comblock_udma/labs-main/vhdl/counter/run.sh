mkdir -p build
ghdl -a --workdir=build --work=COUNTER_LIB counter.vhdl counter_pkg.vhdl
ghdl -a --workdir=build -Pbuild counter_tb.vhdl
ghdl -e --workdir=build -Pbuild counter_tb
ghdl -r --workdir=build -Pbuild counter_tb --vcd=build/counter.vcd

