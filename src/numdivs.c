#include <stdio.h>
#include <math.h>
#include <R.h>

void numdivs(int *n, double *out){
  //too large by 1 if n is perfect square. accounted for in R
  //figure out a way to do in C
  int i = 1;

  int j = floor(sqrt(*n)) + 1;
  int kcount = 0;
  for(i = 1; i < j; i++){
    if(*n % i == 0){
      kcount = kcount + 2;
    }
  }
  *out = kcount;
}
  
