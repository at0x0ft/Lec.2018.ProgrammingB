/* To compile this file, first try:
   gcc -O -fno-inline -I../include sleep.c ../src/clock64.o
*/

#include <stdio.h>
#include <unistd.h>
#include "clock.h"

int main(int argc, char *argv[])
{
  int trials = 5;
  double t;
  int k;
  for (k = 0; k < trials; k++) {
    start_counter();
    usleep(1000000);
    t = get_counter();
    printf("%.4f\n", t);
  }
  return 0;
}
