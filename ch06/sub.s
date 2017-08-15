	.section __TEXT,__text
	.globl _main
_main:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq $10, %rax
    subq %rax, a(%rip)
    subq %rax, b(%rip)
    movq b(%rip), %rax
    subq a(%rip), %rax
    movq %rax, diff(%rip)
    xorq %rax, %rax
    leave
    ret

    .section __DATA,__data
a:
    .quad 100
b:
    .quad 200
diff:
    .quad 0
