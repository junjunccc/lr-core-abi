/* 要求：完整保存程序执行所需上下文；切回后调用者应能继续往下执行。 */
typedef struct {
    unsigned long long rbx;
    unsigned long long rbp;
    unsigned long long r12;
    unsigned long long r13;
    unsigned long long r14;
    unsigned long long r15;
    unsigned long long rsp;
    unsigned long long rip;
} context_t;
