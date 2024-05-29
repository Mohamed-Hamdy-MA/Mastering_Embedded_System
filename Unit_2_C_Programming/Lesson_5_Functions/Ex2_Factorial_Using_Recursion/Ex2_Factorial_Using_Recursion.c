/*
 ============================================================================
 Name        : Ex2_Factorial_Using_Recursion.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int factorial(int num);

int main(void)
{
	int x;
	printf("Enter an positive integer: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&x);
	if (x>=0)
		printf("Factorial of %d = %d",x,factorial(x));
	else
		printf("ERROR!");
	return EXIT_SUCCESS;
}

int factorial(int num)
{
	static int fact=1;
	if (num>0)
	{
		fact*=num;
		num--;
		factorial(num);
	}
	return fact;
}

