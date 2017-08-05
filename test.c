#include <stdio.h>

int main(int argc, char *argv[])
{
    char a;
    char b;
    printf("%p\n", &a);
    printf("%p\n", &b);

    printf("The number of arguments is %d\n", argc);
    int i = 0;
    for (i; i < argc; i++) {
        printf("%d argument is %s\n", i, argv[i]);
    }
    return 0;
}