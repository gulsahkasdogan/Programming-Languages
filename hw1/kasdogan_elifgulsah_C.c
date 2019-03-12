#include <stdio.h>
 
int main () {
  int array[4]={1,2,3,4};
  printf("%d\n",array[0]); //1
  printf("%d\n", 1[array]); //2
  printf("%d\n",array[8]); //garbage



  int a[2][3] = { {1,2,3}, {4,5,6}};//rectangular 
  int i, j;
  int b[2][3] = { {1,2,3}, {5}};//ragged
 
   for ( i = 0; i < 2; i++ ) {
    for ( j = 0; j < 3; j++ ) {
      printf("a[%d][%d] = %d\n", i,j, a[i][j] );
    }
   }

   for( i = 0; i<2; i++){
     for(j = 0; j < 3; j++){
       printf("b[%d][%d] = %d\n", i, j, b[i][j]);
     }
   }
   int size = sizeof(array)/sizeof(int);
   printf("This is my last element %d and maximum subscript %d\n",array[size-1],size-1);    
  return 0;
}
