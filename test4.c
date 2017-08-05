#include <stdio.h>

int main()
{
    int a = 0;
    int *b = &a;
    printf("a address: %p\n", &a);
    printf("b address: %p\n", &b);
    printf("address b points: %p\n", b);
    return 0;
}