/*
 ============================================================================
 Name        : Ex7_Factorial_Of_a_Number.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	int Num;
	unsigned int factorial=1;
	printf("Enter a integer: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&Num);

	if (Num>=0)
	{
		int i=1; //i is a counter
		for(i=1,factorial=1; i<=Num; i++)
		{
			factorial*=i;
		}
		printf ("Factorial = %d",factorial);
	}
	else
		printf("Error!!! Facorial of negative number doesn'r exist");
	return EXIT_SUCCESS;
}
