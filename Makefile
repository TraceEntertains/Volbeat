.PHONY: all xy or as clean

all: xy or as


xy:
	@mkdir -p build dist
	@armips src/patchxy.s
	@flips -c codexy.bin build/patchxy.bin dist/0004000E00055D00.ips # make ips patch for x
	@cp dist/0004000E00055D00.ips dist/0004000E00055E00.ips # copy patch for x to y

or:
	@mkdir -p build dist
	@armips src/patchor.s
	@flips -c codeor.bin build/patchor.bin dist/0004000E0011C400.ips # make ips patch for or

as:
	@mkdir -p build dist
	@armips src/patchas.s
	@flips -c codeas.bin build/patchas.bin dist/0004000E0011C500.ips # make ips patch for as

clean:
	@echo clean ...
	@rm -rf build dist