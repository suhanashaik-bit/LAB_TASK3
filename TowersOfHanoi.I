#include<stdio.h>
#include<math.h>

void moveDisk(char from, char to) {
    printf("Move disk from %c to %c\n", from, to);
}

void hanoiIterative(int n, char source, char auxiliary, char destination) {
    int totalMoves = pow(2, n) - 1;
    if (n % 2 == 0) {
        char temp = destination;
        destination = auxiliary;
        auxiliary = temp;
    }

    for (int i = 1; i <= totalMoves; i++) {
        if (i % 3 == 1) {
            moveDisk(source, destination);
        } else if (i % 3 == 2) {
            moveDisk(source, auxiliary);
        } else if (i % 3 == 0) {
            moveDisk(auxiliary, destination);
        }
    }
}

int main() {
    int n;
    printf("Enter the number of disks: ");
    scanf("%d", &n);
    printf("\nSteps to solve Towers of Hanoi iteratively:\n");
    hanoiIterative(n, 'A', 'B', 'C');
    return 0;
}
