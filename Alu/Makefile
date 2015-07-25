# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Alu.cmp)

run: hack_alu.v hack_alu_tb.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
