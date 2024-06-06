/*
 ============================================================================
 Name        : Q3_Prime_Numbers_Between_Two_Numbers.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int isprime(int num)
{
	if (num>=1) // Check if num is from negative to 1
	{
		if (num==1 || num==2 || num==3) // Check if num=1 or num=2 or num=3
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
int takenumber (void)
{
    int num;
    printf("Enter an integer number: ");
    fflush(stdin); fflush (stdout);
    scanf ("%d",&num);
    return num;
}
int main(void)
{
	int x,y;
	x=takenumber();y=takenumber();
	printf("Prime numbers between %d and %d are: ",x,y);
		for (;x<=y;x++){
		if (isprime(x))
			printf("%d ",x);}
	return EXIT_SUCCESS;
}
