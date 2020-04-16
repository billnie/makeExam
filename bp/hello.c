#include <stdio.h>

int main()

{

   printf("Hello World!\r\n");
#ifdef MTK_BT_SUPPORT
    printf("Hello define gps!\r\n");
#endif
   return 0;

}