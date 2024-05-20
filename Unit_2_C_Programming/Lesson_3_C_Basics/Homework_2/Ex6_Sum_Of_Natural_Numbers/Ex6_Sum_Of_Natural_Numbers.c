/*
 ============================================================================
 Name        : Ex6_Sum_Of_Natural_Numbers.c
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
	unsigned int Num;
	unsigned int sum=0;
	printf("Enter a integer: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&Num);

	int i=1; //i is a counter
	for(i=1,sum=0; i<=Num; i++)
	{
		sum+=i;
	}
	printf ("sum = %d",sum);
	return EXIT_SUCCESS;
}
