    .globl set_ctx
    .type set_ctx, @function
set_ctx:
    movq %rbx, (%rdi)
    movq %rbp, 8(%rdi)
    movq %r12, 16(%rdi)
    movq %r13, 24(%rdi)
    movq %r14, 32(%rdi)
    movq %r15, 40(%rdi)
    leaq 8(%rsp), %rax
    movq %rax, 48(%rdi)
    movq (%rsp), %rax
    movq %rax, 56(%rdi)
    xorl %eax, %eax
    ret
    .size set_ctx, .-set_ctx

    .globl jmp_to
    .type  jmp_to,  @function
jmp_to:
    movq (%rdi), %rbx
    movq 8(%rdi), %rbp
    movq 16(%rdi), %r12
    movq 24(%rdi), %r13
    movq 32(%rdi), %r14
    movq 40(%rdi), %r15
    movq 48(%rdi), %rsp
    movq 56(%rdi), %rdx
    movl %esi, %eax
    jmp *%rdx
    .size jmp_to, .-jmp_to
