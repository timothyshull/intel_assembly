	.section __TEXT,__text
	.globl _main                   # begin main
_main:
    movl $0x2000001, %eax
    movl $5, %edi
    syscall
