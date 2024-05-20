/*
 ============================================================================
 Name        : Ex1_Even_or_Odd.c
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
	printf("Enter an integer you want to check: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&Num);
	if(Num%2==0)
	{
		printf("%d is even.",Num);
	}
	else
	{
		printf("%d is odd.",Num);
	}
	return EXIT_SUCCESS;
}
