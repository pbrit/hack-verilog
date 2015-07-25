# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Not16.cmp)

run: hack_not16.v hack_not16_tb.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
