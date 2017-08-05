#include <stdio.h>
#include <unistd.h>
#define SIZE 50

int main()
{
    char hostname[SIZE];
    gethostname(hostname, SIZE);
    printf("hostname is %s\n", hostname);
    return 0;
}