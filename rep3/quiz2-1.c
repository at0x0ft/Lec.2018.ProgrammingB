// #define M 255
// #define N -32
// long arith (long x, long y)
// {
//     long result;
//     result = x*M + y/N;
//     return result;
// }

#define M 255
#define N -32
int arith (int x, int y)
{
    int result;
    result = x*M + y/N;
    return result;
}