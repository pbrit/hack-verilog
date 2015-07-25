# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,Dmux4Way.cmp)

run: hack_dmux4_way.v hack_dmux4_way_tb.v ../Decoder2/hack_decoder2.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
