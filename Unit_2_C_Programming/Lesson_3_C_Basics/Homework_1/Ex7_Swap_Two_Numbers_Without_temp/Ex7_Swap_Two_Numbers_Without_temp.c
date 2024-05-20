/*
 ============================================================================
 Name        : EX7_Swap_Two_Numbers_Without_temp.c
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

	printf("Enter Value of a: ");
	fflush(stdin);fflush(stdout);
	scanf("%f",&a);

	printf("Enter Value of b: ");
	fflush(stdin);fflush(stdout);
	scanf("%f",&b);

	a=a+b; //a stores values of a and b
	b=a-b; //values of a and b minus value of b = value of a
	a=a-b; //values of a and b minus value of a = value of b

	printf("After swapping, Value of a: %f\n",a);
	printf("After swapping, Value of b: %f",b);

	return EXIT_SUCCESS;
}
