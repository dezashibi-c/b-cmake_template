#include "math_utils.h"
#include <stdio.h>

int main(void)
{
    int a = 5, b = 3;
    printf("Sum: %d\n", add(a, b));
    printf("Difference: %d\n", subtract(a, b));

#ifdef PRINT_GREETINGS
    puts("Hey There");
#endif

    return 0;
}
