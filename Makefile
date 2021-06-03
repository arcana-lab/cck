all: nas_automp

nas_automp:
	git clone git@github.com:scampanoni/nas_automp.git $@

clean:
	rm -rf nas_automp

.PHONY: clean
