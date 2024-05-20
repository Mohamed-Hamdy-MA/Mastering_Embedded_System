/*
 ============================================================================
 Name        : EX6_Swap_Two_Numbers.c
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
	float a,b;
	float temp;

	printf("Enter Value of a: ");
	fflush(stdin);fflush(stdout);
	scanf("%f",&a);

	printf("Enter Value of b: ");
	fflush(stdin);fflush(stdout);
	scanf("%f",&b);

	temp=a;
	a=b;
	b=temp;

	printf("After swapping, Value of a: %f\n",a);
	printf("After swapping, Value of b: %f",b);

	return EXIT_SUCCESS;
}
