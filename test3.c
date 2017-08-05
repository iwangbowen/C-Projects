#include <stdio.h>

int main()
{
    char a[] = "abcdefg";
    char *b = "abcdefg";
    printf("%p\n", &a);
    printf("%p\n", a);
    int i = 0;
    for (; i < 8; i++) {
        printf("%c address: %p\n", a[i], &a[i]);
    }
    printf("i address: %p\n", &i);
    printf("size of char pointer: %ld\n", sizeof(b));
    printf("b address: %p\n", &b);
    return 0;
}