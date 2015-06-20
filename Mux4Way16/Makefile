# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Mux4Way16.cmp)

run: hack_mux4_way16.v hack_mux4_way16_tb.v ../Mux16/hack_mux16.v ../Mux/hack_mux.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run




