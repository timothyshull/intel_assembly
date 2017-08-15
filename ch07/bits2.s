	.section __TEXT,__text
	.globl _main
_main:
    pushq %rbp
    movq %rsp, %rbp
    bts $4, set(%rip)
    bts $7, set(%rip)
    bts $8, set(%rip)
    leaq set(%rip), %rax    # have to put address in register to handle displacement, etc
    bts $12, 8(%rax)        # TODO: use yasm to check if this is correct
    movq $76, %rax
    movq %rax, %rbx
    shrq $6, %rbx
    movq %rax, %rcx
    andq $0x3f, %rcx
    xorq %edx, %edx
    leaq set(%rip), %rsi
    bt %rcx, (%rsi, %rbx, 8)
    setc %dl
    bts %rcx, (%rsi, %rbx, 8)
    btr %rcx, (%rsi, %rbx, 8)
    xorq %rax, %rax
    leave
    ret

    .section __DATA,__bss
.zerofill __DATA,__bss,set,80