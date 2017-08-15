	.section __TEXT,__text
	.globl _main
_main:
    xorq %rax, %rax
    movq a(%rip), %rax
    movq b(%rip), %rcx
    addq %rcx, %rax
    xorq %rax, %rax
    ret

    .section __DATA,__data
a:
    .quad 175
b:
    .quad 4097
