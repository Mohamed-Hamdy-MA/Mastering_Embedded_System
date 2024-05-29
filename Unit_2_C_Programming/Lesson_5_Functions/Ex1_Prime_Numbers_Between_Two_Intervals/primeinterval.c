#include <stdio.h>
#include <stdlib.h>

extern int isprime(int num);

void primeinterval(int x, int y)
{
	printf("Prime numbers between %d and %d are: ",x,y);
	for (;x<y;x++)
	{
	if (isprime(x))
		printf("%d ",x);
	}
}
