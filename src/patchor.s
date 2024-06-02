.3ds

.open "codeor.bin", "build/patchor.bin", 0x100000

force_branch equ 0x1D0C5C
force_branch_dest equ 0x1D0C9C

nop1 equ 0x1D0CC0
nop2 equ 0x1D0CD0
nop3 equ 0x1D0CE8
nop4 equ 0x1D0D10
nop5 equ 0x1D0D38
nop6 equ 0x1D0D50

get_color_fix equ 0x41AA28

movr01 equ 0x434108
movr00 equ 0x5185CC

.include "src/patchmain.s"

.close