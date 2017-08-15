	.section __TEXT,__text
	.globl _main
_main:
    movq a(%rip), %rax
    imulq %rax, %rax
    movq b(%rip), %rdx
    imulq %rdx, %rdx
    movq c(%rip), %rcx
    imulq %rcx, %rcx
    addq %rdx, %rax
    subq %rcx, %rax
    xorq %rax, %rax
    ret

    .section __DATA,__data
a:
    .quad 246
b:
    .quad 328
c:
    .quad 410
