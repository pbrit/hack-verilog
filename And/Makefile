# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,And.cmp)

run: hack_and.v hack_and_tb.v
	iverilog -o run hack_and.v hack_and_tb.v 

clean: 
	rm -f ./run




