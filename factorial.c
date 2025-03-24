#include <stdio.h>

// Function to calculate factorial recursively
long long factorial(int n) {
    if (n < 0) {
        printf("Factorial is not defined for negative numbers.\n");
        return -1;
    }
    return (n == 0 || n == 1) ? 1 : n * factorial(n - 1);
}

int main() {
    int num;
    printf("Enter a number: ");

    // Fix: Check scanf return value
    if (scanf("%d", &num) != 1) {
        printf("Invalid input. Please enter an integer.\n");
        return 1;
    }

    long long result = factorial(num);
    if (result != -1) {
        printf("Factorial of %d is %lld\n", num, result);
    }
    return 0;
}

