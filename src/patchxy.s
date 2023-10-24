.3ds

.open "codexy.bin", "build/patchxy.bin", 0x100000

force_branch equ 0x1C9760
force_branch_dest equ 0x1C97A0

nop1 equ 0x1C97C4
nop2 equ 0x1C97D4
nop3 equ 0x1C97EC
nop4 equ 0x1C9814
nop5 equ 0x1C983C
nop6 equ 0x1C9854

get_color_fix equ 0x3F8030

movr01 equ 0x41184C
movr00 equ 0x4E21E4

url_addr equ 0x5A0974

.org url_addr
	.ascii "http://poke-hax-check.pretendo.cc/validator/v1/validate", 0, 0, 0, 0, "http://poke-hax-check.pretendo.cc/validator/v1/public_key", 0, 0, 0, 0

.include "src/patchmain.s"

.close