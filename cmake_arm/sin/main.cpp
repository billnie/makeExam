
#include <stdio.h>

extern int calc_add2(int a, int b);
extern int calc_add3(int a, int b);
int main()

{
    double x,y;
   printf("Hello World!\r\n");
    x = 21.23;
    y = 0.123;
    y = x*y;
    printf ("y=%.3f\n",y);
   printf("add2(2,3) = %d\n", calc_add2(2,3));
    printf("add2(2,3) = %d\n", calc_add3(2,3));
   return 0;

}