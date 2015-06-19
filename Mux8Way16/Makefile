# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Mux8Way16.cmp)

run: hack_mux8_way16.v hack_mux8_way16_tb.v ../Mux16/hack_mux16.v ../Mux4Way16/hack_mux4_way16.v
	iverilog -o run $^

clean: 
	rm -f ./run




