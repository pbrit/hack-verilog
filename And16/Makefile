# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,And16.cmp)

run: hack_and16.v hack_and16_tb.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
