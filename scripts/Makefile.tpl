# vim: set noexpandtab:
include ../macros.inc 

.PHONY: test clean

test: run
	$(call run-test,%name%.cmp)

run: hack_%name_underscore%.v hack_%name_underscore%_tb.v
	$(call compile,$^)

exec: run
	./run

clean: 
	rm -f ./run
