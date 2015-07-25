# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Add16.cmp)

run: hack_add16.v hack_add16_tb.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
