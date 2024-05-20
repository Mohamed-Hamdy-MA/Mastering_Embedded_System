/*
 ============================================================================
 Name        : Ex4_Positive_or_Negative.c
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
	float Num;
	printf("Enter a number: ");
	fflush(stdin);fflush(stdout);
	scanf("%f",&Num);
	if(Num>0)
	{
		printf("%0.2f is Positive.",Num);
	}
	else if (Num<0)
	{
		printf("%0.2f is Negative.",Num);
	}
	else
		printf("You entered zero");
	return EXIT_SUCCESS;
}
