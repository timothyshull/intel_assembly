	.section __TEXT,__text
	.globl _main
_main:
    movq a(%rip), %rax
    movq %rax, %rbx
    addq b(%rip), %rax
    movq %rax, sum(%rip)
    subq b(%rip), %rbx
    movq %rbx, diff(%rip)
    xorq %rax, %rax
    ret

    .section __DATA,__data
a:
    .quad 175
b:
    .quad 4097
sum:
    .quad 0
diff:
    .quad 0