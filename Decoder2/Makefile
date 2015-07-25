# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Decoder2.cmp)

run: hack_decoder2.v hack_decoder2_tb.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
