	.section __TEXT,__text
	.globl _main
_main:
    pushq %rbp
    movq %rsp, %rbp
    movq $0x12345678, %rax
    shrq $8, %rax
    andq $0xff, %rax
    movq $0x12345678, %rax
    movq $0xaa, %rdx
    movq $0xff, %rbx
    shlq $8, %rbx
    notq %rbx
    andq %rbx, %rax
    shlq $8, %rdx
    orq %rdx, %rax
    xorq %rax, %rax
    leave
    ret
