GHIDRA?=$(HOME)/ghidra_9.0

##########################################################################
##########################################################################

BDEST:=./dist/CHIP8
GDEST:=$(GHIDRA)/Ghidra/Processors

build:
	cd data && ant "-Drepo.dir=$(GHIDRA)" "-Dframework.path=$(GHIDRA)/Ghidra/Framework"

	rm -Rf $(BDEST)
	mkdir -p $(BDEST)
	cp LICENSE $(BDEST)/LICENSE.txt
	touch $(BDEST)/Module.manifest
	cp -R data $(BDEST)/

install:
	rm -Rf $(GDEST)/CHIP8
	cp -R $(BDEST) $(GDEST)/

