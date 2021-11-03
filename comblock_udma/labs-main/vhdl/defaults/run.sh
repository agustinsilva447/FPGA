mkdir -p build
ghdl -a --workdir=build defaults_tb.vhdl
ghdl -e --workdir=build -Pbuild defaults_tb
ghdl -r --workdir=build -Pbuild defaults_tb --vcd=build/defaults.vcd

