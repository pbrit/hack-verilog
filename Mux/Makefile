# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Mux.cmp)

run: hack_mux.v hack_mux_tb.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run




