.PHONY: all xy or as clean

all: xy or as


xy:
	@mkdir -p build out
	@armips src/patchxy.s
	@flips -c codexy.bin build/patchxy.bin out/0004000E00055D00.ips # make ips patch for x
	@cp out/0004000E00055D00.ips out/0004000E00055E00.ips # copy patch for x to y

or:
	@mkdir -p build out
	@armips src/patchor.s
	@flips -c codeor.bin build/patchor.bin out/0004000E0011C400.ips # make ips patch for or

as:
	@mkdir -p build out
	@armips src/patchas.s
	@flips -c codeas.bin build/patchas.bin out/0004000E0011C500.ips # make ips patch for as

clean:
	@echo clean ...
	@rm -rf build out