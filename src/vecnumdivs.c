#include <stdio.h>
#include <math.h>
#include <R.h>
#include "vecnumdivs.h"

  
void vecnumdivs(int *nums, int *na, int *out){
  int i;
  
  for(i = 0; i <*na; i++){
    out[i] = numdivsint(nums[i]);
  }

}

int numdivsint(int x){
  //too large by 1 if n is perfect square. accounted for in R
  //figure out a way to do in C
  int i = 1;

  int j = floor(sqrt(x)) + 1;
  int kcount = 0;
  for(i = 1; i < j; i++){
    if(x % i == 0){
      kcount = kcount + 2;
    }
  }
  return(kcount);
}
