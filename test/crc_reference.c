//
// Tomás Oliveira e Silva, November 2017
//
// Reference implementation of a 16-bit CRC computation with using the CRC-8 polynomial (x^8+x^7+x^6+x^4+x^2+1)
//
// On purpose, this code DOES NOT reflect the best way to do things in hardware
//

#include <stdio.h>
#include <assert.h>

//
// Polynomial division in GF(2)
//
// A(x) = sum_{k=0}^{degree_a} a_k x^k
// B(x) = sum_{k=0}^{degree_b} b_k x^k
// Q(x) = sum_{k=0}^{degree_a-degree_b} q_k x^k
// R(x) = sum_{k=0}^{degree_b-1} r_k x^k
//
// a[0] to a[degree_a]
// b[0] to b[degree_b]
// q[0] to q[degree_a-degree_b], q can be NULL
// r[0] to r[degree_b-1]
//

void division(int degree_a,int *a,int degree_b,int *b,int *q,int *r)
{
  int aa[degree_a + 1]; // C99 feature
  int i,j,qq;

  //
  // check inputs
  //
  assert(a != NULL && degree_a >= degree_b && degree_a <= 1000000);
  for(i = 0;i <= degree_a;i++)
    assert(a[i] == 0 || a[i] == 1);
  assert(b != NULL && degree_b > 0 && degree_b <= 1000);
  for(i = 0;i < degree_b;i++)
    assert(b[i] == 0 || b[i] == 1);
  assert(b[degree_b] == 1);
  assert(r != NULL);
  //
  // copy input
  //
  for(i = 0;i <= degree_a;i++)
    aa[i] = a[i];
  //
  // divide
  //
  for(i = degree_a - degree_b;i >= 0;i--)
  {
    qq = aa[i + degree_b];
    if(q != NULL)
      q[i] = qq;
    if(qq != 0)
      for(j = 0;j <= degree_b;j++)
        aa[i + j] ^= b[j];
  }
  //
  // store remainder
  //
  for(i = 0;i < degree_b;i++)
    r[i] = aa[i];
}

static void print_poly(int degree,int *c)
{
  int i,f;

  f = 0;
  for(i = degree;i >= 0;i--)
  {
    if(c[i] != 0 && f != 0)
      printf("+");
    if(c[i] != 0 || i + f == 0)
    {
      f = 1;
      if(i == 0)
        printf("%d",c[i]);
      else
      {
        printf("x");
        if(i >= 2)
          printf("^%d",i);
      }
    }
  }
}

int main(int argc,char **argv)
{
  int i,a[24],b[9],r[8];

  b[8] = 1; // x^8
  b[7] = 1; // x^7
  b[6] = 1; // x^6
  b[5] = 0;
  b[4] = 1; // x^4
  b[3] = 0;
  b[2] = 1; // x^2
  b[1] = 0;
  b[0] = 1; // 1
  if(argc == 3 && argv[1][0] == '-' && argv[1][1] == 'e')
  { // encode (most significant bit first!)
    for(i = 0;i < 16;i++)
    {
      assert(argv[2][i] == '0' || argv[2][i] == '1');
      a[23 - i] = (int)(argv[2][i] - '0');
    }
    assert(argv[2][16] == '\0');
    for(i = 7;i >= 0;i--)
      a[i] = 0;
    division(23,a,8,b,NULL,r);
    printf("crc8(");
    for(i = 15;i >= 0;i--)
      printf("%d",a[i + 8]);
    printf(") = ");
    for(i = 7;i >= 0;i--)
      printf("%d",r[i]);
    printf("\n");
    printf("*** (");
    print_poly(23,a);
    printf(") mod (");
    print_poly(8,b);
    printf(") = (");
    print_poly(7,r);
    printf(")\n");
  }
  else if(argc == 3 && argv[1][0] == '-' && argv[1][1] == 'c')
  { // check (most significant bit first!)
    for(i = 0;i < 24;i++)
    {
      assert(argv[2][i] == '0' || argv[2][i] == '1');
      a[23 - i] = (int)(argv[2][i] - '0');
    }
    assert(argv[2][24] == '\0');
    division(23,a,8,b,NULL,r);
    printf("check(");
    for(i = 23;i >= 0;i--)
      printf("%d",a[i]);
    printf(") = ");
    for(i = 0;i < 8 && r[i] == 0;i++)
      ;
    printf("%s\n",(i == 8) ? "good" : "bad");
    printf("*** (");
    print_poly(23,a);
    printf(") mod (");
    print_poly(8,b);
    printf(") = (");
    print_poly(7,r);
    printf(")\n");
  }
  else
  {
    fprintf(stderr,"usage: %s -e data16   # encode (compute crc of 16 bits of data)\n",argv[0]);
    fprintf(stderr,"       %s -c data24   # check (check crc of 16 bits of data + 8 bits of crc)\n",argv[0]);
  }
  return 0;
}
