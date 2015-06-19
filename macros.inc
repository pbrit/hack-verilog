# -*- mode: make -*-
# vi: set ft=ruby :
# vi: set noexpandtab:

define run-test
	@ ./run | gsed 's/$$/\r/' | diff - $1
	@ echo OK
endef
