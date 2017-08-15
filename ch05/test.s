	.section __TEXT,__text
	.globl _main
_main:
    movq $0x123456789abcdef0, %rax
    movl $100, %eax
    movq $0, %rax
    ret
