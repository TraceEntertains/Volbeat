.3ds

.open "codeas.bin", "build/patchas.bin", 0x100000

force_branch equ 0x1D0C5C
force_branch_dest equ 0x1D0C9C

nop1 equ 0x1D0CC0
nop2 equ 0x1D0CD0
nop3 equ 0x1D0CE8
nop4 equ 0x1D0D10
nop5 equ 0x1D0D38
nop6 equ 0x1D0D50

get_color_fix equ 0x41AA20

movr01 equ 0x434108
movr00 equ 0x5185CC

url_addr equ 0x5E3708

; the "?c=1" is likely not required but I'm aiming for accuracy in case this is important later
.org url_addr
	.ascii "http://poke-hax-check.pretendo.cc/validator/v1/validate?c=1", 0, 0, 0, 0, "http://poke-hax-check.pretendo.cc/validator/v1/public_key?c=1", 0, 0, 0, 0

.include "src/patchmain.s"

.close