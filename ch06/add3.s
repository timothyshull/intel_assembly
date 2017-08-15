	.section __TEXT,__text
	.globl _main
_main:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq $9, %rax
    addq %rax, a(%rip)
    movq b(%rip), %rax
    addq $10, %rax
    addq a(%rip), %rax
    movq %rax, sum(%rip)
    movq $0, %rax
    leave
    ret

    .section __DATA,__data
a:
    .quad 151
b:
    .quad 310
sum:
    .quad 0
