# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Dmux.cmp)

run: hack_dmux.v hack_dmux_tb.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
