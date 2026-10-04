long long fib(int n) {
    long long a = 0, b = 1;
    for (; n--;) {
        long long t = a;
        a = b, b += t;
    }
    return a;
}