    .globl my_strlen
    .type my_strlen, @function
my_strlen:
    xorl %eax, %eax
.Lpos1:
    cmpb $0, (%rdi, %rax)
    je .Lpos2
    incq %rax
    jmp .Lpos1
.Lpos2:
    ret
    .size my_strlen, .-my_strlen