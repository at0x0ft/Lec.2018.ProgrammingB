#include <stdio.h>
#include "clock.h"

#define INIT_N 64
#define MAX_N 2048
typedef int array[MAX_N][MAX_N];

int s = 0;

array ga, gb;

void rotate(int n, array src, array dst)
{
  int i, j;
  for (j = 0; j < n; j++)
    for (i = 0; i < n; i++)
      dst[n-1-j][i] = src[i][j];
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
