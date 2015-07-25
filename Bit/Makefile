# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Bit.cmp)

run: hack_bit.v hack_bit_tb.v ../hack_macros.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
