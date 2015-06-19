# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Mux16.cmp)

run: hack_mux16.v hack_mux16_tb.v
	iverilog -o run $^

clean: 
	rm -f ./run




