# vim: set noexpandtab:
include macros.inc 

.PHONY: test_all clean

test_all:
	@for entry in `ls -dtr */ | tr -d / | egrep -v '(scripts|tmp)'`; do  \
		echo "*** Testing: $$entry"; \
		cd $$entry;  \
		make test; \
		cd ..; \
	done

clean:
	@for entry in `ls -dtr */ | tr -d / | egrep -v '(scripts|tmp)'`; do  \
		echo "*** Cleaning up: $$entry"; \
		cd $$entry;  \
		make clean; \
		cd ..; \
	done




