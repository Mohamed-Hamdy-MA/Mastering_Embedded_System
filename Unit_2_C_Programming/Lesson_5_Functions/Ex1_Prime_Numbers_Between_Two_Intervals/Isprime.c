#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/*
The simplest primality test is trial division: given an input number, 𝑛,
check whether it is divisible by any prime number between 2 and sqrt(n),
(i.e., whether the division leaves no remainder). If so, then 𝑛 is
composite. Otherwise, it is prime.
*/

/*
In cases where it is not feasible to compute the list of primes ≤ sqrt (n),
it is also possible to simply (and slowly) check all numbers between
2 and sqrt (2) for divisors. A rather simple optimization is to test
divisibility by 2 and by just the odd numbers between 3 and sqrt (n),
since divisibility by an even number implies divisibility by 2.
*/
int isprime(int num)
{
	if (num>=2) // Check if num is from negative to 1
	{
		if (num==2 || num==3) // Check if num=2 or num=3
			return 1;

		if (num%2==0 || num%3==0) // Check whether num is divisible by 2 or 3
			return 0;

		for (int i = 5; i <= sqrt(num); i=i+2) //Check whether num is divisible from 5 to square root of n
		{
			if (num % i == 0)
				return 0;
		}
		return 1;
	}
	else
		return 0;
}
