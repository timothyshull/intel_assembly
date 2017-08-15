	.section __TEXT,__text
	.globl _main                   # begin main
_main:
    push %rbp
    mov %rsp, %rbp
    sub $16, %rsp
    xorl %eax, %eax
    leave
    ret


    .section __DATA,__data
a:
    .double 4
b:
    .double 4.4
c:
    .fill 10, 4, 0
    # times   10 dd 0
    # TODO: see if there is a way to get this exactly
d:
    .word 1, 2
e:
    .byte 0xfb


    .section __DATA,__bss
.zerofill __DATA,__bss,g,8
.zerofill __DATA,__bss,h,80
.zerofill __DATA,__bss,i,100


    .section	__TEXT,__cstring,cstring_literals
f:
	.asciz	"hello world"
