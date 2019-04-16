#include <stdio.h>

long arith(long x, long y);

int main(void) {
    printf("%ld\n", arith(1, 0));
    printf("%ld\n", arith(1, 1024));
    return 0;
}