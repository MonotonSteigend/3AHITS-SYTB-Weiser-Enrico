#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc != 3) return 1;

    int n1 = atoi(argv[1]);
    int n2 = atoi(argv[2]);

    printf("Differenz: %d\n", n1 - n2);

    return (n1 > n2) ? 0 : 1;
}