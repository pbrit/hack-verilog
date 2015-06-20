# vim: set noexpandtab:

.PHONY: test_all clean

test_all:
	cd And; make test
	cd Mux8Way16; make test
	cd Mux16; make test
	cd Mux4Way16; make test
	cd Mux; make test

clean:
	cd And; make clean
	cd Mux8Way16; make clean
	cd Mux16; make clean
	cd Mux4Way16; make clean
	cd Mux; make clean




