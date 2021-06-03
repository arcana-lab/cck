CLASS = C
BENCHMARK = EP.o  # list of supported binaries

init: nas_automp nautilus_cck


nas_automp:
	git clone https://github.com/scampanoni/nas_automp.git $@
	cd $@ ; make ;

nautilus_cck:
	git clone https://github.com/MJChku/Paths_to_OpenMP_in_the_Kernel_SC21/ nautilus_cck
	cd nautilus_cck; git checkout CCK;

build_linux_benchmarks: nas_automp
	cd nas_automp ; git checkout master ; ./bin/compile_benchmarks.sh ;

build_nautilus_benchmarks: nas_automp
	cd nas_automp ; git checkout nautilus ; ./bin/compile_benchmarks.sh ;

build_nautilus:
	cd nautilus_cck && cp configs/cck-config .config &&  ln -s -f ../binaries/nautilus/$(CLASS)/$(BENCHMARK) parallelized.o
	cd nautilus_cck && make isoimage

run_nautilus:
	@echo "At the root-shell> prompt"
	@echo "virgil _numcpus N to set the number of cpus to use\n"
	@echo "virgil test to run the test of $(BENCHMARK)\n"
	@sleep 10
	@cd nautilus_cck; ./run-cck

clean:
	-rm -rf nas_automp
	-rm -rf nautilus_cck

.PHONY: clean Linux Nautilus
