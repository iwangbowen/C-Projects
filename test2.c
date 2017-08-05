#include <stdio.h>

void printparamaddr(char a, char b, char c);

int main()
{
    char a = 'a';
    char b = 'b';
    char c = 'c';
    printf("locl variable a: %p\n", &a);
    printf("locl variable b: %p\n", &b);
    printf("locl variable c: %p\n", &c);
    printparamaddr(a, b, c);
    return 0;
}

void printparamaddr(char a, char b, char c)
{
    printf("parameter a: %p\n", &a);
    printf("parameter b: %p\n", &b);
    printf("parameter c: %p\n", &c);
}