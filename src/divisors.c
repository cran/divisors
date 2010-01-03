#include <stdio.h>
#include <math.h>
#include <R.h>

void divisors(int *n, int *ln, double *out, double *divs){


  int i = 1;

  int j = floor(sqrt(*n)) + 1;
  int kcount = 0;

  for(i = 1; i < j; i++){
    if(*n % i == 0){
      divs[kcount] = i;
      kcount = kcount + 1;
    }
  }
  *out = 2*kcount;
  int f = 0;
  for(f = 0, j = *out-1; f < *out/2; f++, j--){
    divs[j] = *n / divs[f];
      }
}
  
