all: nas_automp

nas_automp:
	git clone https://github.com/scampanoni/nas_automp.git $@
	cd $@ ; make ;

Linux: nas_automp
	cd nas_automp ; git checkout master ; ./bin/compile_benchmarks.sh ;

Nautilus: nas_automp
	cd nas_automp ; git checkout nautilus ; ./bin/compile_benchmarks.sh ;

clean:
	rm -rf nas_automp

.PHONY: clean Linux Nautilus
