# -*- mode: make -*-
# vi: set ft=ruby :
# vi: set noexpandtab:
SHELL=/bin/bash
COMPILE_ARGS=-Wall

define run-test
	@ ./run | gsed 's/$$/\r/' | diff - $1
	@ echo OK
endef

define compile
	iverilog $(COMPILE_ARGS) -o run $1
endef
