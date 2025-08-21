#include <stdio.h>
void towersOfHanoi(int n, char source, char target, char auxiliary) {
    if (n == 1) {
        printf("Move disk 1 from %c to %c\n", source, target);
        return;
    }
    towersOfHanoi(n - 1, source, auxiliary, target);
    printf("Move disk %d from %c to %c\n", n, source, target);
    towersOfHanoi(n - 1, auxiliary, target, source);
}

int main() {
    int n;
    printf("Enter the number of disks: ");
    scanf("%d", &n);
    printf("\nSteps to solve Towers of Hanoi with %d disks:\n", n);
    towersOfHanoi(n, 'A', 'C', 'B');
    return 0;
}

