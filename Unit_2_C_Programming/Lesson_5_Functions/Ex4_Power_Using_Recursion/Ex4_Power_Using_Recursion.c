/*
 ============================================================================
 Name        : Ex4_Power_Using_Recursion.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int powe(int base, int power);

int main(void)
{
	int base,power;
	printf("Enter base number: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&base);
	printf("Enter power number (positive integer): ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&power);
	if (power>=0)
		printf("%d^%d = %d",base,power,powe(base,power));
	else
		printf("ERROR!");
	return EXIT_SUCCESS;
}

int powe(int base, int power)
{
	static int result=1;
	if (power>0)
	{
		result*=base;
		power--;
		powe(base,power);
	}
	return result;
}

