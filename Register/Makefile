# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Register.cmp)

run: hack_register.v hack_register_tb.v ../Bit/hack_bit.v ../hack_macros.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
