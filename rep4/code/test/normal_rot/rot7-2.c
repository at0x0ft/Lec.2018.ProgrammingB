#include <stdio.h>
#include "clock.h"

#define INIT_N 64
#define MAX_N 2048
#define BLOCK_SIZE 32
typedef int array[MAX_N][MAX_N];

int s = 0;

array ga, gb;

void rotate(int n, array src, array dst)
{
  int i, j, i1, j1;
  for (j = 0; j < n; ) {
    int j1_Lim = j+BLOCK_SIZE;
    for (i = 0; i < n; ) {
      int i1_Lim = i+BLOCK_SIZE;
      for (j1 = j; j1 < j1_Lim; j1++) {
        int dr = n-1-j1;
        for (i1 = i; i1 < i1_Lim; i1+=2) {
          dst[dr][i1] = src[i1][j1];
          dst[dr][i1+1] = src[i1+1][j1];
        }
        dr--;
        j1++;
        for (i1 = i; i1 < i1_Lim; i1+=2) {
          dst[dr][i1] = src[i1][j1];
          dst[dr][i1+1] = src[i1+1][j1];
        }
      }
      i = i1_Lim;
    }
    j = j1_Lim;
  }
  return;
}

int run(int n)
{
  rotate(n, ga, gb);
  s++;  // to make this function "impure" and block function call motion
  return s;
}

int main(int argc, char *argv[])
{
  int trials = 25;
  double t;
  int k, n;
  volatile int result; // to make sure assignment is performed
  result = run(INIT_N);     // warm up CPU and cache
  for (n = INIT_N; n <= MAX_N; n *= 2) {
    for (k = 0; k < trials; k++) {
      start_counter();
      result = run(n);
      t = get_counter();
      printf("%d,%.4f,%d\n", n, t/(n*n), k);
    }
  }
  return 0;
}
